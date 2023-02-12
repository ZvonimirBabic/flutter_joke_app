import 'package:get/get.dart';
import 'package:joke_app/screens/splash_screen/splash_screen_controller.dart';

class SplashScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      SplashScreenController(),
    );
  }
}
