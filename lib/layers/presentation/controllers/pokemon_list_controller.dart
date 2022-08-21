import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_list/get_pokemon_list_usecase.dart';

class PokemonListController {
  final GetPokemonListUsecase _getPokemonListUsecase;

  PokemonListController(this._getPokemonListUsecase);

  late List<PokemonEntity> pokemonList;

  getPokemonList() async {
    return await _getPokemonListUsecase();
  }
}
