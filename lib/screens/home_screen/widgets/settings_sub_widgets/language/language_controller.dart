import 'package:get/get.dart';

import '../../../../../services/dio_service.dart';
import '../../../../../services/logger_service.dart';

class LanguageController extends GetxController {
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
  final RxString language = RxString('en');

  ///
  /// GETTERS
  ///

  ///
  /// SETTERS
  ///
  set changeLanguage(String selectedLanguage) =>
      language.value = selectedLanguage;

  ///
  /// METHODS
  ///
}
