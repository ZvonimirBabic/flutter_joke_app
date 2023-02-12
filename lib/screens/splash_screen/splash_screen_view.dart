import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/screens/splash_screen/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Text('SplashScreenScaffold'));
}
