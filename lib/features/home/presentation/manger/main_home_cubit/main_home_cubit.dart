import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/handle_result.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/presentation/manger/main_home_cubit/main_home_state.dart';

class MainHomeCubit extends Cubit<MainHomeState> {
  final HomeRepo homeRepo;

  MainHomeCubit(this.homeRepo) : super(MainHomeState.initial()) {
    getSpecialties();
    getRecommendedDoctors();
  }

  /// Load specialties
  Future<void> getSpecialties() async {
    _emitSpecialtiesStateUpdate(
        state.specialtiesState.copyWith(isLoading: true));

    final result = await homeRepo.getSpecialties();

    handleResult(result, onSuccess: (data) {
      _emitSpecialtiesStateUpdate(
        state.specialtiesState.copyWith(
          isLoading: false,
          data: data,
        ),
      );
    }, onError: (message) {
      _emitSpecialtiesStateUpdate(
        state.specialtiesState.copyWith(
          isLoading: false,
          errorMessage: message,
        ),
      );
    });
  }

  /// Load initial recommended doctors (first page)
  Future<void> getRecommendedDoctors() {
    return _fetchRecommendedDoctors(isInitialLoad: true);
  }

  /// Load more recommended doctors (pagination)
  Future<void> getMoreRecommendedDoctors() {
    return _fetchRecommendedDoctors(isInitialLoad: false);
  }

  /// Shared logic for fetching doctors
  Future<void> _fetchRecommendedDoctors({required bool isInitialLoad}) async {
    final paginatedState = state.recommendedDoctorsState.paginatedState;
    final filter = state.recommendedDoctorsState.doctorsFilterDto;

    if (paginatedState == null || filter == null) return;

    final updatedState = isInitialLoad
        ? paginatedState.copyWith(isLoading: true)
        : paginatedState.copyWith(isLoadingMore: true);

    _emitRecommendedPaginatedStateUpdate(updatedState);

    final result = await homeRepo.getFilteredDoctors(
      filter.copyWith(
        pageNumber: isInitialLoad ? 1 : paginatedState.currentPage + 1,
      ),
    );

    handlePaginatedResult(
      result,
      onSuccess: (data) {
        final newData =
            isInitialLoad ? List.of(data.data) : List.of(paginatedState.data)
              ..addAll(data.data);

        _emitRecommendedPaginatedStateUpdate(
          paginatedState.copyWith(
            isLoading: false,
            isLoadingMore: false,
            data: newData,
            hasMoreData: data.hasNextPage,
            currentPage: data.currentPage,
          ),
        );
      },
      onError: (message) {
        final errorState = isInitialLoad
            ? paginatedState.copyWith(isLoading: false, errorMessage: message)
            : paginatedState.copyWith(
                isLoadingMore: false, errorMessage: message);

        _emitRecommendedPaginatedStateUpdate(errorState);
      },
    );
  }

  /// Show/hide back to top button
  void updateBackToTopButtonState(bool show) {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        showBackToTopButton: show,
      ),
    ));
  }

  /// DRY helper to update specialtiesState
  void _emitSpecialtiesStateUpdate(SpecialtiesState newState) {
    emit(state.copyWith(specialtiesState: newState));
  }

  /// DRY helper to update paginatedState inside recommendedDoctorsState
  void _emitRecommendedPaginatedStateUpdate(
      PaginatedState<Doctor> newPaginatedState) {
    emit(state.copyWith(
      recommendedDoctorsState: state.recommendedDoctorsState.copyWith(
        paginatedState: newPaginatedState,
      ),
    ));
  }
}
