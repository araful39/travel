import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/features/shop/screen/chat/chat.dart';
import 'package:travel/features/shop/screen/massage/widget/custom_massages_card.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class Massages extends StatelessWidget {
  const Massages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
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
                        child: Image.asset(
                          RIcons.backArrow,
                          height: 20,
                        ),
                      ),
                      const Text(
                        "Massage",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Image.asset(
                            RIcons.dots,
                            height: 15,
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomHeading(
                        title: "Massages",
                        subTittleButton: false,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          RIcons.edit,
                          height: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: RSizes.sm,
                  ),
                  const CustomTextField(
                    hintText: "Search for chats & messages ",
                    prefixIcons: true,
                  )
                ],
              ),
              const SizedBox(
                height: RSizes.sm,
              ),
              Expanded(
                flex: 9,
                child: ListView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context,index){
                      return InkWell(
                        onTap: (){
                          Get.to(()=> Chat());
                        },
                        child: const CustomMassagesCard(
                          imagePath: RIcons.person4,
                          name: "Sajib Rahman",
                          massages: "Hi, John! 👋 How are you doing?",
                          time: "11:33 pm",
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
