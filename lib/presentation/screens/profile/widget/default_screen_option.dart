import 'package:flutter/material.dart';

class DefaultScreenOption extends StatelessWidget {
  const DefaultScreenOption({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

