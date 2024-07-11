import 'package:flutter/material.dart';

class CustomMassages extends StatelessWidget {
  final String massages;
  final Color? color;
  final double? width;
  const CustomMassages({
    super.key, required this.massages, this.color, this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(elevation: 0.5,color: color,child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
        child: Text(massages,textAlign: TextAlign.justify,),
      ),),
    );
  }
}