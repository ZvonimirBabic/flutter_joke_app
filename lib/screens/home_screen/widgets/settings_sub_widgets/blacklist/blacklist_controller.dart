import 'package:get/get.dart';

import '../../../../../services/dio_service.dart';
import '../../../../../services/logger_service.dart';

class BlacklistController extends GetxController {
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
  final RxBool blacklistNsfw = RxBool(false);
  final RxBool blacklistReligious = RxBool(false);
  final RxBool blacklistPolitical = RxBool(false);
  final RxBool blacklistRacist = RxBool(false);
  final RxBool blacklistSexist = RxBool(false);
  final RxBool blacklistExplicit = RxBool(false);

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
