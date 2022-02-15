import 'package:myflutterapp/model/pokemon_details_model.dart';

class PokemonDetailsEntity {
  PokemonDetailsEntity(
      {required this.name,
      required this.image,
      required this.stats,
      required this.type});

  final String name;
  final String image;
  final List<Stats> stats;
  final List<String> type;
}
