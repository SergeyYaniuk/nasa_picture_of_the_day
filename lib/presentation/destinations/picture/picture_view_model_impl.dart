
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/navigation/features/picture/picture_navigator.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_intent.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_state.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_view_model.dart';

import '../../entity/base/ui_toolbar.dart';
import '../../intl/translation/translation_keys.dart';

class PictureViewModelImpl extends PictureViewModel {
  final PictureNavigator pictureNavigator;


  PictureViewModelImpl({
    required this.pictureNavigator
  }) : super(_initialState);

  @override
  Apod get apod => throw UnimplementedError();

  static PictureScreenState get _initialState => PictureScreenState(
    toolbar: UIToolbar(
      title: LocaleKeys.picturePageTitle,
      hasBackButton: true,
    ),
    showLoading: false
  );

  @override
  onInit() {
  }

  @override
  void onIntent(PictureScreenIntent intent) {
    switch (intent) {
      case BackPictureScreenIntent():
        pictureNavigator.back();
    }
  }
}