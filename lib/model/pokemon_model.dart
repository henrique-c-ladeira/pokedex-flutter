import 'package:myflutterapp/entities/pokemon_entity.dart';
import 'package:myflutterapp/extensions/string_extension.dart';

class Pokemon {
  final String name;
  final String image;

  Pokemon({required this.name, required this.image});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    final pokemonName = json['name'] as String;
    final url = json['url'] as String;
    final pokemonNumber = url.split('/')[6];
    final pokemonImageUrl =
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$pokemonNumber.png';

    return Pokemon(
      name: pokemonName.capitalize(),
      image: pokemonImageUrl,
    );
  }

  PokemonEntity toEntity() {
    return PokemonEntity(name: name, image: image);
  }
}
