import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/handle_result.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/search_doctors/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class SearchDoctorCubit extends Cubit<SearchDoctorState> {
  final HomeRepo homeRepo;
  List<Speciality>? specialtiesList;

  SearchDoctorCubit(this.homeRepo, [this.specialtiesList])
      : super(SearchDoctorState.initial());

  /// Load initial doctor search results (first page)
  Future<void> fetchInitialSearchResults(String? searchValue) {
    return _fetchDoctors(searchValue: searchValue, isInitialLoad: true);
  }

  /// Load more doctor search results (pagination)
  Future<void> fetchMoreSearchResults(String? searchValue) {
    return _fetchDoctors(searchValue: searchValue, isInitialLoad: false);
  }

  /// Shared logic for both initial and pagination requests
  Future<void> _fetchDoctors({
    required String? searchValue,
    required bool isInitialLoad,
  }) async {
    final paginatedState = state.doctorsListState.doctorPaginatedState;
    final filter = state.doctorsListState.doctorsFilterDto;
    if (filter == null) return;

    // Emit loading state
    _emitPaginatedStateUpdate(
      isInitialLoad
          ? paginatedState.copyWith(isLoading: true)
          : paginatedState.copyWith(isLoadingMore: true),
    );

    final result = await homeRepo.getFilteredDoctors(
      filter.copyWith(
        searchValue: searchValue,
        pageNumber: isInitialLoad ? 1 : paginatedState.currentPage + 1,
      ),
    );

    handlePaginatedResult(
      result,
      onSuccess: (data) {
        final updatedData =
            isInitialLoad ? List.of(data.data) : List.of(paginatedState.data)
              ..addAll(List.of(data.data));

        _emitPaginatedStateUpdate(
          paginatedState.copyWith(
            isLoading: false,
            isLoadingMore: false,
            data: updatedData,
            hasMoreData: data.hasNextPage,
            currentPage: data.currentPage,
          ),
        );
      },
      onError: (message) {
        _emitPaginatedStateUpdate(
          isInitialLoad
              ? paginatedState.copyWith(isLoading: false, errorMessage: message)
              : paginatedState.copyWith(
                  isLoadingMore: false, errorMessage: message),
        );
      },
    );
  }

  /// Update selected specialty filter
  void updateSelectedSpecialityIndex(int specialityIndex) {
    emit(state.copyWith(
      sortState: state.sortState.copyWith(spIndex: specialityIndex),
    ));
  }

  /// Update selected rating filter
  void updateSelectedRatingIndex(int ratingIndex) {
    emit(state.copyWith(
      sortState: state.sortState.copyWith(rtIndex: ratingIndex),
    ));
  }

  /// Reusable method to emit new paginated state
  void _emitPaginatedStateUpdate(PaginatedState<Doctor> newPaginatedState) {
    emit(state.copyWith(
      doctorsListState: state.doctorsListState.copyWith(
        doctorPaginatedState: newPaginatedState,
      ),
    ));
  }
  
}
