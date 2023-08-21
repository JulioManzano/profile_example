import 'package:flutter/material.dart';

import '../../profile/widget/default_screen_option.dart';

class TranslationScreen extends StatelessWidget {
  const TranslationScreen({Key? key}) : super(key: key);
  static String routeName = '/translation';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Translation");
  }
}

