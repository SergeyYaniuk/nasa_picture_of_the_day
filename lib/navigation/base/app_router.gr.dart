// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomePage(
          key: args.key,
          homeScreen: args.homeScreen,
        ),
      );
    },
    PictureRoute.name: (routeData) {
      final args = routeData.argsAs<PictureRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PicturePage(
          key: args.key,
          pictureScreen: args.pictureScreen,
        ),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    HomeScreen homeScreen = const HomeScreen(),
    List<PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(
            key: key,
            homeScreen: homeScreen,
          ),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<HomeRouteArgs> page = PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.homeScreen = const HomeScreen(),
  });

  final Key? key;

  final HomeScreen homeScreen;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, homeScreen: $homeScreen}';
  }
}

/// generated route for
/// [PicturePage]
class PictureRoute extends PageRouteInfo<PictureRouteArgs> {
  PictureRoute({
    Key? key,
    required PictureScreen pictureScreen,
    List<PageRouteInfo>? children,
  }) : super(
          PictureRoute.name,
          args: PictureRouteArgs(
            key: key,
            pictureScreen: pictureScreen,
          ),
          initialChildren: children,
        );

  static const String name = 'PictureRoute';

  static const PageInfo<PictureRouteArgs> page =
      PageInfo<PictureRouteArgs>(name);
}

class PictureRouteArgs {
  const PictureRouteArgs({
    this.key,
    required this.pictureScreen,
  });

  final Key? key;

  final PictureScreen pictureScreen;

  @override
  String toString() {
    return 'PictureRouteArgs{key: $key, pictureScreen: $pictureScreen}';
  }
}
