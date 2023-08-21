import 'package:flutter/material.dart';
import 'package:profile_example/presentation/widget/text_grey.dart';

import 'profile_photo.dart';

class ShowProfileButton extends StatelessWidget {
  const ShowProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModal(context);
      },
      child: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            const ProfilePhoto(),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ma",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const TextGrey("Show profile"),
              ],
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right))
          ],
        ),
      ),
    );
  }

  void showModal(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          width: width,
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ProfilePhoto(),
                const Text('Ma', style: TextStyle(color: Colors.pink), ),
                const Spacer(),
                ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
