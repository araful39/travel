import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/button/custom_eleveted_button.dart';
import 'package:travel/features/shop/screen/location/location.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
                height: height * 1,
                width: width * 0.5,
                child: Image.asset(
                  RImages.sunamganj,
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,left: 25,
                right: 25
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            Get.back();

                          },
                          child: const Icon(Icons.arrow_back_ios_new),
                        ),
                        const Text(
                          "View",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(

                        children: [
                          SizedBox(
                            height: 80,

                            child: Card(
                              color: Colors.black.withOpacity(0.4),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.asset(
                                        RImages.sreemangal,
                                        height: 50,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "La-Hotel",
                                          style: TextStyle(fontSize: 20, color: Colors.white),
                                        ),
                                        Text(
                                          "2.09 ml",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(

                    children: [
                      SizedBox(
                        height: 80,

                        child: Card(
                          color: Colors.black.withOpacity(0.4),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    RImages.coxbazar,
                                    height: 50,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Lemon Garden",
                                      style: TextStyle(fontSize: 20, color: Colors.white),
                                    ),
                                    Text(
                                      "2.09 ml",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(

                        children: [
                          SizedBox(
                            height: height*0.2,
                            width: width*0.4,

                            child: Card(
                              color: Colors.black.withOpacity(0.4),
                              child:   Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          RTexts.sunamganjResort,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: RColores.white,
                                              fontSize: 20),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 15,
                                            ),
                                            Text("4.7",style: TextStyle(color: RColores.white,),),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Row(
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,color: RColores.white,),
                                            Text(RTexts.sunamganj,style: TextStyle(color: RColores.white),),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                          width: 80,
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
                                                  backgroundColor:
                                                  Colors.lightBlueAccent,
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
                                    ),
                                    const SizedBox(
                                      height: RSizes.sm,
                                    ),
                                    CustomElevatedButton(buttonName: "See On The Map", onPress: (){
Get.to(const Location());
                                    })
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: RSizes.sm,
                      )
                    ],
                  ),

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
