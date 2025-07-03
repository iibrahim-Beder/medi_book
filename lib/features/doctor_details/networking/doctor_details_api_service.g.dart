// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_details_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _DoctorDetailsApiService implements DoctorDetailsApiService {
  _DoctorDetailsApiService(this._dio, {this.baseUrl, this.errorLogger}) {
    baseUrl ??= 'https://a658-41-239-133-128.ngrok-free.app/Api/v1/';
  }

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<DoctorProfileModel> getDoctorProfile(int id) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<DoctorProfileModel>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://a658-41-239-133-128.ngrok-free.app/Api/v1/DoctorProfile/Get',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late DoctorProfileModel _value;
    try {
      _value = DoctorProfileModel.fromJson(_result.data!);
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<BaseResponseModel<List<DoctorLocationModel>>> getDoctorLocations(
    int id,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<BaseResponseModel<List<DoctorLocationModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://a658-41-239-133-128.ngrok-free.app/Api/v1/DoctorLocations/GetDoctorLocations',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late BaseResponseModel<List<DoctorLocationModel>> _value;
    try {
      _value = BaseResponseModel<List<DoctorLocationModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<DoctorLocationModel>(
                  (i) => DoctorLocationModel.fromJson(
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
  Future<PaginatedResponseModel<List<DoctorReviewModel>>> getDoctorReviews(
    int id,
    int pageNumber,
    int pageSize,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'pageNumber': pageNumber,
      r'pageSize': pageSize,
    };
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options =
        _setStreamType<PaginatedResponseModel<List<DoctorReviewModel>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            'https://a658-41-239-133-128.ngrok-free.app/Api/v1/DoctorReviews/List',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late PaginatedResponseModel<List<DoctorReviewModel>> _value;
    try {
      _value = PaginatedResponseModel<List<DoctorReviewModel>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<DoctorReviewModel>(
                  (i) => DoctorReviewModel.fromJson(i as Map<String, dynamic>),
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
