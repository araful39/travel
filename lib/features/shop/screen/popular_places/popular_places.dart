import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/data/best_destination/best_destination_list.dart';
import 'package:travel/features/shop/screen/details/details.dart';
import 'package:travel/features/shop/screen/popular_places/widget/popular_places_card.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/sizes.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              size: 20,
                            ),
                          ),
                          const Text(
                            "Popular Places",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: RColores.black),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: RSizes.xl,
                    ),
                    const CustomHeading(
                        title: "All Popular Places", subTittleButton: false),
                    const SizedBox(
                      height: RSizes.md,
                    ),
                  ],
                ),
                GridView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const PageScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: bestDestinations.length,
                    padding: EdgeInsets.zero,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            childAspectRatio: 0.9,
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(
                            () => Details(
                                imageUrl: bestDestinations[index].imagePath,
                                resortName: bestDestinations[index].resortName,
                                location: bestDestinations[index].location,
                                ratings: bestDestinations[index].ratings,
                                amount: bestDestinations[index].amount, imageList: bestDestinations[index].imageList,),
                          );
                        },
                        child: PopularPlacesCard(
                            imagePath: bestDestinations[index].imagePath,
                            resortName: bestDestinations[index].resortName,
                            location: bestDestinations[index].location,
                            ratings: bestDestinations[index].ratings,
                            amount: bestDestinations[index].amount),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
