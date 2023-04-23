import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterexercisethemovie/app/app.dart';
import 'package:flutterexercisethemovie/bootstrap.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  // DomainDependencies.register(getIt);
  // DataDependencies.register(getIt);
  bootstrap(() => App());
}
