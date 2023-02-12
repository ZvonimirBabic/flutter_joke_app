import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joke_app/services/alice_service.dart';
import 'package:joke_app/services/dio_service.dart';
import 'package:joke_app/services/hive_service.dart';
import 'package:joke_app/services/logger_service.dart';
import 'package:joke_app/services/snackbar_service.dart';
import 'package:joke_app/theme.dart';

import 'localization.dart';
import 'pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize [Logger] and [Alice]
  Get
    ..put(
      LoggerService(),
    )
    ..put(
      AliceService(),
    )
    ..put(
      SnackbarService(),
    )
    ..put(
      HiveService(),
    );
  runApp(
    JokeApp(),
  );
}

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      DioService(),
    );
  }
}

class JokeApp extends StatelessWidget {
  JokeApp({super.key});

  final logger = Get.find<LoggerService>();
  final alice = Get.find<AliceService>().alice;

  /// Logs everything using [Logger] package
  void loggingWithLogger(String text, {bool isError = false}) =>
      isError ? logger.e(text) : logger.d(text);

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
        /// Size of `Pixel XL`, device the designer uses in his designs on Figma
        designSize: const Size(412, 732),
        builder: (_, __) => GetMaterialApp(
          onGenerateTitle: (_) => 'appName'.tr,
          initialRoute: JokeAppRoutes.splashScreen,
          initialBinding: InitialBinding(),
          getPages: pages,
          logWriterCallback: loggingWithLogger,
          theme: lightTheme,
          locale: Localization.locale,
          fallbackLocale: Localization.fallbackLocale,
          translations: Localization(),
        ),
      );
}
