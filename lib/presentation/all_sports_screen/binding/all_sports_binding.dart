import '../../../core/app_export.dart';
import '../controller/all_sports_controller.dart';

/// A binding class for the AllSportsScreen.
///
/// This class ensures that the AllSportsController is created when the
/// AllSportsScreen is first loaded.
class AllSportsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AllSportsController());
  }
}
