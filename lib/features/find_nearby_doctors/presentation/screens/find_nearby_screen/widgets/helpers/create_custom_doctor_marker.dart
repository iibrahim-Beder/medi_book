// import 'dart:typed_data';
// import 'dart:ui';
// import 'dart:ui' as ui;
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'package:image/image.dart' as img;
// import 'package:medi_book/features/home/domain/entities/doctor.dart';
// import 'package:medi_book/features/location/presentation/screens/find_nearby_screen/widgets/helpers/doctor_Item.dart';

// Future<List<DoctorItem>> getNearbyDoctorItems(BuildContext context) async {
//   String test = 'https://56c91a0bfe46.ngrok-free.app';
//   final List<Map<String, dynamic>> doctors = [
//     {
//       'id': '1',
//       'firstName': 'Ahmad',
//       'lastName': 'Yousef',
//       'specialty': 'General',
//       'city': 'Amman',
//       'rating': 4.5,
//       'reviews': 10,
//       'position': LatLng(30.3762, 30.5111),
//       'imagePath':  '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '2',
//       'firstName': 'Lina',
//       'lastName': 'Haddad',
//       'specialty': 'Cardiologist',
//       'city': 'Irbid',
//       'rating': 4.2,
//       'reviews': 8,
//       'position': LatLng(30.3721, 30.5058),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '3',
//       'firstName': 'Samir',
//       'lastName': 'Khalil',
//       'specialty': 'Dentistry',
//       'city': 'Zarqa',
//       'rating': 4.7,
//       'reviews': 22,
//       'position': LatLng(30.3734, 30.5099),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '4',
//       'firstName': 'Noor',
//       'lastName': 'Faris',
//       'specialty': 'ENT',
//       'city': 'Amman',
//       'rating': 4.1,
//       'reviews': 17,
//       'position': LatLng(30.3781, 30.5063),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '5',
//       'firstName': 'Tariq',
//       'lastName': 'Mahmoud',
//       'specialty': 'Hepatology',
//       'city': 'Aqaba',
//       'rating': 3.9,
//       'reviews': 5,
//       'position': LatLng(30.3755, 30.5034),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '6',
//       'firstName': 'Rania',
//       'lastName': 'Saadeh',
//       'specialty': 'Histologist',
//       'city': 'Madaba',
//       'rating': 4.3,
//       'reviews': 14,
//       'position': LatLng(30.3712, 30.5087),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '7',
//       'firstName': 'Omar',
//       'lastName': 'Nasser',
//       'specialty': 'Intestine',
//       'city': 'Jerash',
//       'rating': 4.6,
//       'reviews': 19,
//       'position': LatLng(30.3705, 30.5049),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '8',
//       'firstName': 'Dina',
//       'lastName': 'Rashid',
//       'specialty': 'Neurologic',
//       'city': 'Amman',
//       'rating': 4.4,
//       'reviews': 12,
//       'position': LatLng(30.3770, 30.5102),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '9',
//       'firstName': 'Fadi',
//       'lastName': 'Salem',
//       'specialty': 'Optometry',
//       'city': 'Karak',
//       'rating': 4.0,
//       'reviews': 7,
//       'position': LatLng(30.3738, 30.5025),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//     {
//       'id': '10',
//       'firstName': 'Maya',
//       'lastName': 'Obeid',
//       'specialty': 'Pediatric',
//       'city': 'Irbid',
//       'rating': 4.8,
//       'reviews': 25,
//       'position': LatLng(30.3767, 30.5070),
//       'imagePath':
//           '$test/uploads/images/persons/rendy.png',
//     },
//   ];

//   List<DoctorItem> items = [];

//   for (var doctor in doctors) {
//     final Uint8List markerIconBytes =
//         await getResizedMarkerIcon(doctor['imagePath'], 100, 100);
//     final BitmapDescriptor icon = BitmapDescriptor.fromBytes(markerIconBytes);

