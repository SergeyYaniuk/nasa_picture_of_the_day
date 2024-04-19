
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../home_screen_intent.dart';
import '../home_view_model.dart';
import 'home_page_body_content.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.watch(homeViewModelProvider.notifier);
    final apod = ref.watch(
      homeViewModelProvider.select((value) => value.apod),
    );

    return HomePageBodyContent(
      apod: apod,
      onTap: () {
        homeViewModel.onIntent(PictureHomeScreenIntent(apod: apod));
      },
    );
  }
}