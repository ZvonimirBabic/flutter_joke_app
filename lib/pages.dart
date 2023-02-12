import 'package:get/get.dart';
import 'package:joke_app/screens/home_screen/home_screen_bindings.dart';
import 'package:joke_app/screens/home_screen/home_screen_view.dart';
import 'package:joke_app/screens/splash_screen/splash_screen_bindings.dart';
import 'package:joke_app/screens/splash_screen/splash_screen_view.dart';

final pages = [
  GetPage(
    name: JokeAppRoutes.splashScreen,
    page: SplashScreen.new,
    binding: SplashScreenBindings(),
  ),
  GetPage(
    name: JokeAppRoutes.homeScreen,
    page: HomeScreen.new,
    binding: HomeScreenBindings(),
  ),
];

class JokeAppRoutes {
  static const homeScreen = '/home_screen';
  static const splashScreen = '/splash_screen';
}
