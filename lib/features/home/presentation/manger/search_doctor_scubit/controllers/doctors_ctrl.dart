import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';

class DoctorsCtrl {
  final TextEditingController searchCtrl = TextEditingController();
  List<DoctorInfo> docsList = [];
  List<DoctorInfo> flutterDocsList = [];
  final ScrollController scrollCtrl = ScrollController();
  double lastOffset = 0.0;

  DoctorsCtrl(this.docsList) {
    scrollCtrl.addListener(() {
      lastOffset = scrollCtrl.offset;
    });
  }

  void filtterList(String newValue) {
    final query = newValue.toLowerCase();

    // this code instead of the one above to make adding operation to the list without creating new list
    flutterDocsList
      ..clear()
      ..addAll(docsList.where((doctor) {
        final name = doctor.name.toLowerCase();
        return name.contains(query);
      }));
  }
}


