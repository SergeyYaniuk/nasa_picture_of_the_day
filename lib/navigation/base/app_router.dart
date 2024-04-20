import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentation/destinations/home/home_page.dart';
import '../../presentation/destinations/home/home_screen.dart';
import '../../presentation/destinations/picture/picture_page.dart';
import '../../presentation/destinations/picture/picture_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            path: HomeScreen.path,
            page: HomeRoute.page,
            initial: true,
            transitionsBuilder: TransitionsBuilders.fadeIn),
        CustomRoute(
            path: PictureScreen.path,
            page: PictureRoute.page,
            transitionsBuilder: TransitionsBuilders.fadeIn, durationInMilliseconds: 350)
      ];

  Widget _customTransition(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return FadeTransition(
      opacity: animation.drive(CurveTween(curve: Curves.easeIn)), // Adjust curve as needed
      child: child// Set the desired duration here
    );
  }
}
