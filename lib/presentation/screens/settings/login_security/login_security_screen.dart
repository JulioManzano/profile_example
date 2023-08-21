import 'package:flutter/material.dart';

import '../../profile/widget/default_screen_option.dart';

class LoginSecurityScreen extends StatelessWidget {
  const LoginSecurityScreen({Key? key}) : super(key: key);
  static String routeName = '/login-security';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Login & Security");
  }
}

