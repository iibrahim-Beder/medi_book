import 'package:bloc/bloc.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/details_doctor_state.dart';
import 'package:medi_book/features/home/presentation/manger/details_doctor_cubit/enums/en_doctor_section.dart';

class DetailsDoctorCubit extends Cubit<DetailsDoctorState> {
  DetailsDoctorCubit() : super(DetailsDoctorState.initial());


  void changeSection(EnDoctorSection section) {
    emit(state.copyWith(selectedSection: section));
  }

  void updateReviewsLastOffset (double offset) {
    emit(state.copyWith(reviewsLastOffset: offset));
  }
}
