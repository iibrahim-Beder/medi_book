import 'package:bloc/bloc.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  final HomeRepo homeRepo;
  MainHomeCubit(this.homeRepo) : super(MainHomeState.initial());

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

      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          data: updatedData,
          isLoadingMore: false,
          currentPage: doctors.currentPage,
          hasMoreData: doctors.hasNextPage,
        ),
      ));
    });
  }

  @override
  Future<void> close() {
    state.recommendedDoctorsState.scrollCtrl!.dispose();
    return super.close();
  }
}
