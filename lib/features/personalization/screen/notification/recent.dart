import 'package:flutter/material.dart';
import 'package:travel/features/shop/screen/massage/widget/custom_massages_card.dart';
import 'package:travel/utills/constants/icons.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Expanded(
        flex: 9,
        child: ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context,index){
              return InkWell(
                onTap: (){

                },
                child: const CustomMassagesCard(
                  imagePath: RIcons.person4,
                  name: "Sajib Rahman",
                  massages: "Hi, John! 👋 How are you doing?",
                  time: "11:33 pm",
                ),
              );
            }),
      ),
    );
  }
}
