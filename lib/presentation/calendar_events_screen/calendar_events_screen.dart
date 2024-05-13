import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/calendar_events_controller.dart'; // ignore_for_file: must_be_immutable

class CalendarEventsScreen extends GetWidget<CalendarEventsController> {
  const CalendarEventsScreen({Key? key})
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
          child: GestureDetector(
            onTap: () {
              onTapTxtNext();
            },
            child: Text(
              "lbl_next".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.calendarScreen,
    );
  }
}
