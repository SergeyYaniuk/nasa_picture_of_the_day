import 'package:dio/dio.dart';
import 'package:nasa_picture_of_the_day/services/entity/features/remote/remote_apod.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service.dart';

class ApodRemoteServiceImpl implements ApodRemoteService {
  final Dio dio;

  ApodRemoteServiceImpl({required this.dio});

  @override
  Future<RemoteApod> fetchApod() async {
    final response = await dio.get(
      "planetary/apod"
    );
    return RemoteApod.fromJson(response.data as Map<String, dynamic>);
  }
}