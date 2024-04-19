
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import '../../base/intent/intent_handler.dart';
import '../../base/view_model_provider/base_view_model.dart';
import 'home_screen.dart';
import 'home_screen_intent.dart';
import 'home_screen_state.dart';

final homeViewModelProvider =
StateNotifierProvider.autoDispose<HomeViewModel, HomeScreenState>(
        (ref) => GetIt.I.get());

abstract class HomeViewModel extends BaseViewModel<HomeScreen, HomeScreenState>
    implements IntentHandler<HomeScreenIntent> {
  HomeViewModel(super.state);
}