// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_appointment_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _BookAppointmentApiService implements BookAppointmentApiService {
  _BookAppointmentApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://1bd2901cfd48.ngrok-free.app/Api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<BaseResponseModel<List<DoctorTimeSlotModel>>> getDayDoctorTimeSlots(
    int id,
    DateTime dayNumber,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'day': dayNumber.toIso8601String(),
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<BaseResponseModel<List<DoctorTimeSlotModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://1bd2901cfd48.ngrok-free.app/Api/v1/Bookings/GetDoctorDayTimeSlots',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<DoctorTimeSlotModel>> _value;
    try {
      _value = BaseResponseModel<List<DoctorTimeSlotModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<DoctorTimeSlotModel>(
                  (i) => DoctorTimeSlotModel.fromJson(
                    i as Map<String, dynamic>,
                  ),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<AvailableWorkDayModel>>> getDoctorAvailableDays(
    int id,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<BaseResponseModel<List<AvailableWorkDayModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://1bd2901cfd48.ngrok-free.app/Api/v1/Bookings/GetDoctorAvailableWorkDays',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<AvailableWorkDayModel>> _value;
    try {
      _value = BaseResponseModel<List<AvailableWorkDayModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<AvailableWorkDayModel>(
                  (i) => AvailableWorkDayModel.fromJson(
                    i as Map<String, dynamic>,
                  ),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<InitiateBookingResponseModel>> addInitiateBooking(
    Map<String, dynamic> body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _options =
        _setStreamType<BaseResponseModel<InitiateBookingResponseModel>>(
      Options(method: 'POST', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://1bd2901cfd48.ngrok-free.app/Api/v1/Bookings/AddInitialBookingTimeSlot',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<InitiateBookingResponseModel> _value;
    try {
      _value = BaseResponseModel<InitiateBookingResponseModel>.fromJson(
        _result.data!,
        (json) =>
            InitiateBookingResponseModel.fromJson(json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
