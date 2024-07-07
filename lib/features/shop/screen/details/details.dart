import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [


            ClipPath(
              // Define a custom path to clip the child
              clipper: MyClipper(),
              child: Container(
                width:double.infinity,
                height: 400,

                child:    Stack(
                  children: [
                    Image.asset(RImages.sunamganj,fit: BoxFit.cover,width: double.infinity,height: 350,),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20,left: 20,right: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child: Image.asset(RIcons.backArrow,height: 40,)),
                          const Text("Details",style: TextStyle(fontSize: 20,color: RColores.white),),
                          InkWell(
                              onTap: (){

                              },
                              child: Image.asset(RIcons.bookmark,height: 40,)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define a custom path to create a stylish clipped shape
    var path = Path();
    // path.moveTo(0, size.height * 0.5);
    path.lineTo(0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
