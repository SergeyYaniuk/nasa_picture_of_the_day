
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/domain/di/domain_module.dart';
import 'package:nasa_picture_of_the_day/interactor/di/interactor_module.dart';
import 'package:nasa_picture_of_the_day/navigation/di/navigation_module.dart';
import 'package:nasa_picture_of_the_day/presentation/di/presentation_module.dart';
import 'package:nasa_picture_of_the_day/presentation/intl/translation/translation_loader.dart';
import 'package:nasa_picture_of_the_day/presentation/nasa_picture_app.dart';
import 'package:nasa_picture_of_the_day/repository/di/repository_module.dart';
import 'package:nasa_picture_of_the_day/services/di/service_module.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'foundation/logger/logger.dart';

void startApp() async {
  await initialiseApp();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en", "US"), Locale("uk", "UA")],
      path: "assets/translations",
      fallbackLocale: const Locale("en", "US"),
      assetLoader: const CodegenLoader(),
      child: NasaPictureApp(),
    ),
  );
}

@visibleForTesting
Future initialiseApp({bool test = false}) async {
  final bindings = WidgetsFlutterBinding.ensureInitialized();

  bindings.deferFirstFrame();

  _initialiseGetIt();

  await Future.wait([
    _initSharedPreferences(),
    EasyLocalization.ensureInitialized(),
  ]);

  EasyLocalization.logger.printer = customEasyLogger;

  if (!kIsWeb && Platform.isAndroid) {
    try {
      FlutterDisplayMode.setHighRefreshRate();
    } on PlatformException catch (exception) {
      log.e(exception);
    }
  }

  bindings.allowFirstFrame();
}

Future _initSharedPreferences() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  GetIt.instance.registerSingleton(sharedPreferences);
}

void _initialiseGetIt() {
  log.d("Initializing dependencies...");
  GetIt.instance
    ..serviceModule()
    ..repositoryModule()
    ..domainModule()
    ..interactorModule()
    ..presentationModule()
    ..navigationModule();
}