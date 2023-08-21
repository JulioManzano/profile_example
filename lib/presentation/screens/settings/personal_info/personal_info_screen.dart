import 'package:flutter/material.dart';

import '../../profile/widget/default_screen_option.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({Key? key}) : super(key: key);
  static String routeName = '/personal-info';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Personal information");
  }
}

