import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';

abstract class GetPokemonDetailsRepository {
  Future<PokemonDetailsEntity> call();
}
