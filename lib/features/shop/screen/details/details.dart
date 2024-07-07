import 'package:flutter/material.dart';
import 'package:travel/common/widgets/cliper/cliper.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';

import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';


class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(
          child: Column(
            children: [
              ClipPath(
                // Define a custom path to clip the child
                clipper: MyClipper(),
                child: SizedBox(
                  width: width,
                  height: width*0.8,

                  child: Image.asset(RImages.sunamganj,fit: BoxFit.cover,),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(RTexts.sunamganjResort,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(RTexts.sunamganj)
                        ],
                      ),
                      Image.asset(RIcons.person1,)
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          const Icon(
                              Icons.location_on_outlined),
                          Text(RTexts.sunamganj
                              ),
                        ],
                      ),
                      Row(
                        children: [
                           Icon(
                              Icons.star,color: RColores.orangeColor,),
                          Text("4.7(27)"
                          ),
                        ],
                      ),
                      Row(
                        children: [


                          RichText(text: TextSpan(
                            children: [
                              
                            ]
                          )

                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}


