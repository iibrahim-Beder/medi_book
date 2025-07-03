import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/handle_result.dart';
import 'package:medi_book/core/helpers/paginated_state.dart';
import 'package:medi_book/features/doctor_details/domain/entities/doctor_review.dart';
import 'package:medi_book/features/doctor_details/domain/repo/doctor_details_repo.dart';
import 'package:medi_book/features/doctor_details/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/domain/entities/paginated_doctors.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DetailsDoctorCubit extends Cubit<DetailsDoctorState> {
  final DoctorDetailsRepo doctorDetailsRepo;

  DetailsDoctorCubit(this.doctorDetailsRepo)
      : super(DetailsDoctorState.initial());

  final ItemPositionsListener reviewsPositionsListener =
      ItemPositionsListener.create();

  void initializeDoctor(Doctor doctor) {
    if (isClosed) return;
    emit(state.copyWith(doctor: doctor));
  }

  Future<void> getDoctorProfile(int id) async {
    if (isClosed) return;
    _emitDoctorProfileStateUpdate(
        state.doctorProfileState.copyWith(isLoding: true));

    final result = await doctorDetailsRepo.getDoctorProfile(id);
    if (isClosed) return;

    handleResult(result, onSuccess: (data) {
      _emitDoctorProfileStateUpdate(
        state.doctorProfileState.copyWith(isLoding: false, doctorProfile: data),
      );
    }, onError: (message) {
      _emitDoctorProfileStateUpdate(
        state.doctorProfileState
            .copyWith(isLoding: false, errorMessage: message),
      );
    });
  }

  Future<void> fetchDoctorLocations(int id) async {
    if (isClosed) return;
    _emitDoctorLocationsStateUpdate(
        state.doctorLocationsState.copyWith(isLoding: true));

    final result = await doctorDetailsRepo.getDoctorLocations(id);
    if (isClosed) return;

    handleResult(result, onSuccess: (data) {
      _emitDoctorLocationsStateUpdate(
        state.doctorLocationsState
            .copyWith(isLoding: false, doctorLocations: data),
      );
    }, onError: (message) {
      _emitDoctorLocationsStateUpdate(
        state.doctorLocationsState
            .copyWith(isLoding: false, errorMessage: message),
      );
    });
  }

  Future<void> fetchDoctorReviews(int doctorId) async {
    await _fetchPaginatedReviews(
      doctorId: doctorId,
      isInitial: true,
    );
  }

  Future<void> fetchMoreDoctorReviews(int doctorId) async {
    await _fetchPaginatedReviews(
      doctorId: doctorId,
      isInitial: false,
    );
  }

  Future<void> _fetchPaginatedReviews({
    required int doctorId,
    required bool isInitial,
  }) async {
    if (isClosed) return;

    final current = state.paginatedState;
    final pageNumber = isInitial ? 1 : current.currentPage + 1;

    // Emit loading state
    _emitPaginatedReviewsUpdate(
      current.copyWith(
        isLoading: isInitial,
        isLoadingMore: !isInitial,
      ),
    );

    final result = await doctorDetailsRepo.getDoctorReviews(
      doctorId: doctorId,
      pageNumber: pageNumber,
      pageSize: 5,
    );

    handlePaginatedResult(
      result,
      onSuccess: (data) {
        final updatedData =
            isInitial ? List.of(data.data) : List.of(current.data)
              ..addAll(data.data);

        _emitPaginatedReviewsUpdate(
          current.copyWith(
            isLoading: false,
            isLoadingMore: false,
            data: updatedData,
            hasMoreData: data.hasNextPage,
            currentPage: data.currentPage,
          ),
        );
      },
      onError: (message) {
        _emitPaginatedReviewsUpdate(
          current.copyWith(
            isLoading: false,
            isLoadingMore: false,
            errorMessage: message,
          ),
        );
      },
    );
  }

  void updateSelectedSection(EnDoctorSection section) {
    if (isClosed) return;
    emit(state.copyWith(selectedSection: section));
  }

  void handleScrollChange(int index, double reviewsAlignment) {
    if (isClosed) return;
    emit(state.copyWith(
        reviewsLastindex: index, reviewsAlignment: reviewsAlignment));
  }

  // --- Reusable Helpers ---

  void _emitDoctorProfileStateUpdate(DoctorProfileState newState) {
    emit(state.copyWith(doctorProfileState: newState));
  }

  void _emitDoctorLocationsStateUpdate(DoctorLocationsState newState) {
    emit(state.copyWith(doctorLocationsState: newState));
  }

  void _emitPaginatedReviewsUpdate(
      PaginatedState<DoctorReview> newPaginatedState) {
    emit(state.copyWith(paginatedState: newPaginatedState));
  }

}
