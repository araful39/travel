import 'package:flutter/material.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class CustomTripPackageCard extends StatelessWidget {
  final String imagePath;
  final String location;
  final String date;
  final String ratings;
  final String joinedPerson;
  final String price;
  final double width;

  const CustomTripPackageCard({
    super.key,
    required this.width,
    required this.imagePath,
    required this.location,
    required this.date,
    required this.ratings,
    required this.joinedPerson,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.1,
      child: SizedBox(
        width: width * 0.9,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(imagePath),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      location,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: RSizes.md,
                    ),
                    Card(
                      color: RColores.splashColor,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 5),
                        child: Text(
                        price,
                          style: const TextStyle(color: RColores.white),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      size: 15,
                    ),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),

                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    Text(
                      ratings,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 65,
                      child: Stack(
                        children: [
                          Positioned(
                            child: Image.asset(RIcons.person1),
                          ),
                          Positioned(
                            left: 15,
                            child: Image.asset(RIcons.person2),
                          ),
                          Positioned(
                            left: 30,
                            child: Image.asset(RIcons.person3),
                          ),
                        ],
                      ),
                    ),
                    Text(joinedPerson)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
