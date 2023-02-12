import 'package:get/get.dart';

import '../../pages.dart';
import '../../services/dio_service.dart';
import '../../services/hive_service.dart';
import '../../services/logger_service.dart';

class SplashScreenController extends GetxController {
  ///
  /// DEPENDENCIES
  ///

  final logger = Get.find<LoggerService>();
  final dio = Get.find<DioService>();
  final hive = Get.find<HiveService>();

  ///
  /// INIT
  ///

  @override
  Future<void> onInit() async {
    super.onInit();

    /// Simulate extensive loading
    await Future.delayed(const Duration(seconds: 3), () {});
    navigateAfterInit();
  }

  ///
  /// VARIABLES
  ///

  ///
  /// GETTER
  ///

  ///
  /// SETTER
  ///

  ///
  /// METHODS
  ///
  void navigateAfterInit() {
    Get.offAllNamed(JokeAppRoutes.homeScreen);
  }
}
