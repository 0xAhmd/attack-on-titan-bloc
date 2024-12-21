import 'package:attack_on_titan_bloc/app_router.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => AttackOnTitanApp(
      appRouter: AppRouter(),
    ),
  ));
}

class AttackOnTitanApp extends StatelessWidget {
  final AppRouter appRouter;

  const AttackOnTitanApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.tinos().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute:
          appRouter.generateRoute, // Corrected to lowercase 'generateRoute'
    );
  }
}
