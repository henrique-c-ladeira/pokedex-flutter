import 'package:myflutterapp/layers/data/datasource/get_pokemon_details_datasource.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/layers/domain/repositories/get_pokemon_details_repoitory.dart';

class GetPokemonDetailsRepositoryImp implements GetPokemonDetailsRepository {
  final GetPokemonDetailsDatasource _getPokemonDetailsDatasource;

  GetPokemonDetailsRepositoryImp(this._getPokemonDetailsDatasource);

  @override
  Future<PokemonDetailsEntity> call() async {
    return await _getPokemonDetailsDatasource();
  }
}
