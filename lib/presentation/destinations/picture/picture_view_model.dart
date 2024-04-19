
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_intent.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_state.dart';

import '../../../domain/entity/features/apod.dart';
import '../../base/intent/intent_handler.dart';
import '../../base/view_model_provider/base_view_model.dart';

final pictureViewModelProvider =
StateNotifierProvider.autoDispose<PictureViewModel, PictureScreenState>(
        (ref) => GetIt.I.get());

abstract class PictureViewModel
    extends BaseViewModel<PictureScreen, PictureScreenState>
    implements IntentHandler<PictureScreenIntent> {
  PictureViewModel(super.state);

  Apod get apod;
}