import 'package:dio/dio.dart';
import 'package:myflutterapp/constants/contants.dart';

class PokemonListRepository {
  final pokemonListUrl = '$baseUrl/pokemon?limit=150';

  Future<List<dynamic>> getPokemonList() async {
    Response response = await Dio().get(pokemonListUrl);

    if (response.statusCode == 200) {
      final results = response.data['results'];
      return results;
    } else {
      throw "Can't get pokemons.";
    }
  }
}
