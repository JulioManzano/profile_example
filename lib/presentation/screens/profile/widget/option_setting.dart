import 'package:flutter/material.dart';
import 'package:profile_example/presentation/screens/profile/widget/divider_custom.dart';

class OptionsSetting extends StatelessWidget {
  const OptionsSetting({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final VoidCallback onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 8),
                Text(title),
                const Spacer(),
                IconButton(onPressed: onTap, icon: const Icon(Icons.chevron_right))
              ],
            ),
            const DividerCustom()
          ],
        ),
      ),
    );

  }
}
