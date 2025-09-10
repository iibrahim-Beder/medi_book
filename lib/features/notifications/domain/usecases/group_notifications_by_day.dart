import 'package:medi_book/features/notifications/domain/entities/appNotification.dart';
import 'package:intl/intl.dart';

Map<String, List<AppNotification>> groupByDay(List<AppNotification> items) {
  final now = DateTime.now();
  final startOfToday = DateTime(now.year, now.month, now.day);
  final startOfThisWeek = startOfToday.subtract(Duration(days: now.weekday - 1));
  final startOfLastWeek = startOfThisWeek.subtract(Duration(days: 7));
  final startOfThisMonth = DateTime(now.year, now.month);
  final startOfLastMonth = DateTime(now.year, now.month - 1);

  final Map<String, List<AppNotification>> tempGrouped = {};

  for (final item in items) {
    final created = item.createdAt;
    final startOfCreatedDay = DateTime(created.year, created.month, created.day);

    String key;
    if (startOfCreatedDay.isAtSameMomentAs(startOfToday)) {
      key = "Today";
    } else if (startOfCreatedDay.isAtSameMomentAs(startOfToday.subtract(Duration(days: 1)))) {
      key = "Yesterday";
    } else if (startOfCreatedDay.isAfter(startOfThisWeek)) {
      key = "This Week";
    } else if (startOfCreatedDay.isAfter(startOfLastWeek)) {
      key = "Last Week";
    } else if (startOfCreatedDay.isAfter(startOfThisMonth)) {
      key = "This Month";
    } else if (startOfCreatedDay.isAfter(startOfLastMonth)) {
      key = "Last Month";
    } else {
      key = DateFormat.yMMMM().format(created); 
    }

    tempGrouped.putIfAbsent(key, () => []).add(item);
  }
  final groupOrder = [
    "Today",
    "Yesterday",
    "This Week",
    "Last Week",
    "This Month",
    "Last Month"
  ];

  final sortedMap = <String, List<AppNotification>>{};

  // Add known groups in order
  for (final group in groupOrder) {
    if (tempGrouped.containsKey(group)) {
      final sortedItems = tempGrouped[group]!..sort(
        (a, b) => b.createdAt.compareTo(a.createdAt),
      );
      sortedMap[group] = sortedItems;
    }
  }

  // Add remaining groups (like "June 2024", "May 2024"), sorted by date descending
  final otherGroups = tempGrouped.keys
      .where((key) => !groupOrder.contains(key))
      .toList()
    ..sort((a, b) {
      final aDate = DateFormat.yMMMM().parse(a);
      final bDate = DateFormat.yMMMM().parse(b);
      return bDate.compareTo(aDate); // newest month first
    });

  for (final group in otherGroups) {
    final sortedItems = tempGrouped[group]!..sort(
      (a, b) => b.createdAt.compareTo(a.createdAt),
    );
    sortedMap[group] = sortedItems;
  }

  return sortedMap;
}
