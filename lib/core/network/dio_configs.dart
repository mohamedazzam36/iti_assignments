import 'package:dio/dio.dart';
import 'package:iti_flutter/core/network/api_constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfigs {
  DioConfigs._();
  static final instance = DioConfigs._();

  static final _timeout = const Duration(seconds: 30);

  static Dio getDio() {
    return Dio()
      ..options.baseUrl = ApiConstants.baseUrl
      ..options.connectTimeout = _timeout
      ..options.receiveTimeout = _timeout
      ..options.contentType = Headers.jsonContentType
      ..options.responseType = ResponseType.json
      ..httpClientAdapter = HttpClientAdapter()
      ..interceptors.addAll([
        PrettyDioLogger(requestHeader: true, responseHeader: true),
        // LogInterceptor(),
      ]);
  }
}
