import 'business_logic/cubit/cubit/character_cubit.dart';
import 'business_logic/cubit/cubit/cubit/titans_cubit.dart';
import 'constants/strings.dart';
import 'data/API/characters_service.dart';
import 'data/API/titan_service.dart';
import 'data/models/character.dart';
import 'data/models/titans_model.dart';
import 'data/repository/characters_repo.dart';
import 'data/repository/titan_repo.dart';
import 'presentation/pages/characters_screen.dart';
import 'presentation/pages/charcters_details_screen.dart';
import 'presentation/pages/titans_details_screen.dart';
import 'presentation/pages/titans_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharacterCubit characterCubit;
  late TitansCubit titansCubit; // Add TitansCubit here
  late CharactersRepository charactersRepository;
  late TitansRepository titansRepository;

  AppRouter() {
    charactersRepository = CharactersRepository(
        AttackOnTitanApiCharacterService(
            'https://api.attackontitanapi.com', Dio()));
    characterCubit = CharacterCubit(charactersRepository);

    titansCubit = TitansCubit(TitansRepository(AttackOnTitanApiTitanService(
        'https://api.attackontitanapi.com', Dio())));
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
          builder: (_) => CharctersDetailsScreen(character: character),
        );
      case titanScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) => titansCubit, // Pass TitansCubit to TitansScreen
            child: const TitansScreen(),
          ),
        );
      case titanDetailsScreen:
        final titan =
            settings.arguments as Titan; // Ensure Titan is passed correctly
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (_) =>
                titansCubit, // If TitanCubit is required for this screen
            child: TitansDetailsScreen(titans: titan),
          ),
        );
      default:
        return null;
    }
  }
}
