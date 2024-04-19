import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';

import '../../entity/routes/routes.dart';
import '../../entity/screen/screen.dart';

class PictureScreen implements Screen {
  final Apod? apod;
  const PictureScreen({required this.apod}) : super();

  static get path => Routes.picture;
}