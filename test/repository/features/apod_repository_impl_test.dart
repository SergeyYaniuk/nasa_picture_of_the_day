import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_mapper.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository_impl.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service.dart';

import '../../mocks/mocks.dart';
import '../../test_models/apod_models.dart';
import '../../test_models/apod_remote_models.dart';

void main() {
  late ApodRemoteService apodRemoteService;
  late ApodMapper apodMapper;

  late ApodRepository apodRepository;

  setUp(() {
    apodRemoteService = MockApodRemoteService();
    apodMapper = MockApodMapper();

    apodRepository = ApodRepositoryImpl(
        apodRemoteService: apodRemoteService, apodMapper: apodMapper);
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
      "Given remote apod service and apod mapper. When fetchApod is called, Then return Future<Apod>",
      () async {
        //Given
        final remoteData = apodRemote;
        final domainData = apod;
        when(() => apodRemoteService.fetchApod()).thenAnswer((_) => Future.value(remoteData));
        when(() => apodMapper.map(remoteData)).thenReturn(domainData);

        //When
        final result = await apodRepository.fetchApod();

        //Then
        verify(() => apodRemoteService.fetchApod()).called(1);
        verify(() => apodMapper.map(remoteData)).called(1);
        expect(result.title, domainData.title);
        expect(result.url, domainData.url);
        expect(result.hdurl, domainData.hdurl);
        expect(result.serviceVersion, domainData.serviceVersion);
        expect(result.mediaType, domainData.mediaType);
        expect(result.explanation, domainData.explanation);
        expect(result.date, domainData.date);
      });
}
