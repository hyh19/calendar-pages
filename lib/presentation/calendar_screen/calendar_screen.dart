import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/calendar_controller.dart'; // ignore_for_file: must_be_immutable

class CalendarScreen extends GetWidget<CalendarController> {
  const CalendarScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Text(
            "lbl_next".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
