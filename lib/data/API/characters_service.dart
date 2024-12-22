import '../models/character.dart';
import 'package:dio/dio.dart';

class AttackOnTitanApiService {
  final String _baseUrl;
  final Dio _dio;

  AttackOnTitanApiService(this._baseUrl, this._dio);

  Future<List<Character>> fetchCharacters() async {
    final url = '$_baseUrl/characters';
    try {
      final response = await _dio.get(url);
      final data = response.data;
      if (data is Map<String, dynamic> && data.containsKey('results')) {
        return (data['results'] as List)
            .map((characterJson) => Character.fromJson(characterJson))
            .where(
                (character) => character.id != 7) // Exclude character with id 7
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      throw Exception('Failed to load characters: $e');
    }
  }



  Future<Character> fetchCharacterById(int id) async {
    final url = '$_baseUrl/characters/$id';
    try {
      final response = await _dio.get(url);
      return Character.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load character: $e');
    }
  }

  Future<List<Character>> searchCharacters(String query) async {
    final url = '$_baseUrl/characters?search=$query';
    try {
      final response = await _dio.get(url);
      final data = response.data;
      if (data is Map<String, dynamic> && data.containsKey('results')) {
        return (data['results'] as List)
            .map((characterJson) => Character.fromJson(characterJson))
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      throw Exception('Failed to search characters: $e');
    }
  }
}
