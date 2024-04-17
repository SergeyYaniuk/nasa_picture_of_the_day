
import '../../domain/entity/features/apod.dart';

abstract interface class ApodRepository {

  Future<Apod> fetchApod();
}