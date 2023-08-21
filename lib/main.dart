import 'package:flutter/material.dart';
import 'package:profile_example/presentation/provider/navbar_provider.dart';
import 'package:profile_example/presentation/screens/home/home_screen.dart';
import 'package:profile_example/presentation/screens/settings/accessibility/accessibility_screeb.dart';
import 'package:profile_example/presentation/screens/settings/login_security/login_security_screen.dart';
import 'package:profile_example/presentation/screens/settings/payment_payout/payment_payout_screen.dart';
import 'package:profile_example/presentation/screens/settings/personal_info/personal_info_screen.dart';
import 'package:profile_example/presentation/screens/settings/taxes/taxes_screen.dart';
import 'package:profile_example/presentation/screens/settings/translation/translation_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        PersonalInfoScreen.routeName: (_) => const PersonalInfoScreen(),
        PaymentPayoutScreen.routeName: (_) => const PaymentPayoutScreen(),
        TaxesScreen.routeName: (_) => const TaxesScreen(),
        LoginSecurityScreen.routeName: (_) => const LoginSecurityScreen(),
        AccessibilityScreen.routeName: (_) => const AccessibilityScreen(),
        TranslationScreen.routeName: (_) => const TranslationScreen(),
      },
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavbarProvider())
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