//     items.add(
//       DoctorItem(
//         location: doctor['position'],
//         icon: icon,
//         doctor: Doctor(
//           id: int.parse(doctor['id']),
//           firstName: doctor['firstName'],
//           lastName: doctor['lastName'],
//           spiciality: doctor['specialty'],
//           location: doctor['city'],
//           rating: doctor['rating'],
//           numberOfReviews: doctor['reviews'],
//           imageUrl: doctor['imagePath'],
//         ),
//       ),
//     );
//   }

//   return items;
// }

// Future<Uint8List> getResizedMarkerIcon(
//     String path, int width, int height) async {
//   Uint8List bytes;

//   if (path.startsWith('http')) {
//     final response = await http.get(Uri.parse(path));
//     if (response.statusCode != 200) {
//       throw Exception('Failed to load image from network');
//     }
//     bytes = response.bodyBytes;
//   } else {
//     final byteData = await rootBundle.load(path);
//     bytes = byteData.buffer.asUint8List();
//   }

//   final image = img.decodeImage(bytes);
//   if (image == null) {
//     throw Exception('Could not decode image');
//   }

//   final resized = img.copyResize(image, width: width, height: height);
//   return Uint8List.fromList(img.encodePng(resized));
// }

// Future<BitmapDescriptor> createClusterBitmap(int count) async {
//   final PictureRecorder recorder = ui.PictureRecorder();
//   final Canvas canvas = Canvas(recorder);

//   final double size = 150;

//   final Paint circlePaint = Paint()..color = Colors.blue;
//   canvas.drawCircle(Offset(size / 2, size / 2), size / 2, circlePaint);

//   final TextPainter textPainter = TextPainter(
//     text: TextSpan(
//       text: count.toString(),
//       style: TextStyle(
//         fontSize: 48,
//         color: Colors.white,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     textDirection: TextDirection.ltr,
//   );
//   textPainter.layout();
//   final Offset textOffset = Offset(
//     (size - textPainter.width) / 2,
//     (size - textPainter.height) / 2,
//   );
//   textPainter.paint(canvas, textOffset);

//   final img = await recorder.endRecording().toImage(size.toInt(), size.toInt());
//   final ByteData? byteData =
//       await img.toByteData(format: ui.ImageByteFormat.png);
//   final Uint8List uint8List = byteData!.buffer.asUint8List();

//   return BitmapDescriptor.fromBytes(uint8List);
// }

// Future<Uint8List> convertAssetImageToPng(String assetPath, {int width = 100, int height = 100}) async {
//   final byteData = await rootBundle.load(assetPath);
//   final bytes = byteData.buffer.asUint8List();

//   final originalImage = img.decodeImage(bytes);
//   if (originalImage == null) {
//     throw Exception('Could not decode image');
//   }

//   final resizedImage = img.copyResize(originalImage, width: width, height: height);
//   final pngBytes = img.encodePng(resizedImage);

//   return Uint8List.fromList(pngBytes);
// }

import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image/image.dart' as img;
import 'package:medi_book/features/home/domain/entities/doctor.dart';
import 'package:medi_book/features/find_nearby_doctors/domain/entities/response/location_with_doctors.dart';
import 'package:medi_book/features/find_nearby_doctors/presentation/screens/find_nearby_screen/widgets/helpers/doctor_Item.dart';

Future<List<LocationWithDoctorsItem>> getNearbyDoctorItems(
    BuildContext context) async {
  final List<Map<String, dynamic>> doctors = [
    {
      'id': '1',
      'firstName': 'Ahmad',
      'lastName': 'Yousef',
      'specialty': 'General',
      'city': 'Amman',
      'rating': 4.5,
      'reviews': 10,
      'position': LatLng(30.3762, 30.5111),
      'imagePath': 'assets/images/markar_location.png',
    },
    {
      'id': '2',
      'firstName': 'Lina',
      'lastName': 'Haddad',
      'specialty': 'Cardiologist',
      'city': 'Irbid',
      'rating': 4.2,
      'reviews': 8,
      'position': LatLng(30.3721, 30.5058),
      'imagePath': 'assets/images/markar_location.png',
    },
  ];

  List<LocationWithDoctorsItem> items = [];

  for (var doctor in doctors) {
    final Uint8List markerIconBytes = await convertAssetImageToPng(
      doctor['imagePath'],
      width: 100,
      height: 100,
    );
    final BitmapDescriptor icon = BitmapDescriptor.fromBytes(markerIconBytes);

    items.add(
      LocationWithDoctorsItem(
        location: doctor['position'],
        icon: icon,
        doctor: Doctor(
          id: int.parse(doctor['id']),
          firstName: doctor['firstName'],
          lastName: doctor['lastName'],
          spiciality: doctor['specialty'],
          location: doctor['city'],
          rating: doctor['rating'],
          numberOfReviews: doctor['reviews'],
          imageUrl: doctor['imagePath'],
        ),
      ),
    );
  }

  return items;
}

