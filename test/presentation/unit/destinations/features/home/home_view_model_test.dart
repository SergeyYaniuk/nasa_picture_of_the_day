import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/core/entity/result.dart';
import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor.dart';
import 'package:nasa_picture_of_the_day/navigation/features/home/home_navigator.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_screen_state.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_view_model.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_view_model_impl.dart';
import 'package:nasa_picture_of_the_day/presentation/entity/base/ui_toolbar.dart';
import 'package:nasa_picture_of_the_day/presentation/intl/translation/translation_keys.dart';

import '../../../../../mocks/mocks.dart';
import '../../../../../test_models/apod_models.dart';
import '../../../../base/test_helpers.dart';

void main() {
  late HomeNavigator homeNavigator;
  late ApodInteractor apodInteractor;
  late HomeViewModel viewModel;

  setUpAll(baseSetupAll);

  setUp(() {
    homeNavigator = MockHomeNavigator();
    apodInteractor = MockApodInteractor();
  });

  tearDown(() {
    resetMocktailState();
  });

  createViewModel() {
    viewModel = HomeViewModelImpl(
        apodInteractor: apodInteractor, homeNavigator: homeNavigator);
  }

  HomeScreenState getInitialState() => HomeScreenState(
      toolbar: UIToolbar(
        title: LocaleKeys.homePageTitle,
        hasBackButton: false,
      ),
      showLoading: true,
      apod: null);

  test(
      "Given home view model created, When no state change is made, Then initial state should be returned",
      () async {
        //Given
        when(() => apodInteractor.fetchApod()).thenAnswer((_) => Future.value(Success(data: apod)));

        createViewModel();

        //When
        final state = viewModel.state;

        //Then
        expect(state, getInitialState());
      });
}
