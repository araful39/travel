import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/data/best_destination/best_destination_list.dart';
import 'package:travel/features/personalization/screen/notification/notification.dart';
import 'package:travel/features/shop/controller/home_controller.dart';
import 'package:travel/features/shop/screen/details/details.dart';
import 'package:travel/common/widgets/best_destincation_card/best_destination_card.dart';
import 'package:travel/features/shop/screen/popular_places/popular_places.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          controller.selectedImage.value.isEmpty
                              ? const Image(image: AssetImage(RIcons.person))
                              : CircleAvatar(
                                  radius: 30,
                                  backgroundImage: FileImage(
                                    File(controller.selectedImage.value),
                                  )),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        controller.nameController.value,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                        onTap: () {
                          Get.to(const NotificationR());
                        },
                        child: Image.asset(RIcons.notification)),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  RTexts.homeTittle,
                  style: TextStyle(fontSize: 30),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: RTexts.homeTittle2,
                        style: TextStyle(
                            color: RColores.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Column(
                          children: [
                            const Text(
                              RTexts.homeTittle3,
                              style: TextStyle(
                                  color: RColores.orangeColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            Image.asset(RIcons.onBoardV1)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomHeading(
              title: RTexts.bestDestination,
              subTittleButton: true,
              onPress: () {
                Get.to(const PopularPlaces());
              },
            ),
            CarouselSlider.builder(
              itemCount: 2,
              itemBuilder:
                  (BuildContext context, int index, int pageViewIndex) =>
                      Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Get.to(
                      () => Details(
                        imageUrl: bestDestinations[index].imagePath,
                        resortName: bestDestinations[index].resortName,
                        location: bestDestinations[index].location,
                        ratings: bestDestinations[index].ratings,
                        amount: bestDestinations[index].amount,
                        imageList: bestDestinations[index].imageList,
                      ),
                    );
                  },
                  child: BestDestinationCard(
                      index: index,
                      controller: controller,
                      imageUrl: bestDestinations[index].imagePath,
                      resortName: bestDestinations[index].resortName,
                      location: bestDestinations[index].location,
                      ratings: bestDestinations[index].ratings),
                ),
              ),
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: const Duration(seconds: 1),
                  height: Get.height * 0.45),
            )
          ],
        ),
      )),
    );
  }
}
