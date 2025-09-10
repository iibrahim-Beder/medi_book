import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart'
    hide ClusterManager, Cluster;
import 'package:medi_book/core/theming/colors.dart';
import 'package:medi_book/core/widgets/setup_error_state.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_cubit.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/manager/find_nearby_doctor_cubit/find_nearby_doctor_state.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/helpers/create_custom_doctor_marker.dart';

class CoustomGoogleMap extends StatefulWidget {
  const CoustomGoogleMap({Key? key}) : super(key: key);

  @override
  State<CoustomGoogleMap> createState() => _CoustomGoogleMapState();
}

class _CoustomGoogleMapState extends State<CoustomGoogleMap> {
  late GoogleMapController _mapController;
  Set<Marker> _markers = {}; // Holds simple markers instead of clusters

  // late ClusterManager<LocationWithDoctors> _manager;

  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(30.3762, 30.5111),
    zoom: 13.0,
  );

  @override
  void initState() {
    super.initState();

    context.read<FindNearbyDoctorCubit>().loadInitialMapData();

    // ClusterManager temporarily disabled for debugging simple markers
    /*
    _manager = ClusterManager<LocationWithDoctors>(
      [],
      // Called whenever the cluster manager updates the set of markers to be displayed on the map,
      // such as after camera movements or zoom level changes.
      // Responsible for updating the UI with the new marker set.
      _updateMarkers,

      // Called every time a new marker or cluster needs to be created.
      // This function builds and returns the appropriate Marker widget for individual items or clusters.
      markerBuilder: _markerBuilder,

      // Defines the zoom level at which clustering stops and individual markers are shown instead.
      stopClusteringZoom: 17,
    );
    */
  }

  Future<void> initMapStyle() async {
    var mapStyle = await DefaultAssetBundle.of(context)
        .loadString('assets/map_styels/map_styel.json');
    _mapController.setMapStyle(mapStyle);
  }

  void _updateMarkers(Set<Marker> markers) {
    setState(() {
      _markers = markers;
    });
  }

  Future<Marker> _markerBuilder(Cluster<LocationWithDoctors> cluster) async {
    if (cluster.isMultiple) {
      return Marker(
        markerId: MarkerId(cluster.getId()),
        position: cluster.location,
        icon: await createClusterBitmap(cluster.items.length),
      );
    } else {
      final doctorItem = cluster.items.first;
      return Marker(
        markerId: MarkerId(doctorItem.doctor.id.toString()),
        position: doctorItem.location,
        icon: doctorItem.icon,
        onTap: () {
          // context.read<FindNearbyDoctorCubit>().updateSelectedDoctor(
          //       doctorItem.doctor,
          //     );
        },
      );
    }
  }

  @override


  Widget build(BuildContext context) {
    var cubit = context.read<FindNearbyDoctorCubit>();
    return BlocConsumer<FindNearbyDoctorCubit, FindNearbyDoctorState>(
      listener: (context, state) async {
        if (state.errorMessage != null) {
          setUpErrorState(
            context,
            state.errorMessage ?? 'error occured',
            popContext: false,
          );
        }

        if (state.fetchedNearbyDoctorsState!.data != null) {
          var items = state.fetchedNearbyDoctorsState!.data!.groupedByLocation;

          if (state.fetchedNearbyDoctorsState != null &&
              !state.fetchedNearbyDoctorsState!.isFetching &&
              state.fetchedNearbyDoctorsState!.data != null) {
            var items =
                state.fetchedNearbyDoctorsState!.data!.groupedByLocation;

            Set<Marker> simpleMarkers = items.map((item) {
              return Marker(
                markerId: MarkerId(item.doctor.id.toString()),
                position: item.location,
                icon: item.icon,
              );
            }).toSet();

            setState(() {
              _markers = simpleMarkers;
            });
          }
        }
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: ColorsManager.mainBlue,
            ),
          );
        }

        if (state.userLocation == null || state.cameraPosition == null) {
          return const Center(
            child: Text('Waiting for location...'),
          );
        }

        return GoogleMap(
          compassEnabled: false,
          mapToolbarEnabled: false,
          buildingsEnabled: false,
          myLocationButtonEnabled: false,
          // minMaxZoomPreference: MinMaxZoomPreference(12.3, 20.0),
          initialCameraPosition: _initialCameraPosition,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          onMapCreated: (controller) {
            _mapController = controller;
           context.read<FindNearbyDoctorCubit>().setMapController(controller);
            // _manager.setMapId(controller.mapId); // ClusterManager disabled
            initMapStyle();
          },
          markers: _markers,
          onCameraMove: (position) {
            // _manager.onCameraMove(position); // ClusterManager disabled
            cubit.onCameraMove(position);
          },
          onCameraIdle: () async {
            // _manager.updateMap(); // ClusterManager disabled
            final bounds = await _mapController.getVisibleRegion();
            final zoomLevel = await _mapController.getZoomLevel();
            cubit.onMapIdle(bounds, zoomLevel);
          },
        
        );
      },
    );
  }
}
