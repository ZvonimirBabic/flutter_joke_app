import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/colors.dart';
import 'package:joke_app/screens/home_screen/home_screen_controller.dart';
import 'package:joke_app/screens/home_screen/widgets/joke_widget.dart';
import 'package:joke_app/screens/home_screen/widgets/settings_widget.dart';

import '../../constants/text_styles.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: JokeWidget(),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SettingsWidget(),
                          MaterialButton(
                            onPressed: controller.fetchJoke,
                            color: JokeAppColors.jokeAppPinkDark,
                            child: Text(
                              'fetchJoke'.tr,
                              style: JokeAppTextStyles.button,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
