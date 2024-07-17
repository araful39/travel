import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';

class PointCard extends StatelessWidget {
  final String name;
  final double point;
  const PointCard({
    super.key, required this.name, required this.point,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
         point.toString(),
          style: TextStyle(
              color: RColores.splashColor, fontSize: 15),
        )
      ],
    );
  }
}