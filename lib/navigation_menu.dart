import 'package:flutter/material.dart';
import 'package:travel/features/personalization/screen/profile/profile.dart';
import 'package:travel/features/shop/screen/calender/calender.dart';
import 'package:travel/features/shop/screen/home/home.dart';
import 'package:travel/features/shop/screen/massage/massages.dart';
import 'package:travel/features/shop/screen/search/search.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int currentIndex = 0;
  int colorIndex = 0;

  List<Widget> pageScreen = [
    const Home(),
    const Calender(),
    const Search(),
    const Massages(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageScreen[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: const IconThemeData(size: 30,color: RColores.splashColor),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: RColores.splashColor,
          currentIndex: currentIndex,
          onTap: (index) {
           setState(() {

             currentIndex = index;


           });
          },
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.home,height: 25,color:currentIndex==0?RColores.splashColor: RColores.black), label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.calender,height: 21,color: currentIndex==1?RColores.splashColor: RColores.black), label: "Calender"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.search,height: 25,color: currentIndex==2?RColores.splashColor: RColores.black), label: "Search"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.chat,height: 25,color: currentIndex==3?RColores.splashColor: RColores.black), label: "Chat"),
            BottomNavigationBarItem(
                icon: Image.asset(RIcons.profile,height: 25,color: currentIndex==4?RColores.splashColor: RColores.black), label: "Profile"),
          ],
        ));
  }
}
