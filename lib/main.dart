import 'package:flutter/material.dart';
import 'package:profile_example/presentation/provider/navbar_provider.dart';
import 'package:profile_example/presentation/screens/home/home_screen.dart';
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
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavbarProvider())
        ],
        child: const HomeScreen(),
      ),
    );
  }
}
