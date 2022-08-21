import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

abstract class GetPokemonListDatasource {
  Future<List<PokemonEntity>> call();
}
