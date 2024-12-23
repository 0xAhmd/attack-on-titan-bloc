import '../API/characters_service.dart';
import '../models/character.dart';

class CharactersRepository {
  final AttackOnTitanApiCharacterService _apiService;

  CharactersRepository(this._apiService);

  Future<List<Titan>> getAllCharacters() => _apiService.fetchCharacters();

  Future<Titan> getCharacterById(int id) => _apiService.fetchCharacterById(id);

  Future<List<Titan>> searchCharacters(String query) =>
      _apiService.searchCharacters(query);
}
