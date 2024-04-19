
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nasa_picture_of_the_day/presentation/base/view_model_provider/view_model_provider.dart';

import '../../entity/screen/screen.dart';
import '../../entity/screen/screen_state.dart';
import 'base_view_model.dart';

extension ViewModelProviderExt on BuildContext {
  AutoDisposeStateNotifierProvider<VIEW_MODEL, SCREEN_STATE> viewModelProvider<
  VIEW_MODEL extends BaseViewModel<Screen, SCREEN_STATE>,
  SCREEN_STATE extends ScreenState>() {
    return ViewModelProvider.of<VIEW_MODEL, SCREEN_STATE>(this).provider;
  }

  VIEW_MODEL viewModel<VIEW_MODEL extends BaseViewModel<Screen, SCREEN_STATE>,
  SCREEN_STATE extends ScreenState>(WidgetRef ref) {
    return ref.watch(viewModelProvider<VIEW_MODEL, SCREEN_STATE>().notifier);
  }
}