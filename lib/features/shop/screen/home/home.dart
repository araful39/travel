import 'package:flutter/material.dart';

import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/data/best_destination/best_destination_list.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Row(
                  children: [
                    Image(image: AssetImage(RIcons.person)),
                    SizedBox(
                      width: 5,
                    ),
                    Text(RTexts.personName),
                  ],
                ),
                Image.asset(RIcons.notification)
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
              onPress: () {},
            ),
            SizedBox(
              height: height*0.5,
              width: width*1,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: bestDestinationList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(bestDestinationList[index].imagePath),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      bestDestinationList[index].resortName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 20),
                                    ),

                                    const Text("4.7"),
                                  ],
                                ),
                                Text(bestDestinationList[index].location)
                              ],
                            ),

                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}
