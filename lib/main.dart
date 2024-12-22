import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_router.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => AttackOnTitanApp(
      appRouter: AppRouter(),
    ),
  ));
}

void updateCharacterBirthplace(int i, String s) {}

class AttackOnTitanApp extends StatelessWidget {
  final AppRouter appRouter;

  const AttackOnTitanApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
        fontFamily: GoogleFonts.tinos().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
