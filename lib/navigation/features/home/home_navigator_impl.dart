
import 'package:nasa_picture_of_the_day/navigation/features/home/home_navigator.dart';

import '../../../presentation/destinations/picture/picture_screen.dart';
import '../../base/app_router.dart';
import '../../base/base_navigator.dart';

class HomeNavigatorImpl implements HomeNavigator {
  final BaseNavigator navigator;

  HomeNavigatorImpl({required this.navigator});

  @override
  void toPictureScreen() {
    navigator.to(PictureRoute(
      pictureScreen: const PictureScreen(),
    ));
  }
}