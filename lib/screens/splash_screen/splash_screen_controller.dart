import 'package:get/get.dart';

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
}
