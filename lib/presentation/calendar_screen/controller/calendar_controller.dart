import '../../../core/app_export.dart';
import '../models/calendar_model.dart';

/// A controller class for the CalendarScreen.
///
/// This class manages the state of the CalendarScreen, including the
/// current calendarModelObj
class CalendarController extends GetxController {
  Rx<CalendarModel> calendarModelObj = CalendarModel().obs;
}
