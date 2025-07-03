import 'package:dio/dio.dart';
import 'package:medi_book/core/networking/api_error_model.dart';

abstract class Failures {
  final String message;

  Failures(this.message);
}

class ServerFailure extends Failures {

  ServerFailure(super.message);

  factory ServerFailure.fromDiorError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate with api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure('Opps There was an Error, Please try again');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
      
        ApiErrorModel apiErrorModel = ApiErrorModel.fromJson(response);

    if (statusCode == 404) {
      return ServerFailure(apiErrorModel.message!);
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(apiErrorModel.message ?? 'Your request could not be processed due to invalid input. Please check the data and try again.');
    } else {
      return ServerFailure('There was an error , please try again');
    }
  }


}
