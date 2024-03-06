//this class hold logic that must be executed before application run
import 'package:reporter_api/engine/app_manager.dart';
import 'package:reporter_api/engine/service_locator.dart';

class PreRun {
  static void execute() {
    ServiceLocator().setupServiceLocator();
    AppManager().init();
  }
}
