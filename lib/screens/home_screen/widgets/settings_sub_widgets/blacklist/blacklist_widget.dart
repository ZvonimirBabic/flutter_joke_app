import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/text_styles.dart';

import '../../checkbox_widget.dart';
import 'blacklist_controller.dart';

class BlacklistWidget extends GetView<BlacklistController> {
  const BlacklistWidget({Key? key}) : super(key: key);

  @override
  BlacklistController get controller => Get.put(
        BlacklistController(),
      );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${'blacklist'.tr} - ${'excluding'.tr}',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SingleChildScrollView(
              clipBehavior: Clip.none,
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistNsfw.value = value ?? false;
                    },
                    text: 'nsfw'.tr,
                    value: controller.blacklistNsfw,
                  ),
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistReligious.value = value ?? false;
                    },
                    text: 'religious'.tr,
                    value: controller.blacklistReligious,
                  ),
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistPolitical.value = value ?? false;
                    },
                    text: 'political'.tr,
                    value: controller.blacklistPolitical,
                  ),
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistRacist.value = value ?? false;
                    },
                    text: 'racist'.tr,
                    value: controller.blacklistRacist,
                  ),
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistSexist.value = value ?? false;
                    },
                    text: 'sexist'.tr,
                    value: controller.blacklistSexist,
                  ),
                  CheckboxWidget(
                    onChanged: (value) {
                      controller.blacklistExplicit.value = value ?? false;
                    },
                    text: 'explicit'.tr,
                    value: controller.blacklistExplicit,
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
