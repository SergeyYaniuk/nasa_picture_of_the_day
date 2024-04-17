
import 'package:get_it/get_it.dart';

import '../base/app_router.dart';
import '../base/base_navigator.dart';
import '../base/base_navigator_impl.dart';
import '../features/home/home_navigator.dart';
import '../features/home/home_navigator_impl.dart';
import '../features/picture/picture_navigator.dart';
import '../features/picture/picture_navigator_impl.dart';

extension NavigationModule on GetIt {
  void navigationModule() {
    // router
    registerLazySingleton(() => AppRouter());

    // base
    registerFactory<BaseNavigator>(() => BaseNavigatorImpl(appRouter: get()));

    // home
    registerFactory<HomeNavigator>(
          () => HomeNavigatorImpl(navigator: get()),
    );

    // picture
    registerFactory<PictureNavigator>(
          () => PictureNavigatorImpl(baseNavigator: get()),
    );
  }
}