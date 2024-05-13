import '../../../core/app_export.dart';
import '../models/all_sports_model.dart';

/// A controller class for the AllSportsScreen.
///
/// This class manages the state of the AllSportsScreen, including the
/// current allSportsModelObj
class AllSportsController extends GetxController {
  Rx<AllSportsModel> allSportsModelObj = AllSportsModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.menstrualPeriodScreen,
      );
    });
  }
}
