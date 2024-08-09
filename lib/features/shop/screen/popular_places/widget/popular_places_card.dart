import 'package:flutter/material.dart';
import 'package:travel/common/widgets/cachedNetworkImage/custom_cached_network_image.dart';
import 'package:travel/common/widgets/text/custom_rich_text.dart';

class PopularPlacesCard extends StatelessWidget {
  final String imagePath;
  final String resortName;
  final String location;
  final String ratings;
  final String amount;
  const PopularPlacesCard(
      {super.key,
      required this.imagePath,
      required this.resortName,
      required this.location,
      required this.ratings,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CustomCachedNetworkImage(
              imageUrl: imagePath,
              height: 100,
              width: double.infinity,
              boxFit: BoxFit.fitWidth,
            ),
          ),
          Text(
            resortName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
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
                        fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: 10,
                  ),
                  Text(
                    ratings,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          CustomRichText(amount: amount),
        ],
      ),
    );
  }
}
