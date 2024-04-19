
import 'package:get_it/get_it.dart';

import '../destinations/home/home_view_model.dart';
import '../destinations/home/home_view_model_impl.dart';
import '../destinations/picture/picture_view_model.dart';
import '../destinations/picture/picture_view_model_impl.dart';

extension PresentationModule on GetIt {
  void presentationModule() {
    // home
    registerFactory<HomeViewModel>(
          () => HomeViewModelImpl(
        apodInteractor: get(),
        homeNavigator: get(),
      ),
    );

    // picture
    registerFactory<PictureViewModel>(
          () => PictureViewModelImpl(
        pictureNavigator: get()
      ),
    );
  }
}