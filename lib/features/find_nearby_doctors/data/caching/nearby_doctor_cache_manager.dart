import 'dart:async';
import 'package:medi_book/features/find_nearby_doctors/data/caching/nearby_doctor_cell_cache.dart';

class NearbyDoctorCacheManager {
  static final NearbyDoctorCacheManager _instance = NearbyDoctorCacheManager._internal();
  factory NearbyDoctorCacheManager() => _instance;
  NearbyDoctorCacheManager._internal();

  Timer? _cleanupTimer;

  void startCleanupLoop({
    Duration interval = const Duration(minutes: 5),
    Duration ttl = const Duration(minutes: 5),
  }) {
    _cleanupTimer?.cancel();

    _cleanupTimer = Timer.periodic(interval, (_) {
      NearbyDoctorCellCache.cleanup(ttl);
    });

    print('🕒 Cache cleanup started every ${interval.inMinutes} mins');
  }

  void stopCleanupLoop() {
    _cleanupTimer?.cancel();
    _cleanupTimer = null;
    print('🛑 Cache cleanup stopped');
  }
}
