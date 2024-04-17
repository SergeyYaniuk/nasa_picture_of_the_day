import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/flavors/flavor_config.dart';
import 'package:nasa_picture_of_the_day/services/base/di/dio_provider.dart';
import 'package:nasa_picture_of_the_day/services/base/dio/interceptors/nasa_api_key_interceptor.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service_impl.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/fake_apod_remote_service.dart';

import '../preferences/preferences_service.dart';
import '../preferences/preferences_service_impl.dart';

extension ServiceModule on GetIt {
  void serviceModule() {
    //Dio
    registerFactory(() => NasaApiKeyInterceptor());

    registerLazySingleton(
        () => provideDio(interceptors: [get<NasaApiKeyInterceptor>()]));

    // Shared Preferences
    registerLazySingleton<PreferencesService>(() => PreferencesServiceImpl(
          sharedPreferences: get(),
        ));

    // remote features
    registerLazySingleton<ApodRemoteService>(() {
      if (FlavorConfig.values.useFakeData) {
        return FakeApodRemoteService();
      }

      return ApodRemoteServiceImpl(dio: get());
    });
  }
}
