import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/data/best_destination/best_destination_list.dart';
import 'package:travel/features/personalization/screen/notification/notification.dart';
import 'package:travel/features/shop/controller/home_controller.dart';
import 'package:travel/features/shop/screen/details/details.dart';
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
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Obx(
                        () => Column(
                          children: [
                            controller.selectedImage.isEmpty
                                ? const Image(image: AssetImage(RIcons.person))
                                : CircleAvatar(
                                    radius: 30,
                                    backgroundImage: FileImage(
                                      File(controller
                                          .selectedImage.value),
                                    )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Obx(() => Text(controller.name.value,style: const TextStyle(fontSize: 20),)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: InkWell(
                        onTap:(){

                       Get.to( const NotificationR());
                       print("Ok");
                        },
                        child: Image.asset(RIcons.notification)),
                  )
                ],
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
                  Get.to(() => const PopularPlaces());
                },
              ),
              SizedBox(
                height: Get.height * 0.52,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: bestDestinationList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Get.to(() => const Details());
                          },
                          child: Card(
                            child: SizedBox(
                              width: Get.width * 0.7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          bestDestinationList[index].imagePath),
                                      Positioned(
                                          right: 10,
                                          top: 10,
                                          child: Obx(() => InkWell(
                                              onTap:
                                                  controller.addToBookMark,
                                              child: Image.asset(
                                                RIcons.bookmark,
                                                color: controller
                                                            .isBookmark.value ==
                                                        true
                                                    ? RColores.orangeColor
                                                    : null,
                                              )))),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              bestDestinationList[index]
                                                  .resortName,
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Row(
                                              children: [
                                                const Icon(
                                                  Icons.star,
                                                  color: Colors.orange,
                                                  size: 15,
                                                ),
                                                Text(bestDestinationList[index]
                                                    .ratings),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                const Icon(
                                                    Icons.location_on_outlined),
                                                Text(bestDestinationList[index]
                                                    .location),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 30,
                                              width: 65,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    child: Image.asset(
                                                        RIcons.person1),
                                                  ),
                                                  Positioned(
                                                    left: 15,
                                                    child: Image.asset(
                                                        RIcons.person2),
                                                  ),
                                                  Positioned(
                                                    left: 30,
                                                    child: Image.asset(
                                                        RIcons.person3),
                                                  ),
                                                  const Positioned(
                                                    left: 42,
                                                    child: CircleAvatar(
                                                      maxRadius: 12,
                                                      backgroundColor: Colors
                                                          .lightBlueAccent,
                                                      child: Text(
                                                        "50+",
                                                        style: TextStyle(
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
