class InitiateBookingResponse {
  final int bookingId;
  final int holdExpiresInSeconds;
  final DateTime holdExpiresAtUtc;

  const InitiateBookingResponse({
    required this.bookingId,
    required this.holdExpiresInSeconds,
    required this.holdExpiresAtUtc,
  });
}
