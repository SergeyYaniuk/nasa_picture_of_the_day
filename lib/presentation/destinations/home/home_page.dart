
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/widgets/home_page_body.dart';

import '../../base/exceptions/unhandled_effect_exception.dart';
import '../../base/page/base_page.dart';
import '../../base/widgets/snackbar/snackbar.dart';
import '../../entity/effect/effect.dart';
import 'home_screen.dart';
import 'home_screen_state.dart';
import 'home_view_model.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  final HomeScreen homeScreen;

  const HomePage({
    super.key,
    this.homeScreen = const HomeScreen(),
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BasePage<HomeScreen, HomeScreenState, HomeViewModel>(
      viewModelProvider: homeViewModelProvider,
      screen: homeScreen,
      appBarActions: () => [
        IconButton(
          onPressed: () {
            String locale = context.locale.toString();
            if (locale == "uk_UA") {
              context.setLocale(const Locale("en", "US"));
            } else {
              context.setLocale(const Locale("uk", "UA"));
            }
          },
          icon: const Icon(Icons.language),
        ),
      ],
      body: const HomePageBody(),
      onEffect: _handleEffect,
    );
  }

  _handleEffect(Effect effect) {
    effect.maybeMap(
      snackBar: (snackbarEffect) {
        showSnackbar(snackbarEffect);
      },
      orElse: () => throw UnhandledEffectException(effect),
    );
  }
}