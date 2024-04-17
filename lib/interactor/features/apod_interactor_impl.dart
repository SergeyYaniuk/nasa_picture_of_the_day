import 'package:nasa_picture_of_the_day/core/entity/result.dart';
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case.dart';
import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor.dart';

import '../../foundation/unit.dart';

///
/// The interactor layer is responsible for transforming and manipulating data,
/// for example, list sorting.
///

class ApodInteractorImpl implements ApodInteractor {
  final FetchApodUseCase fetchApodUseCase;

  ApodInteractorImpl({required this.fetchApodUseCase});

  @override
  Future<Result<Apod>> fetchApod() async {
    return await fetchApodUseCase(param: unit);
  }
}
