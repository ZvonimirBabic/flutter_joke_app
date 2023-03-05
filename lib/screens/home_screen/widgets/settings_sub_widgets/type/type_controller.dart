import 'package:get/get.dart';

import '../../../../../services/dio_service.dart';
import '../../../../../services/logger_service.dart';

class TypeController extends GetxController {
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
  final RxBool typeSingle = RxBool(true);
  final RxBool typeTwoPart = RxBool(true);

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
