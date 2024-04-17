
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case.dart';
import 'package:nasa_picture_of_the_day/foundation/unit.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';

class FetchApodUseCaseImpl extends FetchApodUseCase {

  final ApodRepository apodRepository;


  FetchApodUseCaseImpl({required this.apodRepository});

  @override
  Future<Apod> callInternal(Unit param) async {
    final result = await apodRepository.fetchApod();
    return result;
  }
}