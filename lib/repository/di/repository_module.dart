import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_mapper.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository_impl.dart';

import '../preferences/preferences_repository.dart';
import '../preferences/preferences_repository_impl.dart';

extension RepositoryModule on GetIt {
  void repositoryModule() {
    // apod features
    registerFactory<ApodMapper>(() => ApodMapperImpl());

    registerLazySingleton<ApodRepository>(
        () => ApodRepositoryImpl(
            apodRemoteService: get(),
            apodMapper: get()));

    // preferences
    registerLazySingleton<PreferencesRepository>(
            () => PreferencesRepositoryImpl(
          preferencesService: get(),
        ));
  }
}
