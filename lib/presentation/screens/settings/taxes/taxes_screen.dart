import 'package:flutter/material.dart';

import '../../profile/widget/default_screen_option.dart';

class TaxesScreen extends StatelessWidget {
  const TaxesScreen({Key? key}) : super(key: key);
  static String routeName = '/taxes';

  @override
  Widget build(BuildContext context) {
    return const DefaultScreenOption(title: "Taxes");
  }
}

