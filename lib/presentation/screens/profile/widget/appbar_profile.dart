import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget {
  const AppBarProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Profile" , style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold
            ),),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none_outlined,
              ),
            )
          ],
        )
      ],
    );
  }
}
