import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/text_styles.dart';
import 'search_controller.dart';

class SearchWidget extends GetView<SearchController> {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  SearchController get controller => Get.put(
        SearchController(),
      );

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'search'.tr,
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          TextField(
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      );
}
