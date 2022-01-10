import 'dart:convert';

import 'package:flutter_pokemon/model/pokemon.dart';
import 'package:http/http.dart' as http;

import '../pokemon_service.dart';

class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl(this._baseUrl);

  final String _baseUrl;

  @override
  Future<Pokemon> get({required int id}) async {
    final url = '$_baseUrl/pokemon/$id/';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return Pokemon.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to fetch image URL');
    }
  }

  @override
  Future<List<Pokemon>> getList({required int page, required int limit}) async {
    var index = page * limit;
    var maxNumber = index + limit;

    final List<Pokemon> list = [];
    for (int index = 1; index <= maxNumber; index++) {
      final url = '$_baseUrl/pokemon/$index/';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        list.add(Pokemon.fromJson(jsonDecode(response.body)));
      } else {
        throw Exception('Failed to fetch image URL');
      }
    }

    return list;
  }
}
