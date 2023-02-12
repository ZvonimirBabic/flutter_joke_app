import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:joke_app/constants/colors.dart';

///
/// This is used to initialize `Alice` and use it when necessary
/// Check more about `Alice` here: https://pub.dev/packages/alice
///

class SnackbarService extends GetxService {
  ///
  /// METHODS
  ///

  /// Snackbar shown if some success happens
  void showSuccessSnackbar({
    required String message,
    Color backgroundColor = JokeAppColors.white,
    IconData icon = Icons.check,
  }) =>
      Get.rawSnackbar(
        backgroundColor: backgroundColor,
        icon: Icon(
          icon,
          color: JokeAppColors.white,
        ),
        message: message,
        margin: EdgeInsets.all(32.r),
        padding: EdgeInsets.all(24.r),
        borderRadius: 16.r,
      );

  /// Snackbar shown if some error happens
  void showErrorSnackbar({
    required String message,
    Color backgroundColor = JokeAppColors.white,
    Duration duration = const Duration(seconds: 3),
    IconData icon = Icons.close,
  }) =>
      Get.rawSnackbar(
        backgroundColor: backgroundColor,
        duration: duration,
        icon: Icon(
          icon,
          color: JokeAppColors.white,
        ),
        message: message,
        margin: EdgeInsets.all(32.r),
        padding: EdgeInsets.all(24.r),
        borderRadius: 16.r,
      );
}
