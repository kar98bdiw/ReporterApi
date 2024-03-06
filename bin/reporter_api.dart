import 'package:reporter_api/engine/pre_run.dart';
import 'package:reporter_api/reporter_api.dart';

Future<void> main(List<String> arguments) async {
  PreRun.execute();
  run();
}

Future<void> run() async {
  ReporterApi().run();
}
