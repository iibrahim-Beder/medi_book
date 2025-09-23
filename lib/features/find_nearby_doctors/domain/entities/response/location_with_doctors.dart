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

// class LocationWithDoctors implements ClusterItem {
//   final LatLng location;
//   final Doctor doctor;
//   // final BitmapDescriptor icon;

//   LocationWithDoctors({
//     required this.location,
//     required this.doctor,
//   });

//   @override
//   LatLng get locationGetter => location;

//   @override
//   String get geohash => '${location.latitude}-${location.longitude}';
// }



class LocationWithDoctors implements ClusterItem {
  final String locationId;
  final double latitude;
  final double longitude;
  final String? locationDescription;
  final List<Doctor> doctors;

  const LocationWithDoctors({
    required this.locationId,
    required this.latitude,
    required this.longitude,
    required this.doctors,
    this.locationDescription,
  });

  @override
  LatLng get location => LatLng(latitude, longitude);

  @override
  String get geohash => '$latitude-$longitude';
  }