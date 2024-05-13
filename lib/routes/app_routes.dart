import '../core/app_export.dart';
import '../presentation/all_sports_screen/all_sports_screen.dart';
import '../presentation/all_sports_screen/binding/all_sports_binding.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/calendar_events_screen/binding/calendar_events_binding.dart';
import '../presentation/calendar_events_screen/calendar_events_screen.dart';
import '../presentation/calendar_screen/binding/calendar_binding.dart';
import '../presentation/calendar_screen/calendar_screen.dart';
import '../presentation/menstrual_period_screen/binding/menstrual_period_binding.dart';
import '../presentation/menstrual_period_screen/menstrual_period_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String allSportsScreen = '/all_sports_screen';

  static const String menstrualPeriodScreen = '/menstrual_period_screen';

  static const String calendarEventsScreen = '/calendar_events_screen';

  static const String calendarScreen = '/calendar_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: allSportsScreen,
      page: () => AllSportsScreen(),
      bindings: [AllSportsBinding()],
    ),
    GetPage(
      name: menstrualPeriodScreen,
      page: () => MenstrualPeriodScreen(),
      bindings: [MenstrualPeriodBinding()],
    ),
    GetPage(
      name: calendarEventsScreen,
      page: () => CalendarEventsScreen(),
      bindings: [CalendarEventsBinding()],
    ),
    GetPage(
      name: calendarScreen,
      page: () => CalendarScreen(),
      bindings: [CalendarBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => AllSportsScreen(),
      bindings: [AllSportsBinding()],
    )
  ];
}
