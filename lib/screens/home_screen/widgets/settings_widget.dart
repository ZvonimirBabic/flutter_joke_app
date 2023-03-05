import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import 'settings_sub_widgets/blacklist/blacklist_widget.dart';
import 'settings_sub_widgets/category/category_widget.dart';
import 'settings_sub_widgets/language/language_widget.dart';
import 'settings_sub_widgets/search/search_widget.dart';
import 'settings_sub_widgets/type/type_widget.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: JokeAppColors.jokeAppPinkDark,
            thickness: 3,
            indent: 35.w,
            endIndent: 35.w,
          ),
          const SearchWidget(),
          const CategoryWidget(),
          const LanguageWidget(),
          const BlacklistWidget(),
          const Flexible(
            child: TypeWidget(),
          ),
        ],
      );
}
