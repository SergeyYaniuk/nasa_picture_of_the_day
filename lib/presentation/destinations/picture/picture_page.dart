import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_intent.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_screen_state.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/picture_view_model.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/picture/widgets/picture_page_body.dart';

import '../../base/page/base_page.dart';

@RoutePage()
class PicturePage extends StatelessWidget {

  final PictureScreen pictureScreen;

  const PicturePage({super.key, required this.pictureScreen});

  @override
  Widget build(BuildContext context) {
    return BasePage<PictureScreen, PictureScreenState, PictureViewModel>(
      hideDefaultLoading: true,
      viewModelProvider: pictureViewModelProvider,
      screen: pictureScreen,
      onAppBarBackPressed: (viewModel) => viewModel.onIntent(
        const BackPictureScreenIntent(),
      ),
      body: PicturePageBody(apod: pictureScreen.apod)
    );
  }
}