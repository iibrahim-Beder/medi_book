// import 'package:intl/intl.dart';

final List<DoctorInfo> doctorsList = [
  DoctorInfo("Dr. Randy Wigha", "assets/images/rendy.png",
      "General | RSUD Gatot Subroto", "4.8", "54"),
  DoctorInfo("Dr. Maya Kartika", "assets/images/rendy.png",
      "Dermatology | RS Premier Bintaro", "4.9", "72"),
  DoctorInfo("Dr. Aditya Nugroho", "assets/images/rendy.png",
      "Cardiologist | Siloam Hospitals", "4.7", "38"),
  DoctorInfo("Dr. Intan Prameswari", "assets/images/rendy.png",
      "Pediatrician | Hermina Hospital", "4.6", "45"),
  DoctorInfo("Dr. Budi Setiawan", "assets/images/rendy.png",
      "Orthopedic | RSUP Fatmawati", "4.5", "30"),
  DoctorInfo("Dr. Sari Utami", "assets/images/rendy.png",
      "Neurologist | Eka Hospital", "4.8", "66"),
  DoctorInfo("Dr. Rina Wijaya", "assets/images/rendy.png",
      "Obstetrics & Gynecology | RS Harapan Kita", "4.9", "80"),
  DoctorInfo("Dr. Dimas Permadi", "assets/images/rendy.png",
      "Dentist | RS Gigi Jakarta", "4.4", "22"),
  DoctorInfo("Dr. Andi Surya", "assets/images/rendy.png",
      "General | RSUD Cipto Mangunkusumo", "4.6", "34"),
  DoctorInfo("Dr. Nia Maharani", "assets/images/rendy.png",
      "Dermatologist | RS Awal Bros", "4.7", "58"),
  DoctorInfo("Dr. Yuda Mahendra", "assets/images/rendy.png",
      "Cardiology | Mayapada Hospital", "4.5", "41"),
  DoctorInfo("Dr. Lestari Anggraini", "assets/images/rendy.png",
      "Pediatrics | RS Mitra Keluarga", "4.9", "89"),
  DoctorInfo("Dr. Fajar Kurniawan", "assets/images/rendy.png",
      "Orthopedist | RS Royal Taruma", "4.6", "39"),
  DoctorInfo("Dr. Tari Handayani", "assets/images/rendy.png",
      "Neurologist | RSUP Persahabatan", "4.3", "27"),
  DoctorInfo("Dr. Riko Pranata", "assets/images/rendy.png",
      "Gynecologist | RS Muhammadiyah", "4.7", "53"),
  DoctorInfo("Dr. Winda Prasetya", "assets/images/rendy.png",
      "Dental Surgeon | RSUD Tangerang", "4.6", "49"),
  DoctorInfo("Dr. Hendri Saputra", "assets/images/rendy.png",
      "General | RS Hermina Depok", "4.4", "31"),
  DoctorInfo("Dr. Ayu Lestari", "assets/images/rendy.png",
      "Dermatology | RS Sari Asih", "4.8", "61"),
  DoctorInfo("Dr. Rio Firmansyah", "assets/images/rendy.png",
      "Cardiologist | RS Mitra Medika", "4.9", "95"),
  DoctorInfo("Dr. Farah Nabila", "assets/images/rendy.png",
      "Pediatrics | RS Omni Alam Sutera", "4.7", "62"),
];

class DoctorInfo {
  String name;
  String path;
  String workplace;
  String rating;
  String reviewNumber;

  DoctorInfo(
      this.name, this.path, this.workplace, this.rating, this.reviewNumber);
}

class Day {
  String name;
  int date;
  Day({required this.name, required this.date});
}

List<Day> daysList = [
  Day(name: "SUN", date: 12),
  Day(name: "MON", date: 13),
  Day(name: "TUE", date: 14),
  Day(name: "WED", date: 15),
  Day(name: "THU", date: 16),
  Day(name: "FRI", date: 17),
  Day(name: "SAT", date: 18),
];

List<String> timesList = [
  "08:30 AM",
  "09:00 AM",
  "10:30 AM",
  "11:00 AM",
  "12:30 PM",
  "13:00 PM",
  "14:30 PM",
  "15:00 PM"
];

class DayItem {
  final int id;
  final String day; 
  final String date; 

  DayItem({
    required this.id,
    required this.day,
    required this.date,
  });

  @override
  String toString() => 'DayItem(id: $id, day: $day, date: $date)';
}
// List<DayItem> generateNext14Days() {
//   final List<DayItem> days = [];
//   final now = DateTime.now();

//   for (int i = 0; i < 14; i++) {
//     final date = now.add(Duration(days: i));

//     final dayShort = DateFormat('EEE', 'en').format(date);  
//     final dayNumber = DateFormat('d').format(date);         

//     days.add(DayItem(
//       id: i + 1,
//       day: dayShort,
//       date: dayNumber,
//     ));
//   }

//   return days;
// }

class AppointmentType {
   String typeName;
   String imagePath;

  AppointmentType({required this.typeName, required this.imagePath});
}

List<AppointmentType> appointmentTypeList = [
  AppointmentType(typeName: "In Person", imagePath: "assets/svgs/in_person.svg"),
  AppointmentType(typeName: "Video Call", imagePath: "assets/svgs/video_call.svg"),
  AppointmentType(typeName: "Phone Call", imagePath: "assets/svgs/phone_call.svg"),
  
];


class CriticalityOption{
   String Name;
   String imagePath;

  CriticalityOption({required this.Name, required this.imagePath});
}

List<CriticalityOption> criticalityOptionList = [
  CriticalityOption(Name: "Master Card", imagePath: "assets/svgs/master_card.svg"),
  CriticalityOption(Name: "American Express", imagePath: "assets/svgs/american_express.svg"),
  CriticalityOption(Name: "Capital One", imagePath: "assets/svgs/capital_one.svg"),
  CriticalityOption(Name: "Barclays", imagePath: "assets/svgs/barclays.svg"),

];

List<String> paymentOptionsList = ["Credit Card", "Bank Transfer", "PayPal"];

List<String> bottomNavigationTabsItems = [
  'assets/svgs/home.svg',
  'assets/svgs/message.svg',
  'assets/svgs/search.svg',
  'assets/svgs/bottom_navigation_Appointment.svg',
  'assets/images/bottom_navigation_my_profile.png',
];

final List<String> supportedLanguageNames = [
  'Arabic',
  'English',
  'Spanish',
  'French',
  'Chinese',
];