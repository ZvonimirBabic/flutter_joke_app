import 'package:get/get.dart';

import 'home_screen_controller.dart';

class HomeScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(
      HomeScreenController(),
    );
  }
}
