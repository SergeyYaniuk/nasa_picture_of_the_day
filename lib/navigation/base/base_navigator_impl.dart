import 'package:auto_route/auto_route.dart';
import 'package:nasa_picture_of_the_day/navigation/base/base_navigator.dart';

import 'app_router.dart';

class BaseNavigatorImpl implements BaseNavigator {
  final AppRouter appRouter;

  BaseNavigatorImpl({required this.appRouter});

  @override
  void back() {
    appRouter.back();
  }

  @override
  void to(PageRouteInfo route) {
    appRouter.push(route);
  }
}