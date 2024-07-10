import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

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
        body: Column(
          children: [
            TableCalendar(
              headerStyle: const HeaderStyle(formatButtonVisible: false,titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day)=>isSameDay(day, toDay),
              onDaySelected: _onDaySelected,
              rowHeight: 43,
              locale: "en_US",
                focusedDay: toDay, firstDay: DateTime.utc(2010,10,16), lastDay: DateTime.utc(2030,08,15)),
            const SizedBox(
              height: 20,
            ),
            Text("Selected day :${toDay.toString().split(" ")[0]}",style: const TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
