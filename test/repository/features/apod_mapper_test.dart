
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/domain/entity/features/apod.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_mapper.dart';

import '../../test_models/apod_remote_models.dart';

void main() {
  late ApodMapper apodMapper;

  setUp(() {
    apodMapper = ApodMapperImpl();
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
    "Given remote apod data, when map called, then apod data returned",
      () {
        //Given
        final ar = apodRemote;

        //When
        final result = apodMapper.map(ar);

        //Then
        expect(result, isA<Apod>());
        expect(result.title, ar.title);
        expect(result.url, ar.url);
        expect(result.hdurl, ar.hdurl);
        expect(result.serviceVersion, ar.serviceVersion);
        expect(result.mediaType, ar.mediaType);
        expect(result.explanation, ar.explanation);
        expect(result.date, ar.date);
      },
  );
}