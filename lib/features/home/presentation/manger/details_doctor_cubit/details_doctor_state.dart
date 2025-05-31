import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';
part 'details_doctor_state.freezed.dart';

@freezed
class DetailsDoctorState with _$DetailsDoctorState {
  const factory DetailsDoctorState({
    required EnDoctorSection selectedSection,
    required double reviewsLastOffset,
    required ScrollController reviewsScrollCtrl,
  }) = _DetailsDoctorState;

  factory DetailsDoctorState.initial() => DetailsDoctorState(
        selectedSection: EnDoctorSection.about,
        reviewsLastOffset: 0.0,
        reviewsScrollCtrl: ScrollController(),
      );
}