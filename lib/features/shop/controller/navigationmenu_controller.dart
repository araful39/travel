import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/personalization/screen/profile/profile.dart';
import 'package:travel/features/shop/screen/calender/calender.dart';
import 'package:travel/features/shop/screen/home/home.dart';
import 'package:travel/features/shop/screen/massage/massages.dart';
import 'package:travel/features/shop/screen/search/search.dart';

class NavigationMenuController extends GetxController{

  RxInt currentIndex = 0.obs;
  RxInt colorIndex = 0.obs;

  RxList<Widget> pageScreen = [
    const Home(),
    const Calender(),
    const Search(),
    const Massages(),
    const Profile()
  ].obs;


  navigation(int index){
    currentIndex.value=index;
  }




}