import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/sizes.dart';

class CustomOnboarding extends StatelessWidget {
  final String imagePath;
  final String mainTitle;
  final String subTitle;
  final String vector;
  final String description;

  const CustomOnboarding({
    super.key,
    required this.imagePath,
    required this.mainTitle,
    required this.subTitle,
    required this.description,
    required this.vector,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Image.asset(imagePath),
          const SizedBox(
            height: RSizes.md,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20
            ),
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: mainTitle,
                        style: const TextStyle(
                            color: RColores.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Column(
                          children: [
                            Text(

                              subTitle,

                              style: const TextStyle(
                                  color: RColores.orangeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),

                            ),
                            Image.asset(vector)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: RSizes.md,
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),


        ],
      ),
    );
  }
}
