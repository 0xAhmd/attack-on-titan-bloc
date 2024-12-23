import 'package:dio/dio.dart';

import '../models/character.dart';

class AttackOnTitanApiTitanService {
  final String _baseUrl;
  final Dio _dio;

  AttackOnTitanApiTitanService(this._baseUrl, this._dio);

  /// Fetches the list of all Titans.
  Future<List<Titan>> fetchTitans() async {
    final url = '$_baseUrl/titans';
    try {
      final response = await _dio.get(url);
      final data = response.data;
      if (data is Map<String, dynamic> && data.containsKey('results')) {
        return (data['results'] as List)
            .map((titanJson) => Titan.fromJson(titanJson))
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      throw Exception('Failed to load titans: $e');
    }
  }

  /// Fetches details of a single Titan by its ID.
  Future<Titan> fetchTitanById(int id) async {
    final url = '$_baseUrl/titans/$id';
    try {
      final response = await _dio.get(url);
      return Titan.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to load titan: $e');
    }
  }

  /// Searches for Titans based on a query string.
  Future<List<Titan>> searchTitans(String query) async {
    final url = '$_baseUrl/titans?search=$query';
    try {
      final response = await _dio.get(url);
      final data = response.data;
      if (data is Map<String, dynamic> && data.containsKey('results')) {
        return (data['results'] as List)
            .map((titanJson) => Titan.fromJson(titanJson))
            .toList();
      } else {
        throw Exception('Unexpected response format');
      }
    } catch (e) {
      throw Exception('Failed to search titans: $e');
    }
  }
}
