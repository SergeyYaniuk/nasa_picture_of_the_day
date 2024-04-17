
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';

import '../../core/entity/result.dart';

abstract interface class ApodInteractor {

  Future<Result<Apod>> fetchApod();
}