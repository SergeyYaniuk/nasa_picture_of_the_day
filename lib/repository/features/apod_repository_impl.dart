
import 'dart:async';

import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_mapper.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';

import '../../services/features/remote/apod_remote_service.dart';

class ApodRepositoryImpl implements ApodRepository {

  ///
  ///Due to the fact that the project is being done as part of a test task and there are time constraints,
  ///some functionality is missing. In a real project here, we could also store data in a local database.
  ///The mapper would also do really useful work.
  ///

  final ApodRemoteService apodRemoteService;
  final ApodMapper apodMapper;


  ApodRepositoryImpl({
    required this.apodRemoteService,
    required this.apodMapper
  });

  @override
  Future<Apod> fetchApod() async {
    final remoteApod = await apodRemoteService.fetchApod();
    return apodMapper.map(remoteApod);
  }
}