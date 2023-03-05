import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/colors.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../constants/text_styles.dart';
import '../../../models/joke.dart';
import '../home_screen_controller.dart';

class JokeWidget extends GetView<HomeScreenController> {
  const JokeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (joke) {
        if (joke?.joke != null) {
          return OnePartJoke(joke!);
        }
        if (joke?.setup != null && joke?.delivery != null) {
          return TwoPartJoke(joke!);
        }
        return Text(
          'fatalError'.tr,
          style: JokeAppTextStyles.error,
        );
      },
      onError: (error) => Container(),
      onEmpty: Text(
        'emptyJoke'.tr,
        style: JokeAppTextStyles.error,
      ),
      onLoading: LoadingAnimationWidget.twistingDots(
        size: 66,
        leftDotColor: JokeAppColors.jokeAppPinkDark,
        rightDotColor: JokeAppColors.jokeAppPinkLight,
      ),
    );
  }
}

class OnePartJoke extends StatelessWidget {
  const OnePartJoke(this.joke, {Key? key}) : super(key: key);
  final Joke joke;
  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutBack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${'joke'.tr}:',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Text(
            joke.joke ?? '',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.justify,
          ),
          Divider(
            thickness: 3,
            indent: 40.w,
            endIndent: 40.w,
          ),
        ],
      ),
    );
  }
}

class TwoPartJoke extends StatelessWidget {
  const TwoPartJoke(this.joke, {Key? key}) : super(key: key);
  final Joke joke;

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOutBack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '${'question'.tr}:',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Text(
            joke.setup ?? '',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            '${'answer'.tr}:',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Text(
            joke.delivery ?? '',
            style: JokeAppTextStyles.body,
            textAlign: TextAlign.start,
          ),
          Divider(
            thickness: 3,
            indent: 40.w,
            endIndent: 40.w,
          ),
        ],
      ),
    );
  }
}
