import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/text_styles.dart';
import '../home_screen_controller.dart';

class CheckboxWidget extends GetView<HomeScreenController> {
  const CheckboxWidget(
      {required this.value,
      required this.text,
      required this.onChanged,
      Key? key})
      : super(key: key);

  final void Function(bool? value) onChanged;
  final String text;
  final RxBool value;
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Checkbox(
                value: value.value,
                onChanged: onChanged,
              ),
            ),
            Text(
              text,
              style: JokeAppTextStyles.bodySmall,
            ),
          ],
        ),
      );
}
