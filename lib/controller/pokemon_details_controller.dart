import 'package:myflutterapp/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/model/pokemon_details_model.dart';
import 'package:myflutterapp/repository/pokemon_details_repository.dart';

class PokemonDetailsController {
  Future<PokemonDetailsEntity> getPokemonDetails(String pokemonName) async {
    final repository = PokemonDetailsRepository();

    final response = await repository.getPokemonDetails(pokemonName);
    return PokemonDetails.fromJson(response).toEntity();
  }
}
