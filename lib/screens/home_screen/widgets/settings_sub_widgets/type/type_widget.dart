import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/text_styles.dart';
import '../../checkbox_widget.dart';
import 'type_controller.dart';

class TypeWidget extends GetView<TypeController> {
  const TypeWidget({Key? key}) : super(key: key);

  @override
  TypeController get controller => Get.put(
        TypeController(),
      );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${'type'.tr} - ${'including'.tr}',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CheckboxWidget(
                  onChanged: (value) {
                    controller.typeSingle.value = value ?? false;
                  },
                  text: 'single'.tr,
                  value: controller.typeSingle,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.typeTwoPart.value = value ?? false;
                  },
                  text: 'twoPart'.tr,
                  value: controller.typeTwoPart,
                ),
              ],
            ),
          ),
        ],
      );
}
