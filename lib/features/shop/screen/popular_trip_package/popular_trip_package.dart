import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/shop/screen/popular_trip_package/widget/custom_trip_package_card.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class PopularTripPackage extends StatelessWidget {
  const PopularTripPackage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            RIcons.backArrow,
                            height: 40,
                          ),
                        ),
                        const Text(
                          "Popular Package",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: RColores.black),
                        ),
                        const SizedBox()
                      ],
                    ),
                    const SizedBox(
                      height: RSizes.xl,
                    ),
                    const Text(
                      "All Popular Trip Package",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(
                  height: RSizes.md,
                ),
                ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return CustomTripPackageCard(
                        width: width,
                        imagePath: RImages.trip1,
                        location: RTexts.sunamganjResort,
                        date: "26 July-28 july",
                        ratings: "4.8",
                        joinedPerson: "24 Person Joined",
                        price: '\$820',
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
