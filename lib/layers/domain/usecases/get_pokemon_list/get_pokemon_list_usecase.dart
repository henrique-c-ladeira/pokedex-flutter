import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

abstract class GetPokemonListUsecase {
  Future<List<PokemonEntity>> call();
}
