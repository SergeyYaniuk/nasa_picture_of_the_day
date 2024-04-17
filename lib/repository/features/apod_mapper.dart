import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/services/entity/features/remote/remote_apod.dart';

abstract interface class ApodMapper {
  Apod map(RemoteApod remote);
}

class ApodMapperImpl extends ApodMapper {
  @override
  Apod map(RemoteApod remote) {
    return Apod(
        date: remote.date,
        explanation: remote.explanation,
        hdurl: remote.hdurl,
        mediaType: remote.mediaType,
        serviceVersion: remote.serviceVersion,
        title: remote.title,
        url: remote.url);
  }
}
