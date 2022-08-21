import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

abstract class GetPokemonListRepository {
  Future<List<PokemonEntity>> call();
}
