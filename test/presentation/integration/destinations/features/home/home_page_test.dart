
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_page.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_screen.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_screen_state.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_view_model.dart';
import 'package:nasa_picture_of_the_day/presentation/entity/base/ui_toolbar.dart';
import 'package:nasa_picture_of_the_day/presentation/intl/translation/translation_keys.dart';

import '../../../../../mocks/viewmodels/fake_home_view_model.dart';
import '../../../../base/test_helpers.dart';
import '../../../../base/widget_tester_ext.dart';

void main() {
  late FakeHomeViewModel fakeHomeViewModel;

  setUpAll(baseSetupAll);

  setUp(() {});

  tearDown(() {
    GetIt.instance.reset();
    resetMocktailState();
  });

  loadPage(WidgetTester tester) async {
    await tester.loadPage(
      widget: const HomePage(homeScreen: HomeScreen()),
      viewModelProvider: homeViewModelProvider,
      fakeViewModelGenerator: (ref) {
        fakeHomeViewModel = FakeHomeViewModel(
          HomeScreenState(
            toolbar: UIToolbar(
                title: LocaleKeys.homePageTitle, hasBackButton: true),
            showLoading: false,
            apod: null
          ),
        );
        return fakeHomeViewModel;
      },
    );
  }

  // testWidgets(
  //     "Given home page is opened, When no other action is taken, should be no present TextField and Image",
  //         (tester) async {
  //       // Given
  //       await loadPage(tester);
  //
  //       // Then
  //       expect(find.byType(TextField), findsNothing);
  //       expect(find.byType(CachedNetworkImage), findsNothing);
  //     });
}