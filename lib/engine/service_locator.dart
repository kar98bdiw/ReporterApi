import 'package:get_it/get_it.dart';
import 'package:reporter_api/engine/app_manager.dart';
import 'package:reporter_api/environment/environment.dart';
import 'package:reporter_api/handlers/handler.dart';
import 'package:reporter_api/repositories/report_repository.dart';
import 'package:reporter_api/repositories/task_repository.dart';

class ServiceLocator {
  static ServiceLocator serviceLocator = ServiceLocator._();

  ServiceLocator._();

  factory ServiceLocator() => serviceLocator;

  var locator = GetIt.I;

  setupServiceLocator() {
    _setupAppManagement();
    _setupRepositories();
    _setupAppPackages();
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

  void _setupAppPackages() {
    _registerSingleton<Handler>(Handler(environment: Environment()));
  }

  void _setupRepositories() {
    _registerSingleton<ReportRepository>(ReportRepository());
    _registerSingleton<TaskRepository>(TaskRepository()..fillTasks());
  }
}
