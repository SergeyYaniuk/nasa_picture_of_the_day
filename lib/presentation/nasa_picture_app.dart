
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/presentation/base/widgets/snackbar/snackbar.dart';

import '../navigation/base/app_router.dart';

class NasaPictureApp extends StatelessWidget {
  NasaPictureApp({super.key});

  final AppRouter _appRouter = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        scaffoldMessengerKey: scaffoldMessengerKey,
        debugShowCheckedModeBanner: false,
      )
    );
  }
}