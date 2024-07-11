import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/utills/constants/colors.dart';
import 'package:travel/utills/constants/icons.dart';
import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  DateTime toDay=DateTime.now();
  void _onDaySelected(DateTime day,DateTime focusDay){
    setState(() {
      toDay=day;
    });

  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 SizedBox(),
                  const Text(
                    "Calender",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        ),
                  ),
                   Image.asset(RIcons.notification)
                ],
              ),
              TableCalendar(
                headerStyle: const HeaderStyle(formatButtonVisible: false,titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day)=>isSameDay(day, toDay),
                onDaySelected: _onDaySelected,
                rowHeight: 40,

                locale: "en_US",
                  focusedDay: toDay, firstDay: DateTime.utc(2010,10,16), lastDay: DateTime.utc(2030,08,15)),

              CustomHeading(title: "My Schedule", subTittleButton: true,onPress: (){},),  const SizedBox(
                height: 20,
              ),
             Expanded(
               flex: 3,
               child: ListView.builder(
                 shrinkWrap: true,
                   itemCount: 15,
                   itemBuilder: (context,index){
                 return  ListTile(
                   leading: ClipRRect(
                       borderRadius: BorderRadius.circular(10),
                       child: Image.asset(RImages.sunamganj,height: 100,)),
                   title: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         children: [
                           Icon(Icons.calendar_month,size: 10,),
                           Text("26 January 2024",style: TextStyle(fontSize: 10),),
                         ],
                       ),
                       Text(RTexts.sunamganjResort,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       Row(
                         children: [
                           Icon(Icons.location_on_outlined,size: 10,),
                           Text(RTexts.sunamganj,style: TextStyle(fontSize: 10),),
                         ],
                       ),
                     ],
                   ),
                   trailing: Icon(Icons.arrow_forward_ios_sharp,size: 15,),
                 );
               }),
             )
            ],
          ),
        ),
      ),
    );
  }
}
