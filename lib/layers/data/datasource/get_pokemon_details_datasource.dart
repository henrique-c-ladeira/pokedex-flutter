import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';

abstract class GetPokemonDetailsDatasource {
  Future<PokemonDetailsEntity> call();
}
