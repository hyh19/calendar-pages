import '../../../core/app_export.dart';
import '../controller/menstrual_period_controller.dart';

/// A binding class for the MenstrualPeriodScreen.
///
/// This class ensures that the MenstrualPeriodController is created when the
/// MenstrualPeriodScreen is first loaded.
class MenstrualPeriodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenstrualPeriodController());
  }
}
