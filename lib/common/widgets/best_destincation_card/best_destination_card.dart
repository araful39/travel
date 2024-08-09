import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/cachedNetworkImage/custom_cached_network_image.dart';
import 'package:travel/features/shop/controller/home_controller.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class BestDestinationCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String resortName;
  final String location;
  final String ratings;
  final HomeController controller;
  const BestDestinationCard(
      {super.key,
      required this.index,
      required this.controller,
      required this.imageUrl,
      required this.resortName,
      required this.location,
      required this.ratings});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.all(10),
      width: Get.width * 0.85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                child: CustomCachedNetworkImage(imageUrl: imageUrl, ),
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Obx(() => InkWell(
                      onTap: controller.addToBookMark,
                      child: Image.asset(
                        RIcons.bookmark,
                        color: controller.isBookmark.value == true
                            ? RColores.orangeColor
                            : null,
                      )))),
            ],
          ),
          const SizedBox(
            height: RSizes.md,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                resortName,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 20,
                  ),
                  Text(
                    ratings,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: RSizes.sm,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.location_on_outlined),
                  Text(
                    location,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
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
                    const Positioned(
                      left: 42,
                      child: CircleAvatar(
                        maxRadius: 12,
                        backgroundColor: Colors.lightBlueAccent,
                        child: Text(
                          "50+",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
