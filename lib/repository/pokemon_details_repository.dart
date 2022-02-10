import 'package:dio/dio.dart';
import 'package:myflutterapp/constants/contants.dart';

class PokemonDetailsRepository {
  Future<dynamic> getPokemonDetails(String pokemonId) async {
    final pokemonListUrl = '$baseUrl/pokemon/$pokemonId';
    Response response = await Dio().get(pokemonListUrl);

    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw "Can't get pokemons.";
    }
  }
}
