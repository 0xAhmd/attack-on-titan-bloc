import 'package:attack_on_titan_bloc/data/API/characters_service.dart';
import 'package:attack_on_titan_bloc/data/models/character.dart';

class CharactersRepository {
  final CharactersService charactersService;

  CharactersRepository({required this.charactersService});

  Future<List<dynamic>> getAllCharacters() async {
    final characters = await charactersService.getAllCharacters();
  return characters.map((character) => Character.fromJson(character)).toList();
  }
}
