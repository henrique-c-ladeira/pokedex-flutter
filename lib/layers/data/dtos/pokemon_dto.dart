import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

class PokemonDto extends PokemonEntity {
  PokemonDto({
    required name,
    required spriteUrl,
    required number,
  }) : super(name: name, number: number, spriteUrl: spriteUrl);

  Map toJson() {
    return {
      'name': name,
      'number': number,
      'spriteUrl': spriteUrl,
    };
  }

  static PokemonDto fromJson(Map json) {
    return PokemonDto(
      name: json['name'],
      number: int.parse(json['url'].split('/')[6]),
      spriteUrl:
          'https://img.pokemondb.net/sprites/black-white/normal/${json['name']}.png',
    );
  }
}
