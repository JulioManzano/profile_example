import 'package:flutter/material.dart';
import 'package:profile_example/presentation/screens/profile/widget/default_screen_option.dart';

class AccessibilityScreen extends StatelessWidget {
  const AccessibilityScreen({Key? key}) : super(key: key);
  static String routeName = '/accessibility';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Accessibility");
  }
}

