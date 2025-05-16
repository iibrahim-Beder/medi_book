import 'package:flutter/material.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';

class SectionCtrl {

  final ScrollController reviewsScrollCtrl = ScrollController();
  
  EnDoctorSection selectedSection = EnDoctorSection.about;


  double reviewsLastOffset = 0.0;

}
