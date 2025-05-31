
class PaginatedDoctors {
  final List<Doctor> doctors;
  final int currentPage;
  final int totalPages;
  final int totalCount;
  final int pageSize;
  final bool hasPreviousPage;
  final bool hasNextPage;
  final bool succeeded;

  PaginatedDoctors({
    required this.doctors,
    required this.currentPage,
    required this.totalPages,
    required this.totalCount,
    required this.pageSize,
    required this.hasPreviousPage,
    required this.hasNextPage,
    required this.succeeded,
  });
}


class Doctor {
  final int id;
  final String firstName;
  final String lastName;
  final String spiciality;
  final String location;
  final double rating;
  final int numberOfReviews;
  final String imageUrl;

  Doctor({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.spiciality,
    required this.location,
    required this.rating,
    required this.numberOfReviews,
    required this.imageUrl,
  });
}
