
import 'package:nasa_picture_of_the_day/navigation/features/home/home_navigator.dart';

import '../../../domain/entity/features/apod.dart';
import '../../../presentation/destinations/picture/picture_screen.dart';
import '../../base/app_router.dart';
import '../../base/base_navigator.dart';

class HomeNavigatorImpl implements HomeNavigator {
  final BaseNavigator navigator;

  HomeNavigatorImpl({required this.navigator});

  @override
  void toPictureScreen(Apod? apod) {
    navigator.to(PictureRoute(
      pictureScreen: PictureScreen(apod: apod),
    ));
  }
}