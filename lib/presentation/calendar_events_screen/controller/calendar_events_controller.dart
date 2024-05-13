import '../../../core/app_export.dart';
import '../models/calendar_events_model.dart';

/// A controller class for the CalendarEventsScreen.
///
/// This class manages the state of the CalendarEventsScreen, including the
/// current calendarEventsModelObj
class CalendarEventsController extends GetxController {
  Rx<CalendarEventsModel> calendarEventsModelObj = CalendarEventsModel().obs;
}
