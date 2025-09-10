import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medi_book/features/home/domain/entities/doctor.dart';

class DoctorsClusterPreview {
  final String cellId;
  final int totalDoctorsCount;
  final LatLng center;
  final List<Doctor> sampleDoctors;

  DoctorsClusterPreview({
    required this.cellId,
    required this.totalDoctorsCount,
    required this.center,
    required this.sampleDoctors,
  });

}
