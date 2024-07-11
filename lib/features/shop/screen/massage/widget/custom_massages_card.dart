import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class CustomMassagesCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final String massages;
  final String time;
  const CustomMassagesCard({
    super.key, required this.imagePath, required this.name, required this.massages, required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 60,

        decoration: BoxDecoration(
            color: RColores.white,

            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imagePath,height: 50,),
            const SizedBox(
              width: RSizes.md,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(name,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      width: RSizes.xl,
                    ),
                    Row(
                      children: [
                        Image.asset(RIcons.check,height: 20,),
                        Text(time)
                      ],
                    ),

                  ],
                ),
                Text(massages)
              ],
            ),

          ],
        ),
      ),
    );
  }
}