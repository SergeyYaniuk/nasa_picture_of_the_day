## (Flutter project for a test assignment.)

Main task: Display NASA's Astronomy Picture of the Day.

The application consists of two screens:

Main screen: Displays the image and title.
Second screen: Displays the image in full screen.
Fade animation between screens.

The project was developed using the MVVM architectural pattern and the following technologies:

AutoRoute
DIO
EasyLocalization
Riverpod
Freezed
GetIt
And others

Due to time constraints, there is still much to improve in the project, starting with data manipulation, 
adding mappers, better error handling, widget reuse, and so on.

The project also needs to be configured for native Android and iOS branches by adding flavors to native code.

To run the project on the web, use the following script:

```bash
flutter run -d chrome --web-renderer html