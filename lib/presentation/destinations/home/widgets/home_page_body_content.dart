import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/foundation/extensions/double_ext.dart';

class HomePageBodyContent extends StatelessWidget {
  final Apod? apod;
  final Function() onTap;

  const HomePageBodyContent({
    super.key,
    required this.apod,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    if (apod == null) {
      return Container();
    } else {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the column vertically
        children: [
          GestureDetector(
            onTap: onTap,
            child: CachedNetworkImage(
              imageUrl: apod!.url,
              height: MediaQuery.of(context).size.height / 2, // Set image height to half screen
              progressIndicatorBuilder: (context, url, progress) {
                return Text(
                  "${progress.progress.toPercents()} %",
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            // Add some padding around the text
            child: Text(
              apod!.title,
              textAlign: TextAlign.center, // Center align the text
            ),
          ),
        ],
      );
    }
  }
}
