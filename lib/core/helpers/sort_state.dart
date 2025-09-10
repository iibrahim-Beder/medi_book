import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_book/core/helpers/filter_state.dart';
part 'sort_state.freezed.dart';

@freezed
class SortState with _$SortState {
  const factory SortState(
      {@Default(0) int spIndex,
      @Default(0) int rtIndex,}) = _SortState;
}

extension SortStateExtension on SortState {
  FilterState toFilterState() {
    return FilterState(
      selectedSpecialityIndex: this.spIndex,
      selectedRatingIndex: this.rtIndex,
    );
  }
}