import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case_impl.dart';

extension DomainModule on GetIt {
  void domainModule() {
    // apod usecase
    registerFactory<FetchApodUseCase>(
        () => FetchApodUseCaseImpl(apodRepository: get()));
  }
}
