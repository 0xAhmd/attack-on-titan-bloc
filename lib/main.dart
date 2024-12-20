import 'package:attack_on_titan_bloc/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AttackOnTitanApp(
    appRouter: AppRouter(),
  ));
}

class AttackOnTitanApp extends StatelessWidget {
  final AppRouter appRouter;
  const AttackOnTitanApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.GenerateRoute,
    );
  }
}


//! cubit next 
