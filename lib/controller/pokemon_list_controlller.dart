import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/model/pokemon_model.dart';
import 'package:myflutterapp/repository/pokemon_list_repository.dart';

class PokemonListController {
  Future<List<PokemonEntity>> getPokemonList() async {
    final repository = PokemonListRepository();

    final response = await repository.getPokemonList();
    final pokemonList = response
        .map((dynamic item) => Pokemon.fromJson(item).toEntity())
        .toList();
    return pokemonList;
  }
}
