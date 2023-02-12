import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:joke_app/screens/home_screen/home_screen_controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) =>
      const Scaffold(body: Text('HomeScreenScaffold'));
}
