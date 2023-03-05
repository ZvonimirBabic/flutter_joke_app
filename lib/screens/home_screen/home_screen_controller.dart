import 'package:get/get.dart';

import '../../models/joke.dart';
import '../../services/dio_service.dart';
import '../../services/hive_service.dart';
import '../../services/logger_service.dart';

class HomeScreenController extends GetxController with StateMixin<Joke> {
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
    change(
      null,
      status: RxStatus.loading(),
    );
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

  /// Fetches a random joke from an endpoint
  Future<void> fetchJoke() async {}

  Future<dynamic> parseJoke(networkResponse) async {
    /// Parse network response to a response object
    final response = Joke.fromJson(networkResponse);
    change(
      response,
      status: RxStatus.success(),
    );
  }
}
