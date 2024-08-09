import 'package:get/get.dart';

class CalenderController extends GetxController {
  Rx<DateTime> toDay = DateTime.now().obs;
  onDaySelected(DateTime day, DateTime focusDay) {
    toDay.value = day;
  }
}
