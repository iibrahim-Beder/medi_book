import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:medi_book/features/home/domain/repos/home_repo.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SearchDoctorCubit extends Cubit<SearchDoctorState> {
  final HomeRepo homeRepo;

  final TextEditingController searchCtrl = TextEditingController();
  final ScrollController scrollCtrl = ScrollController();
  final ItemScrollController spCtrl = ItemScrollController();
  final ItemScrollController rtCtrl = ItemScrollController();

  SearchDoctorCubit(this.homeRepo) : super(SearchDoctorState.initial());

  // void initScrollControllersAndHighlight() {
  //   // [1]jumping to selected item in both controllers after build the widget.
  //   // [2]and trigger coloring.
  //   final current = state.sortState;

  //   jumpToSelected(
  //     controller: current.spCtrl!,
  //     selectedIndex: current.spIndex,
  //     triggerColoring: () {
  //       final updated = current.copyWith(timeToColor: true);
  //       updateSortState(updated);
  //     },
  //   );

  //   jumpToSelected(
  //     controller: current.rtCtrl!,
  //     selectedIndex: current.rtIndex,
  //     triggerColoring: () {},
  //   );
  // }
/*
  Future<void> getFilteredDoctors() async {
    
    emit(state.copyWith(
      doctorsListState: state.doctorsListState.copyWith(
        isLoading: true,
      ),
    ));

    final result = await homeRepo
        .getFilteredDoctors(state.doctorsListState.doctorsFilterDto!);

    result.fold((error) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoading: false,
          errorMessage: error.message,
        ),
      ));
    }, (doctors) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoading: false,
          data: doctors.doctors,
          hasMoreData: doctors.hasNextPage,
          currentPage: doctors.currentPage,
        ),
      ));
    });
  }

  Future<void> getMoreFilteredDoctors() async {

    emit(state.copyWith(
      doctorsListState: state.doctorsListState.copyWith(
        isLoadingMore: true,
      ),
    ));

    final result = await homeRepo.getFilteredDoctors(
      state.doctorsListState.doctorsFilterDto!
          .copyWith(pageNumber: state.doctorsListState.currentPage + 1),
    );

    result.fold((error) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoadingMore: false,
          errorMessage: error.message,
        ),
      ));
    }, (doctors) {
      final updatedData = List.of(state.doctorsListState.data)
        ..addAll(doctors.doctors);

      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          data: updatedData,
          isLoadingMore: false,
          currentPage: doctors.currentPage,
          hasMoreData: doctors.hasNextPage,
        ),
      ));
    });
  }

  */

  Future<void> getSearchedDoctors() async {
    // this method is been called when the user types something in the search field and it get the first page of results

    emit(state.copyWith(
      doctorsListState: state.doctorsListState.copyWith(
        isLoading: true,
      ),
    ));

    final result = await homeRepo
        .getFilteredDoctors(state.doctorsListState.doctorsFilterDto!
            .
            // send the search value with the request
            copyWith(searchValue: searchCtrl.text));

    result.fold((error) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoading: false,
          errorMessage: error.message,
        ),
      ));
    }, (paginatedDoctors) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoading: false,
          data: paginatedDoctors.data,
          hasMoreData: paginatedDoctors.hasNextPage,
          currentPage: paginatedDoctors.currentPage,
        ),
        
      ));
      // jump to top of search results
      WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollCtrl.jumpTo(0);
      });
    });
  }

  Future<void> getMoreSearchedDoctors() async {
    // this method is been called when the user scrolls to get more results from search method
    emit(state.copyWith(
      doctorsListState: state.doctorsListState.copyWith(
        isLoadingMore: true,
      ),
    ));

    final result = await homeRepo.getFilteredDoctors(
      state.doctorsListState.doctorsFilterDto!.copyWith(
          searchValue: searchCtrl.text,
          pageNumber: state.doctorsListState.currentPage + 1),
    );

    result.fold((error) {
      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          isLoadingMore: false,
          errorMessage: error.message,
        ),
      ));
    }, (paginatedDoctors) {
      final updatedData = List.of(state.doctorsListState.data)
        ..addAll(paginatedDoctors.data);

      emit(state.copyWith(
        doctorsListState: state.doctorsListState.copyWith(
          data: updatedData,
          isLoadingMore: false,
          currentPage: paginatedDoctors.currentPage,
          hasMoreData: paginatedDoctors.hasNextPage,
        ),
      ));
    });
  }

  void clearDoctorsList() {
    emit(state.copyWith(doctorsListState: DoctorsListState.initial()));
  }

  void setMode(EnModes newMode) {
    final currentDoctorsListState = state.doctorsListState;

    final updatedDoctorsListState =
        currentDoctorsListState.copyWith(mode: newMode);

    emit(state.copyWith(doctorsListState: updatedDoctorsListState));
  }

  void updateSortState(SortState newSortState) {
    emit(state.copyWith(sortState: newSortState));
  }
}
