import 'package:flutter_test/flutter_test.dart';
import 'package:medi_book/features/find_nearby_doctors/data/caching/cache_key_builder.dart';
import 'package:medi_book/features/find_nearby_doctors/data/models/request/doctor_map_filters_model.dart';

void main() {

  test('buildCacheKey with all filters null', () {
    final key = buildCacheKey(
      cellId: 'cell001',
      isSummary: true,
      filters: const DoctorMapFiltersModel(),
    );
    expect(key, 'summary_cell001');
  });

  test('buildCacheKey with all filters set', () {
    final key = buildCacheKey(
      cellId: 'cell002',
      isSummary: false,
      filters: const DoctorMapFiltersModel(
        currentlyWorking: true,
        priceMin: 100,
        priceMax: 500,
        ratingMin: 4.5,
      ),
    );
    expect(
      key,
      'detailed_cell002_currentlyWorking=true&priceMax=500&priceMin=100&ratingMin=4.5',
    );
  });

  test('buildCacheKey ignores null values', () {
    final key = buildCacheKey(
      cellId: 'cell003',
      isSummary: true,
      filters: const DoctorMapFiltersModel(
        currentlyWorking: null,
        priceMin: 50,
      ),
    );
    expect(key, 'summary_cell003_priceMin=50');
  });

  test('buildCacheKey includes false boolean', () {
    final key = buildCacheKey(
      cellId: 'cell004',
      isSummary: false,
      filters: const DoctorMapFiltersModel(
        currentlyWorking: false,
      ),
    );
    expect(key, 'detailed_cell004_currentlyWorking=false');
  });
  test('buildCacheKey includes 0 and 0.0 values', () {
    final key = buildCacheKey(
      cellId: 'cell005',
      isSummary: true,
      filters: const DoctorMapFiltersModel(
        priceMin: 0,
        priceMax: 0,
        ratingMin: 0.0,
      ),
    );
    expect(
      key,
      'summary_cell005_priceMax=0&priceMin=0&ratingMin=0.0',
    );
  });
}
