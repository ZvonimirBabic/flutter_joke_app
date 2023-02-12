import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/screens/splash_screen/splash_screen_controller.dart';

import '../../constants/assets.dart';
import '../../constants/colors.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: JokeAppColors.jokeAppPinkBackground,
        body: Center(
          child: Image.asset(JokeAppAssets.jesterAnimation),
        ),
      );
}
