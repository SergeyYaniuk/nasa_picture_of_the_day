
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/interactor/features/apod_interactor.dart';
import 'package:nasa_picture_of_the_day/navigation/features/home/home_navigator.dart';
import 'package:nasa_picture_of_the_day/presentation/base/intent/intent_handler.dart';
import 'package:nasa_picture_of_the_day/presentation/entity/intent/intent.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_mapper.dart';
import 'package:nasa_picture_of_the_day/repository/features/apod_repository.dart';
import 'package:nasa_picture_of_the_day/services/features/remote/apod_remote_service.dart';

//Service
class MockApodRemoteService extends Mock implements ApodRemoteService{}

//Mappers
class MockApodMapper extends Mock implements ApodMapper{}

// Repositories
class MockApodRepository extends Mock implements ApodRepository {}

//Interactors
class MockApodInteractor extends Mock implements ApodInteractor{}

// Navigator
class MockHomeNavigator extends Mock implements HomeNavigator {}

// Intent Handler
class MockIntentHandler<T extends BaseIntent> extends Mock
    implements IntentHandler<T> {}