import 'package:myflutterapp/layers/data/datasource/get_pokemon_list_datasource.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';
import 'package:myflutterapp/layers/domain/repositories/get_pokemon_list_repository.dart';

class GetPokemonListRepositoryImp implements GetPokemonListRepository {
  final GetPokemonListDatasource _getPokemonListDatasource;

  GetPokemonListRepositoryImp(this._getPokemonListDatasource);

  @override
  Future<List<PokemonEntity>> call() async {
    return await _getPokemonListDatasource();
  }
}
