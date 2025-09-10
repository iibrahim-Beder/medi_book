import 'package:google_maps_cluster_manager_2/google_maps_cluster_manager_2.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';

// class DoctorItem implements ClusterItem {
//   final LatLng location;
//   // final Doctor doctor;
//   // final BitmapDescriptor icon;

//   DoctorItem({
//     required this.location,
//     // required this.doctor,
//     // required this.icon,
//   });

//   @override
//   LatLng get locationGetter => location;

//   @override
//   String get geohash => '${location.latitude}-${location.longitude}';
// }

class LocationWithDoctorsItem implements ClusterItem {
  final LatLng location;
  final Doctor doctor;
  final BitmapDescriptor icon;

  LocationWithDoctorsItem({
    required this.location,
    required this.doctor,
    required this.icon,
  });

  @override
  LatLng get locationGetter => location;

  @override
  String get geohash => '${location.latitude}-${location.longitude}';
}
