import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/personalization/screen/edit_profile/edit_profile.dart';
import 'package:travel/features/personalization/screen/settings/settings.dart';
import 'package:travel/features/shop/screen/Favorite_places/favorite_places.dart';
import 'package:travel/features/shop/screen/popular_trip_package/popular_trip_package.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/sizes.dart';
import 'package:travel/utills/constants/text.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "Profile",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: RColores.black),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
          child: Column(
            children: [

              const SizedBox(
                height: RSizes.xl,
              ),
              Column(
                children: [
                  Image.asset(RIcons.profileMask,),
                  const Text(
                    "Raju",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const Text("rajuslam39@gmail.com")
                ],
              ),
              const SizedBox(
                height: RSizes.xl,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Reward Points",
                        style: TextStyle(
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "360",
                        style: TextStyle(
                            color: RColores.splashColor, fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Travel Trips",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,),
                      ),
                      Text(
                        "238",
                        style: TextStyle(
                            color: RColores.splashColor, fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Bucket List",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, ),
                      ),
                      Text(
                        "473",
                        style: TextStyle(
                            color: RColores.splashColor, fontSize: 15),
                      )
                    ],
                  ),

                ],
              ),
              const SizedBox(
                height: RSizes.xl,
              ),
              Column(
                children: [

                  InkWell(
                    onTap: (){
                      Get.to(()=> const EditProfile());
                    },
                    child: ListTile(
                      leading: Image.asset(RIcons.profile,height: 20,),
                      title: const Text(RTexts.profile,style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> const FavoritePlaces());
                    },
                    child: ListTile(
                      leading: Image.asset(RIcons.bookmark,height: 20,),
                      title: const Text(RTexts.bookMarked,style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> const PopularTripPackage());
                    },
                    child: ListTile(
                      leading: Image.asset(RIcons.trip,height: 20,),
                      title: const Text(RTexts.previousTrips,style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> const Settings());
                    },
                    child: ListTile(
                      leading: Image.asset(RIcons.settings,height: 20,),
                      title: const Text(RTexts.settings,style: TextStyle(fontWeight: FontWeight.bold),),
                      trailing: const Icon(Icons.arrow_forward_ios_sharp),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset(RIcons.version,height: 20,),
                    title: const Text(RTexts.version,style: TextStyle(fontWeight: FontWeight.bold),),
                    trailing: const Icon(Icons.arrow_forward_ios_sharp),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
