class AvailableWorkDay {
  final int index;
  final DateTime day;
  final String dayOfWeek;
  final bool isAvailable;
  final int availableSlotsCount;

  const AvailableWorkDay({
    required this.index,
    required this.day,
    required this.dayOfWeek,
    required this.isAvailable,
    required this.availableSlotsCount,
  });
}
