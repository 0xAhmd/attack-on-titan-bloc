import 'package:attack_on_titan_bloc/business_logic/cubit/character_cubit.dart';
import 'package:attack_on_titan_bloc/constants/strings.dart';
import 'package:attack_on_titan_bloc/data/API/characters_service.dart';
import 'package:attack_on_titan_bloc/data/repository/characters_repo.dart';
import 'package:attack_on_titan_bloc/presentation/pages/characters_screen.dart';
import 'package:attack_on_titan_bloc/presentation/pages/charcters_details_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  late CharacterCubit characterCubit;
  late CharactersRepository charactersRepository;

  AppRouter() {
    charactersRepository = CharactersRepository(
        AttackOnTitanApiService('https://api.attackontitanapi.com', Dio()));
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
        return MaterialPageRoute(
          builder: (_) => const CharctersDetailsScreen(),
        );
      default:
        return null;
    }
  }
}