// Future<List<LocationWithDoctors>> generateMockLocationsFromCellKeys(
//     List<String> cellKeys) async {
//   List<LocationWithDoctors> locations = [];

//   double baseLat = 30.0;
//   double baseLng = 31.0;

//   int baseI = 13623;
//   int baseJ = 14272;

//   for (int index = 0; index < cellKeys.length; index++) {
//     final key = cellKeys[index];

//     final regex = RegExp(r'ij\[(\d+), (\d+)\]');
//     final match = regex.firstMatch(key);

//     if (match != null) {
//       int i = int.parse(match.group(1)!);
//       int j = int.parse(match.group(2)!);

//       double lat = baseLat + (i - baseI) * 0.0001;
//       double lng = baseLng + (j - baseJ) * 0.0001;

//       List<Doctor> doctors = [
//         Doctor(
//           id: index * 2 + 1,
//           firstName: 'Doctor',
//           lastName: 'One',
//           spiciality: 'Speciality ${index + 1}',
//           location: 'Location ${index + 1}',
//           rating: 4.0 + (index % 2) * 0.5,
//           numberOfReviews: 10 + index * 5,
//           imageUrl: 'https://example.com/doctor${index + 1}.jpg',
//         ),
//         Doctor(
//           id: index * 2 + 2,
//           firstName: 'Doctor',
//           lastName: 'Two',
//           spiciality: 'Speciality ${index + 1}',
//           location: 'Location ${index + 1}',
//           rating: 4.2 + (index % 3) * 0.3,
//           numberOfReviews: 5 + index * 3,
//           imageUrl: 'https://example.com/doctor${index + 2}.jpg',
//         ),
//       ];

//       var icon = await BitmapDescriptor.fromAssetImage(
//         const ImageConfiguration(size: Size(48, 48)),
//         'assets/images/markar_location.png',
//       );

//       locations.add(LocationWithDoctors(
//           location: LatLng(lat, lng), doctor: doctors.first, icon: icon));
//     }
//   }

//   return locations;
// }

// Future<List<LocationWithDoctors>> generateMockLocationsFromCellKeys(
//     List<String> cellKeys) async {
//   List<LocationWithDoctors> locations = [];

//   // Adjusted base to be within the visible map range (your map is centered around lat ~30.37, lng ~30.51)
//   double baseLat = 30.35;
//   double baseLng = 30.50;

//   for (int index = 0; index < cellKeys.length; index++) {
//     final key = cellKeys[index];

//     // Extract i,j values from the cell key using regex
//     final regex = RegExp(r'ij\[(\d+), (\d+)\]');
//     final match = regex.firstMatch(key);

//     if (match != null) {
//       int i = int.parse(match.group(1)!);
//       int j = int.parse(match.group(2)!);

//       // Generate unique coordinates for each cell using modulo to keep them inside a small visible area
//       double lat = baseLat + (i % 5) * 0.002;
//       double lng = baseLng + (j % 5) * 0.002;
//       print("**********************");
//       print('Generated marker at lat: $lat, lng: $lng for cell key: $key');

//       // Create 2 mock doctors per location
//       final random = Random();
//       List<Doctor> doctors = [
//         Doctor(
//           id: random.nextInt(1000000),
//           firstName: 'Doctor',
//           lastName: 'One',
//           spiciality: 'Speciality ${index + 1}',
//           location: 'Location ${index + 1}',
//           rating: 4.0 + (index % 2) * 0.5,
//           numberOfReviews: 10 + index * 5,
//           imageUrl: 'https://example.com/doctor${index + 1}.jpg',
//         ),

