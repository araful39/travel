import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/personalization/controller/notification_controller.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/sizes.dart';

class NotificationR extends StatelessWidget {
  const NotificationR({super.key});

  @override
  Widget build(BuildContext context) {
    final NotificationController controller=Get.put(NotificationController());
    return DefaultTabController(
      length: controller.myTabs.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Notification"),
            centerTitle: true,
            actions: const [
              Text(
                "Clear all",
                style: TextStyle(color: RColores.splashColor),
              ),
              SizedBox(
                width: RSizes.md,
              )
            ],
            bottom: TabBar(
              tabs: controller.myTabs.toList(),
              onTap: (index){
                controller.currentIndex.value=index;
              },
            ),
          ),
          body:Obx(()=> controller.tabScreen[controller.currentIndex.value]),

        ),
      ),
    );
  }
}
