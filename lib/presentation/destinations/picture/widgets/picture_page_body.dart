import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nasa_picture_of_the_day/foundation/extensions/double_ext.dart';

import '../../../../domain/entity/features/apod.dart';

class PicturePageBody extends ConsumerWidget {
  final Apod? apod;

  const PicturePageBody({super.key, required this.apod});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return apod == null
        ? Container()
        : CachedNetworkImage(
            imageUrl: apod!.url,
            progressIndicatorBuilder: (context, url, progress) {
              return Text(
                "${progress.progress?.toPercents()} %",
                textAlign: TextAlign.center,
              );
            },
          );
  }
}
