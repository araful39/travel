import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/common/widgets/cliper/cliper.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/features/shop/screen/view/view.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';

import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool textLine = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    // Define a custom path to clip the child
                    clipper: MyClipper(),
                    child: SizedBox(
                      width: width,
                      height: width * 0.8,
                      child: InkWell(
                        onTap: (){
                          Get.to(()=>const ViewPage());
                        },
                        child: Image.asset(
                          RImages.sunamganj,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 1,
                    child: Positioned(
                      top: 25,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                Get.back();

                              },
                              child: Icon(Icons.arrow_back_ios_new),
                            ),
                            const Text(
                              "Details",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: RColores.white),
                            ),
                            Image.asset(
                              RIcons.bookmark,
                              height: 50,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  RTexts.sunamganjResort,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                Text(RTexts.sunamganj)
                              ],
                            ),
                            Image.asset(
                              RIcons.person1,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: RSizes.sm,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text(RTexts.tekergat),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: RColores.orangeColor,
                                ),
                                Text("4.7(2759)"),
                              ],
                            ),
                            Row(
                              children: [
                                RichText(text: const TextSpan(children: []))
                              ],
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "\$59/",
                                    style: TextStyle(
                                        color: RColores.splashColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Text(
                                      "Person",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: RSizes.sm,
                    ),
                    const SizedBox(
                      height: RSizes.sm,
                    ),
                    SizedBox(
                      height: 60,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Image.asset(RImages.sunamganj)),
                            );
                          }),
                    ),
                    const CustomHeading(
                        title: "About Destination", subTittleButton: false),
                    const SizedBox(
                      height: RSizes.sm,
                    ),
                    Text(
                      "First of all, many people think that the place will be wrong in Sylhet # Bisachandandi. It's actually a mistake to make a mistake. Because this place is not quite enough to look like a bichanakandi. The place is located in Takerghat of Sunamganj district, behind the scenes. His name is Lammachara. The beauty of local and exotic stone traders is freely and unplanned due to the lifting of stone today. Even then, the beauty of which is not low in emotions. Many tourists visit Takerghat but do not go here due to lack of knowledge From Dhaka to Shamili, Hanif, will go to Sunamganj by bus, rent -550 taka And if the local bus goes to 250-300 taka Get new Bridge / Abdus Zahur Bridge From there to the lakmachara lakmachara. On the way to Go, you can see the average of Laur, Jaduakata river, Shimul gardens, Barek Tila, Rajai Sharnan and Shaheed Siraj Lake / Limestone Lake / Lymston Quarry. One can go to two bikes, rent 400-500.",
                      maxLines: textLine ? 8 : null,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              setState(() {
                                textLine = !textLine;
                              });
                            },
                            child: Text(
                              textLine ? "ReadMore" : "Read",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.red),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: RSizes.xl,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          buttonName: 'Book Now',
          onPress: () {},
        ),
      ),
    );
  }
}