//       ];

//       // Load icon from assets
//       var icon = await BitmapDescriptor.fromAssetImage(
//         const ImageConfiguration(size: Size(48, 48)),
//         'assets/images/markar_location.png',
//       );

//       // Add only 1 doctor per marker in this example
//       locations.add(LocationWithDoctors(
//         location: LatLng(lat, lng),
//         doctor: doctors.first,
//         icon: icon,
//       ));

//       print('✅ Generated mock location at ($lat, $lng) for cell $key');
//     } else {
//       print('⚠️ Cell key did not match expected format: $key');
//     }
//   }

//   return locations;
// }

Future<List<LocationWithDoctors>> generateMockLocationsFromCellKeys(
  List<String> cellKeys,
) async {
  List<LocationWithDoctors> locations = [];

  for (final cellKey in cellKeys) {
    final regex = RegExp(r'cell_\w+_([0-9]+\.[0-9]+)_([0-9]+\.[0-9]+)');
    final match = regex.firstMatch(cellKey);

    if (match == null) {
      print('⚠️ Invalid cellKey format: $cellKey');
      continue;
    }

    double lat = double.parse(match.group(1)!);
    double lng = double.parse(match.group(2)!);

    final doctor = Doctor(
      id: lat.hashCode ^ lng.hashCode,
      firstName: 'Doctor',
      lastName: '$lat-$lng',
      spiciality: 'Speciality at $lat $lng',
      location: 'Cell at $lat $lng',
      rating: 4.0,
      numberOfReviews: 20,
      imageUrl: 'https://example.com/doctor_${lat}_$lng.jpg',
    );

    final icon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/images/markar_location.png',
    );

    locations.add(LocationWithDoctors(
        locationId: '0', latitude: lat, longitude: lng,  doctors: []));

    print('📍 Generated doctor at $lat, $lng for cell $cellKey');
  }

  return locations;
}

LatLng getStableLatLngFromKey(String cellKey) {
  final hash = cellKey.hashCode;
  final random = Random(hash);

  double baseLat = 30.35;
  double baseLng = 30.50;

  double offsetLat = (random.nextDouble() - 0.5) * 0.0002;
  double offsetLng = (random.nextDouble() - 0.5) * 0.0002;

  return LatLng(baseLat + offsetLat, baseLng + offsetLng);
}

Future<Uint8List> convertAssetImageToPng(String assetPath,
    {int width = 100, int height = 100}) async {
  final byteData = await rootBundle.load(assetPath);
  final bytes = byteData.buffer.asUint8List();

  final originalImage = img.decodeImage(bytes);
  if (originalImage == null) {
    throw Exception('Could not decode image');
  }

  final resizedImage =
      img.copyResize(originalImage, width: width, height: height);
  final pngBytes = img.encodePng(resizedImage);

  return Uint8List.fromList(pngBytes);
}

Future<BitmapDescriptor> createClusterBitmap(int count) async {
  final PictureRecorder recorder = ui.PictureRecorder();
  final Canvas canvas = Canvas(recorder);

  final double size = 150;

  final Paint circlePaint = Paint()..color = Colors.blue;
  canvas.drawCircle(Offset(size / 2, size / 2), size / 2, circlePaint);

  final TextPainter textPainter = TextPainter(
    text: TextSpan(
      text: count.toString(),
      style: TextStyle(
        fontSize: 48,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    textDirection: TextDirection.ltr,
  );
  textPainter.layout();
  final Offset textOffset = Offset(
    (size - textPainter.width) / 2,
    (size - textPainter.height) / 2,
  );
  textPainter.paint(canvas, textOffset);

  final img = await recorder.endRecording().toImage(size.toInt(), size.toInt());
  final ByteData? byteData =
      await img.toByteData(format: ui.ImageByteFormat.png);
  return BitmapDescriptor.fromBytes(byteData!.buffer.asUint8List());
}
