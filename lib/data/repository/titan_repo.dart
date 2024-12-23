

import 'package:attack_on_titan_bloc/data/models/character.dart';

import '../API/titan_service.dart';

class TitansRepository {
  final AttackOnTitanApiTitanService _apiService;

  TitansRepository(this._apiService);

  /// Fetches all Titans from the API.
  Future<List<Titan>> getAllTitans() => _apiService.fetchTitans();

  /// Fetches a Titan by its ID.
  Future<Titan> getTitanById(int id) => _apiService.fetchTitanById(id);

  /// Searches for Titans based on a query string.
  Future<List<Titan>> searchTitans(String query) =>
      _apiService.searchTitans(query);
}
