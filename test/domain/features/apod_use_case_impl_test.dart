import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case.dart';
import 'package:nasa_picture_of_the_day/domain/features/fetch_apod_use_case_impl.dart';
import 'package:nasa_picture_of_the_day/foundation/unit.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';

import '../../mocks/mocks.dart';
import '../../test_models/apod_models.dart';

void main() {
  late ApodRepository apodRepository;
  late FetchApodUseCase apodUseCase;

  setUp(() {
    apodRepository = MockApodRepository();
    apodUseCase = FetchApodUseCaseImpl(apodRepository: apodRepository);
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
      "Given fetch apod use case is called, When fetchApod is called, Then return Future<Apod>",
      () async {
        //Given
        final apodData = apod;
        when(() => apodRepository.fetchApod()).thenAnswer((_) => Future.value(apodData));

        //When
        final result = await apodUseCase.callInternal(unit);

        //Then
        expect(result, apodData);
        verify(() => apodRepository.fetchApod()).called(1);
  });
}
