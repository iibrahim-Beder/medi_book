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
          paginatedState:
              state.recommendedDoctorsState.paginatedState!.copyWith(
        isLoading: true,
      )),
    ));
    final result = await homeRepo
        .getFilteredDoctors(state.recommendedDoctorsState.doctorsFilterDto!);

    result.fold((error) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
            paginatedState:
                state.recommendedDoctorsState.paginatedState!.copyWith(
          isLoading: false,
          errorMessage: error.message,
        )),
      ));
    }, (paginatedDoctors) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
            paginatedState:
                state.recommendedDoctorsState.paginatedState!.copyWith(
          isLoading: false,
          data: paginatedDoctors.data,
          hasMoreData: paginatedDoctors.hasNextPage,
          currentPage: paginatedDoctors.currentPage,
        )),
      ));
    });
  }

  Future<void> getMoreRecommendedDoctors() async {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
          paginatedState:
              state.recommendedDoctorsState.paginatedState!.copyWith(
        isLoadingMore: true,
      )),
    ));

    final result = await homeRepo.getFilteredDoctors(
      state.recommendedDoctorsState.doctorsFilterDto!.copyWith(
          pageNumber:
              state.recommendedDoctorsState.paginatedState!.currentPage + 1),
    );

    result.fold((error) {
      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
            paginatedState:
                state.recommendedDoctorsState.paginatedState!.copyWith(
          isLoadingMore: false,
          errorMessage: error.message,
        )),
      ));
    }, (paginatedDoctors) {
      final updatedData =
          List.of(state.recommendedDoctorsState.paginatedState!.data)
            ..addAll(paginatedDoctors.data);

      emit(state.copyWith(
        recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
            paginatedState:
                state.recommendedDoctorsState.paginatedState!.copyWith(
          isLoadingMore: false,
          data: updatedData,
          hasMoreData: paginatedDoctors.hasNextPage,
          currentPage: paginatedDoctors.currentPage,
        )),
      ));
    });
  }

  void updateBackToTopButtonState(bool show) {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        showBackToTopButton: show,
      ),
    ));
  }

  @override
  Future<void> close() {
    state.recommendedDoctorsState.scrollCtrl!.dispose();
    return super.close();
  }
}
