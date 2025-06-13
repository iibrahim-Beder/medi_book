import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/core/helpers/list_view/jump_to_last_offset.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';

class DetailsDoctorCubit extends Cubit<DetailsDoctorState> {
  final HomeRepo homeRepo;

  DetailsDoctorCubit(this.homeRepo) : super(DetailsDoctorState.initial());

  final ScrollController reviewsScrollCtrl = ScrollController();

  void initializeDoctor(Doctor doctor) {
    emit(state.copyWith(doctor: doctor));
  }

  Future<void> getDoctorProfile(int id) async {
    emit(state.copyWith(
        doctorProfileState: state.doctorProfileState.copyWith(isLoding: true)));
    var result = await homeRepo.getDoctorProfile(id);
    result.fold((error) {
      emit(state.copyWith(
          doctorProfileState: state.doctorProfileState
              .copyWith(isLoding: false, errorMessage: error.message)));
    }, (doctorProfile) {
      emit(state.copyWith(
          doctorProfileState: state.doctorProfileState
              .copyWith(isLoding: false, doctorProfile: doctorProfile)));
    });
  }

  Future<void> getDoctorReviews(int id) async {
    emit(state.copyWith(
        paginatedState: state.paginatedState.copyWith(isLoading: true)));
    var result = await homeRepo.getDoctorReviews(
        doctorId: 0, pageNumber: 1, pageSize: 5);
    result.fold((error) {
      emit(state.copyWith(
          paginatedState: state.paginatedState
              .copyWith(isLoading: false, errorMessage: error.message)));
    }, (aginatedReviews) {
      emit(state.copyWith(
          paginatedState: state.paginatedState.copyWith(
              isLoading: false,
              data: aginatedReviews.data,
              hasMoreData: aginatedReviews.hasNextPage,
              currentPage: aginatedReviews.currentPage)));
    });
  }

  Future<void> geMoreDoctorReviews() async {
    emit(state.copyWith(
        paginatedState: state.paginatedState.copyWith(isLoadingMore: true)));
    var result = await homeRepo.getDoctorReviews(
        doctorId: 0,
        pageNumber: state.paginatedState.currentPage + 1,
        pageSize: 5);
    result.fold((error) {
      emit(state.copyWith(
          paginatedState: state.paginatedState
              .copyWith(isLoadingMore: false, errorMessage: error.message)));
    }, (aginatedReviews) {
      final updatedData = List.of(state.paginatedState.data)
        ..addAll(aginatedReviews.data);
      emit(state.copyWith(
          paginatedState: state.paginatedState.copyWith(
              isLoadingMore: false,
              data: updatedData,
              hasMoreData: aginatedReviews.hasNextPage,
              currentPage: aginatedReviews.currentPage)));
    });
  }

  Future<void> getDoctorLocations(int id) async {
    emit(state.copyWith(
        doctorLocationsState:
            state.doctorLocationsState.copyWith(isLoding: true)));
    var result = await homeRepo.getDoctorLocations(id);
    result.fold((error) {
      emit(state.copyWith(
          doctorLocationsState: state.doctorLocationsState
              .copyWith(isLoding: false, errorMessage: error.message)));
    }, (doctorLocations) {
      emit(state.copyWith(
          doctorLocationsState: state.doctorLocationsState
              .copyWith(isLoding: false, doctorLocations: doctorLocations)));
    });
  }

  void updateSelectedSection(EnDoctorSection section) {
    emit(state.copyWith(selectedSection: section));
  }

  void handleScrollChange(double offset) {
    if (state.selectedSection == EnDoctorSection.reviews) {
      emit(state.copyWith(reviewsLastOffset: offset));
    }
  }

  void jumpToStoredOffset() {
    
    final offset = state.selectedSection == EnDoctorSection.reviews
        ? state.reviewsLastOffset
        : 0.0;
    jumpToLastOffset(offset, reviewsScrollCtrl);
  }
}
