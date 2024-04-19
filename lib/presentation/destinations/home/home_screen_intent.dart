
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/presentation/entity/intent/intent.dart';

sealed class HomeScreenIntent extends BaseIntent {
  const HomeScreenIntent();
}

class PictureHomeScreenIntent extends HomeScreenIntent {
  final Apod? apod;
  const PictureHomeScreenIntent({required this.apod});

  @override
  List<Object?> get props => [];
}