import 'package:flutter/material.dart';
import 'package:profile_example/presentation/widget/text_grey.dart';

class BannerPlace extends StatelessWidget {
  const BannerPlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Airbnb your place",
                      style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    TextGrey("It´s simple to get set up and start earning", ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Image.network(
                "https://static.vecteezy.com/system/resources/previews/013/743/142/original/flat-design-house-icon-png.png",
                width: 80,
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
