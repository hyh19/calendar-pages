import '../../../core/app_export.dart';
import '../models/menstrual_period_model.dart';

/// A controller class for the MenstrualPeriodScreen.
///
/// This class manages the state of the MenstrualPeriodScreen, including the
/// current menstrualPeriodModelObj
class MenstrualPeriodController extends GetxController {
  Rx<MenstrualPeriodModel> menstrualPeriodModelObj = MenstrualPeriodModel().obs;
}
