import 'dart:async';

import 'package:medi_book/features/find_nearby_doctors/domain/entities/location_with_doctors.dart';

class NearbyDoctorCellCache {
  static final Map<String, CachedCellData<List<LocationWithDoctors>>> _cache =
      {};
  static const int _maxCacheSize = 500;

  // static List<LocationWithDoctors>? get(String key) {
  //   final entry = _cache[key];
  //   return entry?.data;
  // }

  static List<LocationWithDoctors>? get(String key) {
    final entry = _cache[key];
    if (entry != null) {
      // Update the timestamp to mark this entry as recently used
      _cache[key] = CachedCellData(entry.data, DateTime.now());
      return entry.data;
    }
    return null; // Entry not found in cache
  }
  // static void set(String key, List<LocationWithDoctors> data) {
  //   if (_cache.length >= _maxCacheSize && !_cache.containsKey(key)) {
  //     _evictOldest();
  //   }

  //   _cache[key] = CachedCellData(data, DateTime.now());
  // }

  static void set(String key, List<LocationWithDoctors> data) {
    // If the cache is full and this is a new key, evict the least recently used entry
    if (_cache.length >= _maxCacheSize && !_cache.containsKey(key)) {
      _evictLeastRecentlyUsed();
    }

    // Insert or update the cache entry with the current timestamp (used for LRU logic)
    _cache[key] = CachedCellData(data, DateTime.now());
  }

  static void _evictLeastRecentlyUsed() {
    if (_cache.isEmpty) return;

    // Find the cache entry with the oldest (least recently used) timestamp
    final lruKey = _cache.entries
        .reduce((a, b) => a.value.timestamp.isBefore(b.value.timestamp) ? a : b)
        .key;

    // Remove that entry from the cache
    _cache.remove(lruKey);
  }
  

  static bool isFresh(String key, Duration ttl) {
    final entry = _cache[key];
    if (entry == null) return false;
    return DateTime.now().difference(entry.timestamp) < ttl;
  }

  static bool exists(String key) => _cache.containsKey(key);

  static List<String> cachedKeys() => _cache.keys.toList();

  static void cleanup(Duration ttl) {
    final now = DateTime.now();
    final keysToRemove = _cache.entries
        .where((entry) => now.difference(entry.value.timestamp) >= ttl)
        .map((entry) => entry.key)
        .toList();

    for (final key in keysToRemove) {
      _cache.remove(key);
    }
  }

  static Timer? _cleanupTimer;

  void startCleanupLoop(
      {Duration interval = const Duration(minutes: 5),
      Duration ttl = const Duration(minutes: 5)}) {
    _cleanupTimer?.cancel();
    _cleanupTimer = Timer.periodic(interval, (_) {
      cleanup(ttl);
    });
  }

  void stopCleanupLoop() {
    _cleanupTimer?.cancel();
    _cleanupTimer = null;
  }

  static void _evictOldest() {
    if (_cache.isEmpty) return;

    final oldestKey = _cache.entries
        .reduce((a, b) => a.value.timestamp.isBefore(b.value.timestamp) ? a : b)
        .key;

    _cache.remove(oldestKey);
  }

  /// Extract zoom level from key string, e.g. 'cell_zoom4.5_label_h3index'
  static double extractZoomFromKey(String key) {
    final regex = RegExp(r'cell_zoom([\d.]+)_');
    final match = regex.firstMatch(key);
    if (match != null) {
      return double.tryParse(match.group(1)!) ?? 0;
    }
    return 0;
  }

  /// Clean cache entries that are too far from currentZoom by zoomTolerance
  static void cleanupCacheForZoom(double currentZoom,
      {double zoomTolerance = 1.0}) {
    final keysToRemove = <String>[];

    for (var key in _cache.keys) {
      double keyZoom = extractZoomFromKey(key);

      // Remove if zoom difference is greater than tolerance
      if ((keyZoom - currentZoom).abs() > zoomTolerance) {
        keysToRemove.add(key);
      }
    }

    for (var key in keysToRemove) {
      _cache.remove(key);
    }

    if (keysToRemove.isNotEmpty) {
      print(
          '🧹 Cache cleanup: removed ${keysToRemove.length} keys not near zoom $currentZoom');
    }
  }
}

class CachedCellData<T> {
  final T data;
  final DateTime timestamp;

  CachedCellData(this.data, this.timestamp);
}
