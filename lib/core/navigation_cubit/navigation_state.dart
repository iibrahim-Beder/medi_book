part of 'navigation_cubit.dart';
enum BottomNavigationTab {  homeScreen, massage, searchDoctorScreen, myAppointmentScreen,myProfileScreen}
@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState(
      {required BottomNavigationTab selectedNavigation,
      required bool isShowen,
      required List<Speciality> specialties
      }) = _NavigationState;

  factory NavigationState.initial() {
    return NavigationState(selectedNavigation: BottomNavigationTab.homeScreen,
        isShowen: false
        , specialties: []);
  }
}
