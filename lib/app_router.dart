import 'package:attack_on_titan_bloc/constants/strings.dart';
import 'package:attack_on_titan_bloc/presentation/pages/characters_screen.dart';
import 'package:attack_on_titan_bloc/presentation/pages/charcters_details_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  // ignore: non_constant_identifier_names, body_might_complete_normally_nullable
  Route? GenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => const CharactersScreen());
      case charactersDetailsScreen:
        return MaterialPageRoute(
            builder: (_) => const CharctersDetailsScreen());
    }
  }
}
 