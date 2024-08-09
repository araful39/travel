import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:table_calendar/table_calendar.dart';
import 'package:travel/common/widgets/heading/custom_heading.dart';
import 'package:travel/features/shop/controller/calender_controller.dart';

import 'package:travel/utills/constants/images.dart';
import 'package:travel/utills/constants/text.dart';

class Calender extends StatelessWidget {
  const Calender({super.key});

  @override
  Widget build(BuildContext context) {
    CalenderController controller = Get.put(CalenderController());

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Calender",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Obx(
                () => TableCalendar(
                    headerStyle: const HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    availableGestures: AvailableGestures.all,
                    selectedDayPredicate: (day) =>
                        isSameDay(day, controller.toDay.value),
                    onDaySelected: controller.onDaySelected,
                    rowHeight: 40,
                    locale: "en_US",
                    focusedDay: controller.toDay.value,
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 08, 15)),
              ),
              const CustomHeading(
                title: "My Schedule",
                subTittleButton: false,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 3,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 15,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              RImages.sunamganj,
                              height: 100,
                            )),
                        title: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 10,
                                ),
                                Text(
                                  "26 January 2024",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                            Text(
                              RTexts.sunamganjResort,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 10,
                                ),
                                Text(
                                  RTexts.sunamganj,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 15,
                        ),
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
