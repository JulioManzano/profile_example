import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(40),
      ),
      child: const Icon(
        Icons.person,
        size: 50,
      ),
    );
  }
}

