import 'package:flutter/material.dart';
import 'widget/appbar_profile.dart';
import 'widget/banner_place.dart';
import 'widget/divider_custom.dart';
import 'widget/settings.dart';
import 'widget/show_profile_buttoon.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            AppBarProfile(),
            SizedBox(height: 20),
            ShowProfileButton(),
            SizedBox(height: 8),
            DividerCustom(),
            SizedBox(height: 20),
            BannerPlace(),
            SizedBox(height: 20),
            Settings(),
          ],
        ),
      ),
    );
  }
}
