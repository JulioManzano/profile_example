import 'package:flutter/material.dart';

class TextGrey extends StatelessWidget {
  const TextGrey( this.text, {Key? key, }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey.shade600),
    );
  }
}

