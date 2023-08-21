import 'package:flutter/material.dart';

import '../../profile/widget/default_screen_option.dart';

class PaymentPayoutScreen extends StatelessWidget {
  const PaymentPayoutScreen({Key? key}) : super(key: key);
  static String routeName = '/payment-payout';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Payment and payouts");
  }
}

