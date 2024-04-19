
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nasa_picture_of_the_day/presentation/base/view_model_provider/view_model_provider_ext.dart';

import '../../../entity/screen/screen.dart';
import '../../../entity/screen/screen_state.dart';
import '../../view_model_provider/base_view_model.dart';

class AppBarTitle<VIEW_MODEL extends BaseViewModel<Screen, SCREEN_STATE>,
SCREEN_STATE extends ScreenState> extends ConsumerWidget {
  const AppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final title = ref.watch(
      context
          .viewModelProvider<VIEW_MODEL, SCREEN_STATE>()
          .select((state) => state.toolbar.title),
    );
    return Text(
      context.tr(title),
      overflow: TextOverflow.ellipsis,
    );
  }
}