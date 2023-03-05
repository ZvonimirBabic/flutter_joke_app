import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/text_styles.dart';

import 'language_controller.dart';

class LanguageWidget extends GetView<LanguageController> {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  LanguageController get controller => Get.put(
        LanguageController(),
      );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'language'.tr,
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Obx(
            () => DropdownButton(
              underline: const Offstage(),
              value: controller.language.value,
              items: const <DropdownMenuItem>[
                DropdownMenuItem<String>(
                  value: 'cs',
                  child: Text('cs - Czech'),
                ),
                DropdownMenuItem<String>(
                  value: 'de',
                  child: Text('de - German'),
                ),
                DropdownMenuItem<String>(
                  value: 'en',
                  child: Text('en - English'),
                ),
                DropdownMenuItem<String>(
                  value: 'es',
                  child: Text('es - Spanish'),
                ),
                DropdownMenuItem<String>(
                  value: 'fr',
                  child: Text('fr - French'),
                ),
                DropdownMenuItem<String>(
                  value: 'pt',
                  child: Text('pt - Portuguese'),
                ),
              ],
              onChanged: (value) => controller.changeLanguage = value,
            ),
          ),
        ],
      );
}
