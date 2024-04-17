import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor.dart';
import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor_impl.dart';

extension InteractorModule on GetIt {
  void interactorModule() {
    //apod interactor
    registerFactory<ApodInteractor>(
        () => ApodInteractorImpl(fetchApodUseCase: get()));
  }
}
