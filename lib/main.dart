import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutterexercisethemovie/app/app.dart';
import 'package:flutterexercisethemovie/bootstrap.dart';

import 'app/tools/injectable_setup.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");
  configureInjection();
  bootstrap(() => App());
}
