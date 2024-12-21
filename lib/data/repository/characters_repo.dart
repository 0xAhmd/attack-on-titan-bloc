import 'package:attack_on_titan_bloc/data/API/characters_service.dart';
import 'package:attack_on_titan_bloc/data/models/character.dart';

class CharactersRepository {
  final AttackOnTitanApiService _apiService;

  CharactersRepository(this._apiService);

  Future<List<Character>> getAllCharacters() => _apiService.fetchCharacters();

  Future<Character> getCharacterById(int id) =>
      _apiService.fetchCharacterById(id);

  Future<List<Character>> searchCharacters(String query) =>
      _apiService.searchCharacters(query);
}
