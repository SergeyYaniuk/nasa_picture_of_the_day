
import 'package:nasa_picture_of_the_day/navigation/features/picture/picture_navigator.dart';

import '../../base/base_navigator.dart';

class PictureNavigatorImpl implements PictureNavigator {
  final BaseNavigator baseNavigator;

  PictureNavigatorImpl({required this.baseNavigator});

  @override
  void back() {
    baseNavigator.back();
  }
}