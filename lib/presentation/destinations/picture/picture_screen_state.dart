
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entity/base/ui_toolbar.dart';
import '../../entity/screen/screen_state.dart';

part 'picture_screen_state.freezed.dart';

@freezed
class PictureScreenState with _$PictureScreenState implements ScreenState {
  factory PictureScreenState({
    required UIToolbar toolbar,
    required bool showLoading
  }) = _PictureScreenState;
}