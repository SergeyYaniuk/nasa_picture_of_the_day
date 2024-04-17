
import 'package:dio/dio.dart';
import 'package:nasa_picture_of_the_day/flavors/flavor_config.dart';

class NasaApiKeyInterceptor extends Interceptor {
  static const String _apiKey = "api_key";

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final newOptions = options.copyWith(queryParameters: {
      ...options.queryParameters,
      _apiKey: FlavorConfig.values.nasaApiKey
    });

    handler.next(newOptions);
  }
}