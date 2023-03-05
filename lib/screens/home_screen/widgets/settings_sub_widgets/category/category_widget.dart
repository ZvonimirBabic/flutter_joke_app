import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/text_styles.dart';

import '../../checkbox_widget.dart';
import 'category_controller.dart';

class CategoryWidget extends GetView<CategoryController> {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  CategoryController get controller => Get.put(
        CategoryController(),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${'category'.tr} - ${'including'.tr}',
          style: JokeAppTextStyles.body,
          textAlign: TextAlign.start,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categoryProgramming.value = value ?? false;
                  },
                  text: 'programming'.tr,
                  value: controller.categoryProgramming,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categoryMisc.value = value ?? false;
                  },
                  text: 'misc'.tr,
                  value: controller.categoryMisc,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categoryDark.value = value ?? false;
                  },
                  text: 'dark'.tr,
                  value: controller.categoryDark,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categoryPun.value = value ?? false;
                  },
                  text: 'pun'.tr,
                  value: controller.categoryPun,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categorySpooky.value = value ?? false;
                  },
                  text: 'spooky'.tr,
                  value: controller.categorySpooky,
                ),
                CheckboxWidget(
                  onChanged: (value) {
                    controller.categoryChristmas.value = value ?? false;
                  },
                  text: 'christmas'.tr,
                  value: controller.categoryChristmas,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
