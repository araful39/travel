import 'package:flutter/material.dart';
import 'package:travel/common/widgets/button/text_button.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Padding(
          padding: const EdgeInsets.only(left: 20,top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
              SizedBox(
                height: 25,
              ),
              const Text(RTexts.homeTittle,style: TextStyle(fontSize: 30),),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(RTexts.bestDestination,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  CustomTextButton(buttonName: RTexts.viewAll, onPress: (){}),
                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
