import '../../../core/app_export.dart';
import '../controller/calendar_controller.dart';

/// A binding class for the CalendarScreen.
///
/// This class ensures that the CalendarController is created when the
/// CalendarScreen is first loaded.
class CalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CalendarController());
  }
}
