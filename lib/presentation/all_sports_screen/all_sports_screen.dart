import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/all_sports_controller.dart'; // ignore_for_file: must_be_immutable

class AllSportsScreen extends GetWidget<AllSportsController> {
  const AllSportsScreen({Key? key})
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

  /// Navigates to the menstrualPeriodScreen when the action is triggered.
  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.menstrualPeriodScreen,
    );
  }
}
