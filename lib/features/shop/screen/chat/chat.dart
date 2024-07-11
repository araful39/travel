import 'package:flutter/material.dart';
import 'package:travel/common/widgets/custom_text_field.dart';
import 'package:travel/features/shop/screen/chat/widget/custome_massages_card.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new),
          centerTitle: true,
          title: Column(
            children: [
              Text(
                "Sajib Rahman",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Active Now",
                style: TextStyle(color: RColores.splashColor, fontSize: 15),
              )
            ],
          ),
          actions: [
            Icon(Icons.call),
            SizedBox(
              width: RSizes.md,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10, right: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                          'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                        color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
            Image.asset(RIcons.person4,height: 80,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4,height: 80,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomMassages(
                      massages: 'Today',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'Hello! 9:24 ',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4,height: 80,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomMassages(
                          massages: 'Hello! 9:34',
                        ),
                        CustomMassages(
                          massages: 'I’m very glab you like it👍  9:35',
                        ),

                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(RIcons.person4),
                    CustomMassages(
                      width: 250,
                      massages:
                      'Thank you very mouch for your traveling, we really like the apartments. we will stay here for anather 5 days...',

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomMassages(
                      massages: 'I will be at home  9:39',
                      color: RColores.splashColor.withOpacity(0.1),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8
          ),
          child: Row(
            children: [
              Expanded(
                  flex: 8,
                  child: CustomTextField(
                    hintText: "Type you messages",
                    suffixIcon: Icons.attach_file,
                  )),
              Expanded(
                  flex: 2,
                  child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          radius: 25,
                          backgroundColor: RColores.splashColor,
                          child: Icon(
                            Icons.mic,
                            color: RColores.white,
                            size: 35,
                          ))))
            ],
          ),
        ),
      ),
    );
  }
}
