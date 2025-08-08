import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_book/features/home/domain/entities/specialty.dart';
import 'package:medi_book/features/home/routes/home_routes.dart';

part 'navigation_state.dart';
part 'navigation_cubit.freezed.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState.initial());

  void changeNavigation(BottomNavigationTab tab) {
    emit(state.copyWith(selectedNavigation: tab));
  }

  void toggleShowen() {
    emit(state.copyWith(isShowen: !state.isShowen));
  }
  void setShown(bool value) {
    emit(state.copyWith(isShowen: value));
    }

  void addSpecialtys(List<Speciality> specialty) {
    emit(state.copyWith(specialties: specialty));
  }

  static const List<String> tabs = [
    HomeRoutes.kHomeScreen,
    HomeRoutes.inpoxScreen,
    HomeRoutes.searchDoctorScreen,
    HomeRoutes.myAppointmentScreen,
    HomeRoutes.myProfileScreen,
  ];

  void onTabSelected(BottomNavigationTab tab, BuildContext context) {
    switch (tab) {
      case BottomNavigationTab.homeScreen:
        context.goNamed(tabs[tab.index]);
        break;
      case BottomNavigationTab.inpoxScreen:
        context.goNamed(tabs[tab.index], extra: state.specialties);
        break;
      case BottomNavigationTab.searchDoctorScreen:
        context.goNamed(tabs[tab.index], extra: state.specialties);
        break;
      case BottomNavigationTab.myAppointmentScreen:
        context.goNamed(tabs[tab.index]);
        break;
      case BottomNavigationTab.myProfileScreen:
        context.goNamed(tabs[tab.index]);
        break;

    }
    changeNavigation(BottomNavigationTab.values[tab.index]);
  }
}
