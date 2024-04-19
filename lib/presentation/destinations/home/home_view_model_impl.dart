import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor.dart';
import 'package:nasa_picture_of_the_day/navigation/features/home/home_navigator.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_screen_intent.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_view_model.dart';
import 'package:nasa_picture_of_the_day/presentation/entity/effect/effect.dart';

import '../../entity/base/ui_toolbar.dart';
import '../../intl/translation/translation_keys.dart';
import 'home_screen_state.dart';

class HomeViewModelImpl extends HomeViewModel {
  final ApodInteractor apodInteractor;
  final HomeNavigator homeNavigator;

  HomeViewModelImpl({required this.apodInteractor, required this.homeNavigator})
      : super(_initialState);

  static get _initialState => HomeScreenState(
      toolbar: UIToolbar(
        title: LocaleKeys.homePageTitle,
        hasBackButton: false,
      ),
      showLoading: true,
      apod: null);

  @override
  onInit() {
    fetch(
        future: apodInteractor.fetchApod(),
        onData: (data) {
          data.successOrNull(success: (success) {
            setState((state) => state.copyWith(apod: success, showLoading: false));
          });
          data.errorOrNull(error: (error) {
            setEffect(Effect.snackBar(text: error.toString()));
          });
        });
  }

  @override
  void onIntent(HomeScreenIntent intent) {
    switch (intent) {
      case PictureHomeScreenIntent():
        homeNavigator.toPictureScreen(intent.apod);
    }
  }
}
