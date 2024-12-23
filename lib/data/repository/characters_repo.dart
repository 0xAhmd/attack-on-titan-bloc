import '../API/characters_service.dart';
import '../models/character.dart';

class CharactersRepository {
  final AttackOnTitanApiCharacterService _apiService;

  CharactersRepository(this._apiService);

  Future<List<Character>> getAllCharacters() => _apiService.fetchCharacters();

  Future<Character> getCharacterById(int id) => _apiService.fetchCharacterById(id);

  Future<List<Character>> searchCharacters(String query) =>
      _apiService.searchCharacters(query);
}
