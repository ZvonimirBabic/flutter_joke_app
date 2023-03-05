import 'package:get/get.dart';

import '../../../../../services/dio_service.dart';
import '../../../../../services/logger_service.dart';

class CategoryController extends GetxController {
  ///
  /// DEPENDENCIES
  ///
  final logger = Get.find<LoggerService>();
  final dio = Get.find<DioService>();

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
  final RxBool categoryProgramming = RxBool(true);
  final RxBool categoryMisc = RxBool(true);
  final RxBool categoryDark = RxBool(true);
  final RxBool categoryPun = RxBool(true);
  final RxBool categorySpooky = RxBool(true);
  final RxBool categoryChristmas = RxBool(true);

  ///
  /// GETTERS
  ///

  ///
  /// SETTERS
  ///

  ///
  /// METHODS
  ///
}
