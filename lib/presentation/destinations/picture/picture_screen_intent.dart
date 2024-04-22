
import 'package:nasa_picture_of_the_day/presentation/entity/intent/intent.dart';

sealed class PictureScreenIntent extends BaseIntent {
  const PictureScreenIntent();
}

class BackPictureScreenIntent extends PictureScreenIntent {
  const BackPictureScreenIntent();

  @override
  List<Object?> get props => [];
}

// class OpenPictureScreenIntent extends PictureScreenIntent {
//   final Apod apod;
//
//   const OpenPictureScreenIntent({required this.apod});
//
//   @override
//   List<Object?> get props => [apod];
// }

