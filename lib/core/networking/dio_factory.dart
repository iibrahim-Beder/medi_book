import 'package:dio/dio.dart';

// class DioFactory {

//   /// Private constructor to prevent creating an object from this class
//   DioFactory._();

//   static Dio? dio;

//   static Dio getDio() {
//     Duration timeOut = const Duration(seconds: 30);

//     if (dio == null) {
//       dio = Dio();
//       dio!..options.connectTimeout = timeOut
//       ..options.receiveTimeout = timeOut;

//       return dio!;
//     } else {
//       return dio!;
//     }
//   }
// }

//************ */
// import 'package:dio/dio.dart';
// import 'package:dio/io.dart'; // for IOHttpClientAdapter
// import 'dart:io';

// import 'package:pretty_dio_logger/pretty_dio_logger.dart'; // for HttpClient

// class DioFactory {
//   DioFactory._();

//   static Dio? dio;

//   static Future<Dio> getDio() async {
//     Duration timeOut = const Duration(seconds: 30);

//     if (dio == null) {
//       dio = Dio();

//       dio!
//         ..options.connectTimeout = timeOut
//         ..options.receiveTimeout = timeOut;

//       // Bypass SSL certificate errors (ONLY for local testing)
//       (dio!.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
//         final HttpClient client = HttpClient();
//         client.badCertificateCallback =
//             (X509Certificate cert, String host, int port) => true;
//         return client;
//       };
//       addDioInterceptor();
//       return dio!;
//     } else {
//       return dio!;
//     }
//   }

//   static void addDioInterceptor() {
//     dio?.interceptors.add(
//       PrettyDioLogger(
//         requestBody: true,
//         requestHeader: true,
//         responseHeader: true,
//       ),
//     );
//   }
// }
//************ */

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

static Future<Dio> getDio() async {
  Duration timeout = const Duration(seconds: 30);

  if (dio == null) {
    dio = Dio();

    dio!
      ..options.connectTimeout = timeout
      ..options.receiveTimeout = timeout;

    dio!.options.headers.addAll({
      'Authorization': 'Bearer eyJhbGciOiJodHRwOi8vd3d3Lm...',
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });

    addDioInterceptor();
  }

  return dio!;
}
  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: false,
        error: true,
        compact: true,
      ),
    );
  }
}
