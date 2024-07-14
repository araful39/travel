import 'package:flutter/material.dart';
import 'package:travel/features/personalization/screen/notification/archieved.dart';
import 'package:travel/features/personalization/screen/notification/earlier.dart';
import 'package:travel/features/personalization/screen/notification/recent.dart';
import 'package:travel/utills/constants/colors.dart';

class NotificationR extends StatefulWidget {
  const NotificationR({super.key});

  @override
  State<NotificationR> createState() => _NotificationRState();
}

class _NotificationRState extends State<NotificationR> {
  final List<Tab> myTabs = <Tab>[
    const Tab(text: 'Recent'),
    const Tab(text: 'Earlier'),
    const Tab(text: 'Archieved'),
  ];

  List<Widget> tabScreen = [const Recent(), const Earlier(), const Archieved()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Notification"),
            centerTitle: true,
            actions: const [
              Text(
                "Clear all",
                style: TextStyle(color: RColores.splashColor),
              )
            ],
            bottom: TabBar(
              tabs: myTabs,
            ),
          ),
          body: TabBarView(
            children: tabScreen,
          ),
        ),
      ),
    );
  }
}














