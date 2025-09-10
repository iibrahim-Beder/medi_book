class DoctorMapFiltersEntity {
  final bool? currentlyWorking;
  final int? priceMin;
  final int? priceMax;
  final double? ratingMin;

  const DoctorMapFiltersEntity({
    this.currentlyWorking,
    this.priceMin,
    this.priceMax,
    this.ratingMin,
  });
}
