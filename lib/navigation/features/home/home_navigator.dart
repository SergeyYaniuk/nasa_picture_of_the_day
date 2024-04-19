
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';

abstract interface class HomeNavigator {
  void toPictureScreen(Apod? apod);
}