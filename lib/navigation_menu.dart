import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/features/shop/controller/navigationmenu_controller.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationMenuController controller=Get.put(NavigationMenuController());
    return Obx(()=> Scaffold(
        body: controller.pageScreen[controller.currentIndex.value],
        bottomNavigationBar:BottomNavigationBar(
          selectedIconTheme:
          const IconThemeData(size: 30, color: RColores.splashColor),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: RColores.splashColor,
          currentIndex: controller.currentIndex.value,
          onTap: controller.navigation
          ,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.home,
                    height: 25,
                    color: controller.currentIndex.value == 0
                        ? RColores.splashColor
                        : RColores.black),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.calender,
                    height: 21,
                    color: controller.currentIndex.value == 1
                        ? RColores.splashColor
                        : RColores.black),
                label: "Calender"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.search,
                    height: 25,
                    color: controller.currentIndex.value == 2
                        ? RColores.splashColor
                        : RColores.black),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.chat,
                    height: 25,
                    color: controller.currentIndex.value == 3
                        ? RColores.splashColor
                        : RColores.black),
                label: "Chat"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.profile,
                    height: 25,
                    color: controller.currentIndex.value == 4
                        ? RColores.splashColor
                        : RColores.black),
                label: "Profile"),
          ],
        )));
  }
}
