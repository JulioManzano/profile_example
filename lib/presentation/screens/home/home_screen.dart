import 'package:flutter/material.dart';
import 'package:profile_example/presentation/screens/home/widget/bottom_navbar.dart';
import 'package:provider/provider.dart';

import '../../provider/navbar_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var navbarP = Provider.of<NavbarProvider>(context);

    return Scaffold(
      body: navbarP.currentScreen,
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
