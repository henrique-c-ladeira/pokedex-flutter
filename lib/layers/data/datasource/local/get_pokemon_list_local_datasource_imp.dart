import 'package:myflutterapp/layers/data/datasource/get_pokemon_list_datasource.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

class GetPokemonListLocalDatasourceImp implements GetPokemonListDatasource {
  @override
  Future<List<PokemonEntity>> call() async {
    return Future.value([
      PokemonEntity(
        name: 'pikachu',
        number: 12,
        spriteUrl: 'https://img.pokemondb.net/sprites/bank/normal/pikachu.png',
      ),
      PokemonEntity(
        name: 'pikachu',
        number: 12,
        spriteUrl: 'https://img.pokemondb.net/sprites/bank/normal/abra.png',
      ),
      PokemonEntity(
        name: 'pikachu',
        number: 12,
        spriteUrl: 'https://img.pokemondb.net/sprites/bank/normal/pikachu.png',
      )
    ]);
  }
}
