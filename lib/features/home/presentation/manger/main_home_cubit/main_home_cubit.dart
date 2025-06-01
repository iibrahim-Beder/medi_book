import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  final HomeRepo homeRepo;
  ValueNotifier<int> itemsCountNotifier = ValueNotifier<int>(0);

  MainHomeCubit(this.homeRepo) : super(MainHomeState.initial()) {
    itemsCountNotifier =
        ValueNotifier<int>(state.recommendedDoctorsState.data.length);
    setupListener();
  }

  void setupListener() {
    // itemsCountNotifier.addListener(() {
    //   var statex = state.recommendedDoctorsState;
    //   if (itemsCountNotifier.value == 20 &&
    //       statex.hasMoreData &&
    //       !statex.isLoadingMore) {
    //     // getMoreRecommendedDoctors();

    //   }
    // });
  }

  // Load specialties
  Future<void> getSpecialties() async {
    emit(state.copyWith(
      specialtiesState: state.specialtiesState.copyWith(isLoading: true),
    ));

    final result = await homeRepo.getSpecialties();
    result.fold((error) {
      emit(state.copyWith(
        specialtiesState: state.specialtiesState.copyWith(
          isLoading: false,
          errorMessage: error.message,
        ),
      ));
    }, (specialties) {
      emit(state.copyWith(
        specialtiesState: state.specialtiesState.copyWith(
          isLoading: false,
          data: specialties,
        ),
      ));
    });
  }

  // Initial recommended doctors load
  Future<void> getRecommendedDoctors() async {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        isLoading: true,
        errorMessage: '',
      ),
    ));

    final result = await homeRepo.getPaginatedDoctors(
      state.recommendedDoctorsState.currentPage,
      state.recommendedDoctorsState.pageSize,
    );

    result.fold((error) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          isLoading: false,
          errorMessage: error.message,
        ),
      ));
    }, (doctors) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          isLoading: false,
          data: doctors.doctors,
          hasMoreData: doctors.hasNextPage,
          currentPage: doctors.currentPage,
        ),
      ));
    });
  }

  Future<void> getMoreRecommendedDoctors() async {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        isLoadingMore: true,
        errorMessage: '',
      ),
    ));

    final result = await homeRepo.getPaginatedDoctors(
      state.recommendedDoctorsState.currentPage + 1,
      state.recommendedDoctorsState.pageSize,
    );

    result.fold((error) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          isLoadingMore: false,
          errorMessage: error.message,
        ),
      ));
    }, (doctors) {
      final updatedData = List.of(state.recommendedDoctorsState.data)
        ..addAll(doctors.doctors);

      print(updatedData.length);

      // this the code to make the list have a maximum of 20 elements
      List<Doctor> limitedData = [];
      bool _isHasJumped = false;
      if (updatedData.length >= 20) {
        limitedData = updatedData.sublist(updatedData.length - 20);
        _isHasJumped = true;
        print("yes");
      } else {
        limitedData = updatedData;
        _isHasJumped = false;
      }

      // print(limitedData.length);

      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          data: limitedData,
          isLoadingMore: false,
          currentPage: doctors.currentPage,
          hasMoreData: doctors.hasNextPage,
          isHasJumped: _isHasJumped,
        ),
      ));
      itemsCountNotifier.value = state.recommendedDoctorsState.data.length;
    });
  }

  void markJumped() {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        isHasJumped: false,
      ),
    ));

    print("false jumped");
  }

  @override
  Future<void> close() {
    state.recommendedDoctorsState.scrollCtrl!.dispose();
    return super.close();
  }
}
