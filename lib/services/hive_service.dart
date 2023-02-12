import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:joke_app/services/snackbar_service.dart';

import 'logger_service.dart';

class HiveService extends GetxService {
  ///
  /// VARIABLES
  ///
  ///
  late final hive = Hive;
  final logger = Get.find<LoggerService>();
  final snackbar = Get.find<SnackbarService>();

  ///
  /// METHODS
  ///
}
