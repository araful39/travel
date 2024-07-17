import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/personalization/screen/notification/archieved.dart';
import 'package:travel/features/personalization/screen/notification/earlier.dart';
import 'package:travel/features/personalization/screen/notification/recent.dart';

class NotificationController extends GetxController{
  final RxList<Tab> myTabs = <Tab>[
    const Tab(text: 'Recent'),
    const Tab(text: 'Earlier'),
    const Tab(text: 'Archieved'),
  ].obs;


  RxList<Widget> tabScreen = [const Recent(), const Earlier(), const Archieved()].obs;
  RxInt currentIndex = 0.obs;

}