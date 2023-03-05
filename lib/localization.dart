import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization extends Translations {
  static Locale? get locale => Get.deviceLocale;

  static const fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
      };

  /// English strings
  final en = {
    'appName': 'Flutter Joke app',
    'fetchJoke': 'New joke',
    'search': 'Search:',
    'emptyJoke':
        'There is no joke at the moment, please press the button at the bottom of the screen',
    'fatalError':
        'Sorry there has been an issue. Read this short joke while we are resolving the issue. \n How do you tell the difference between a crocodile and an alligator? You will see one later and one in a while.',

    /// Settings
    'including': 'Including',
    'excluding': 'Excluding',

    /// Language
    'language': 'Language',

    /// Categories
    'category': 'Category',
    'programming': 'Programming',
    'misc': 'Misc',
    'dark': 'Dark',
    'pun': 'Pun',
    'spooky': 'Spooky',
    'christmas': 'Christmas',

    /// Blacklist
    'blacklist': 'Blacklist',
    'nsfw': 'NSFW',
    'religious': 'Religious',
    'political': 'Political',
    'racist': 'Racist',
    'sexist': 'Sexist',
    'explicit': 'Explicit',

    /// Type
    'type': 'Type',
    'single': 'Single',
    'twoPart': 'Two part',
  };
}
