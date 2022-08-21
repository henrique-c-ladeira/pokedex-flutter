import 'package:flutter_test/flutter_test.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

main() {
  test('should not be null', () {
    final pokemonEntity =
        PokemonEntity(name: 'pikachu', number: 21, spriteUrl: 'any_sprite_Url');
    expect(pokemonEntity, isNotNull);
  });
}
