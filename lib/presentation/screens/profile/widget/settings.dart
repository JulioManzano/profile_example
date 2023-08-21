import 'package:flutter/material.dart';
import 'package:profile_example/presentation/screens/profile/widget/default_screen_option.dart';
import 'package:profile_example/presentation/screens/profile/widget/option_setting.dart';
import 'package:profile_example/presentation/screens/settings/accessibility/accessibility_screeb.dart';
import 'package:profile_example/presentation/screens/settings/payment_payout/payment_payout_screen.dart';
import 'package:profile_example/presentation/screens/settings/personal_info/personal_info_screen.dart';
import 'package:profile_example/presentation/screens/settings/taxes/taxes_screen.dart';
import 'package:profile_example/presentation/screens/settings/translation/translation_screen.dart';

import '../../settings/login_security/login_security_screen.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(PersonalInfoScreen.routeName);
          },
          icon: Icons.person_2_outlined,
          title: "Person information",
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(PaymentPayoutScreen.routeName);
          },
          icon: Icons.payment,
          title: "Payments and payouts",
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(TaxesScreen.routeName);
          },
          icon: Icons.person_2_outlined,
          title: "Taxes",
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(LoginSecurityScreen.routeName);
          },
          icon: Icons.security,
          title: "Login & Security",
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(AccessibilityScreen.routeName);
          },
          icon: Icons.accessibility,
          title: "Accessibility",
        ),
        OptionsSetting(
          onTap: () {
            openDefaultScreen(TranslationScreen.routeName);
          },
          icon: Icons.g_translate_outlined,
          title: "Translation",
        ),
      ],
    );
  }

  void openDefaultScreen(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }
}
