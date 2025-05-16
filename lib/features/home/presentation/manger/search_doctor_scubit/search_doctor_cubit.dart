import 'package:bloc/bloc.dart';
import 'package:medi_book/core/helpers/doctors_list.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/controllers/doctors_ctrl.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/controllers/sort_ctrl.dart';
import 'package:medi_book/features/home/presentation/manger/search_doctor_scubit/search_doctor_state.dart';

class SearchDoctorCubit extends Cubit<SearchDoctorState> {
  SearchDoctorCubit() : super(SearchDoctorState.initial());

  DoctorsCtrl doctorsCtrl = DoctorsCtrl(doctorsList);
  SortCtrl sortCtrl = SortCtrl();

  
}

