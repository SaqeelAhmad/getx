import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeController extends GetxController {
  // Rx<DateTime> selectedTime = Rx<DateTime>();
  //
  // void selectTime() async {
  //
  //   selectedTime.value = await GetX.timePicker(
  //     context: Get.context!,
  //     initialTime: TimeOfDay.now(),
  //     onConfirm: (time) {
  //       return DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, time.hour, time.minute);
  //     },
  //   );
  // }




  // Future<Null> _selectTime(BuildContext context) async {
  //   final TimeOfDay picked = await showTimePicker(
  //     context: context,
  //     initialTime: selectedTime,
  //   );
  //   if (picked != null)
  //     setState(() {
  //       selectedTime = picked;
  //       _hour = selectedTime.hour.toString();
  //       _minute = selectedTime.minute.toString();
  //       _time = _hour + ' : ' + _minute;
  //       _timeController.text = _time;
  //       _timeController.text = formatDate(
  //           DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
  //           [hh, ':', nn, " ", am]).toString();
  //     });}


}