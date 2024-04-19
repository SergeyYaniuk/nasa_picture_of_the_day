
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';

import '../../entity/base/ui_toolbar.dart';
import '../../entity/screen/screen_state.dart';

part 'home_screen_state.freezed.dart';

@freezed
class HomeScreenState with _$HomeScreenState implements ScreenState {
  const factory HomeScreenState({
    required UIToolbar toolbar,
    required bool showLoading,
    required Apod? apod,
  }) = _HomeScreenState;
}