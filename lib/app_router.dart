import 'package:attack_on_titan_bloc/data/models/titans_model.dart';
import 'package:attack_on_titan_bloc/presentation/pages/titans_screen.dart';

import 'business_logic/cubit/cubit/character_cubit.dart';
import 'constants/strings.dart';
import 'data/API/characters_service.dart';
import 'data/models/character.dart';
import 'data/repository/characters_repo.dart';
import 'presentation/pages/characters_screen.dart';
import 'presentation/pages/charcters_details_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/pages/titans_details_screen.dart';

class AppRouter {
  late CharacterCubit characterCubit;
  late CharactersRepository charactersRepository;

  AppRouter() {
    charactersRepository = CharactersRepository(
        AttackOnTitanApiCharacterService(
            'https://api.attackontitanapi.com', Dio()));
    characterCubit = CharacterCubit(charactersRepository);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => characterCubit,
            child: const CharactersScreen(),
          ),
        );
      case charactersDetailsScreen:
        final character = settings.arguments as Character;
        return MaterialPageRoute(
          builder: (_) => CharctersDetailsScreen(
            character: character,
          ),
        );
      case titanScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => characterCubit,
            child: const TitansScreen(),
          ),
        );
      case titanDetailsScreen:
        final titan = settings.arguments as Titan;
        return MaterialPageRoute(
          builder: (_) => TitansDetailsScreen(
            titans: titan,
          ),
        );
      default:
        return null;
    }
  }
}
