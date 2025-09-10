import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';

// class LocationWithDoctors  {
//   final double lat;
//   final double lng;
//   final List<Doctor> doctors;

//   const LocationWithDoctors({
//     required this.lat,
//     required this.lng,
//     required this.doctors,
//   });
// }

class LocationWithDoctors implements ClusterItem {
  final LatLng location;
  final Doctor doctor;
  final BitmapDescriptor icon;

  LocationWithDoctors({
    required this.location,
    required this.doctor,
    required this.icon,
  });

  @override
  LatLng get locationGetter => location;

  @override
  String get geohash => '${location.latitude}-${location.longitude}';
}
