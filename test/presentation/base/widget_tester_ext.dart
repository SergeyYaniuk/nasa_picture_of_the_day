
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nasa_picture_of_the_day/presentation/intl/translation/translation_loader.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension WidgetTesterExt on WidgetTester {
  Future loadPage({
    required Widget widget,
    required AutoDisposeStateNotifierProvider viewModelProvider,
    required StateNotifier Function(
        AutoDisposeStateNotifierProviderRef<StateNotifier<dynamic>,
            dynamic>)
    fakeViewModelGenerator,
    MediaQueryData mediaQueryData = const MediaQueryData(
      size: Size(320, 640),
      devicePixelRatio: 3,
    ),
  }) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    await pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale("en", "US"), Locale("uk", "UA")],
        path: "assets/translations",
        fallbackLocale: const Locale("en", "US"),
        assetLoader: const CodegenLoader(),
        child: Builder(
          builder: (context) {
            context.setLocale(const Locale("en", "US"));
            return MediaQuery(
              data: mediaQueryData,
              child: MaterialApp(
                locale: context.locale,
                home: ProviderScope(
                  overrides: [
                    viewModelProvider.overrideWith(fakeViewModelGenerator),
                  ],
                  child: widget,
                ),
              ),
            );
          },
        ),
      ),
    );
    await pumpAndSettle();
  }

  Future loadWidget({
    required Widget widget,
  }) async {
    await pumpWidget(MaterialApp(home: Scaffold(body: widget)));
  }
}