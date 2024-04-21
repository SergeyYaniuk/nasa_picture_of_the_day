
import 'package:mocktail/mocktail.dart';
import 'package:nasa_picture_of_the_day/presentation/destinations/home/home_view_model.dart';

class FakeHomeViewModel extends HomeViewModel with Mock {
  FakeHomeViewModel(super.state);
}