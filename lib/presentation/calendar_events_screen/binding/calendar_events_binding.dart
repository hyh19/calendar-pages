import '../../../core/app_export.dart';
import '../controller/calendar_events_controller.dart';

/// A binding class for the CalendarEventsScreen.
///
/// This class ensures that the CalendarEventsController is created when the
/// CalendarEventsScreen is first loaded.
class CalendarEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarEventsController());
  }
}
