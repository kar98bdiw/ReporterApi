import 'package:get_it/get_it.dart';
import 'package:reporter_api/engine/app_manager.dart';

class ServiceLocator {
  static ServiceLocator serviceLocator = ServiceLocator._();

  ServiceLocator._();

  factory ServiceLocator() => serviceLocator;

  var locator = GetIt.I;

  setupServiceLocator() {
    _setupAppManagement();
  }

  T get<T extends Object>() {
    return locator.get<T>();
  }

  void _registerSingleton<T extends Object>(T instance) {
    locator.registerSingleton<T>(instance);
  }

  void _setupAppManagement() {
    _registerSingleton<AppManager>(AppManager());
  }
}
