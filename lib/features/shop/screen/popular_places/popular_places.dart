import 'package:flutter/material.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomHeading(title: "All Popular Places", subTittleButton: false),

        ],
      ),
    );
  }
}
