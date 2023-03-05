import 'package:get/get.dart';

import '../../../../../services/dio_service.dart';
import '../../../../../services/logger_service.dart';

class SearchController extends GetxController {
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
  final RxnString _test = RxnString();

  ///
  /// GETTERS
  ///
  String? get test => _test.value;

  ///
  /// SETTERS
  ///
  set test(String? setToThis) => _test.value = setToThis;

  ///
  /// METHODS
  ///
}
