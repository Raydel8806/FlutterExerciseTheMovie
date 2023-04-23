import 'package:flutter/material.dart';
import 'package:flutterexercisethemovie/l10n/l10n.dart';

import '../tools/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.blue),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF001AFF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
    );
  }
}
