import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/data/best_destination/best_destination_list.dart';
import 'package:travel/features/shop/screen/details/details.dart';
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
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
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
                    itemCount: 10,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Get.to(()=>const Details());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child:
                        Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                                bestDestinationList[0].imagePath,fit: BoxFit.fill,height: 70,width: double.infinity,),
                            Text(
                              bestDestinationList[0]
                                  .resortName,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on_outlined,size: 15,),
                                Text(bestDestinationList[0]
                                    .location,style: const TextStyle(fontSize: 10),),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 10,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 10,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.orange,
                                  size: 10,
                                ),
                                Text(bestDestinationList[0]
                                    .ratings),
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
                                        fontSize: 10),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.middle,
                                    child: Text(
                                      "Person",
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),



                          ],
                        ),
                      ),
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
