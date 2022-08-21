import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_details/get_pokemon_details_usecase.dart';

class PokemonDetailsController {
  final GetPokemonDetailsUsecase _getPokemonDetailsUsecase;

  PokemonDetailsController(this._getPokemonDetailsUsecase);

  Future<PokemonDetailsEntity> getPokemonDetails() async {
    return await _getPokemonDetailsUsecase();
  }
}
