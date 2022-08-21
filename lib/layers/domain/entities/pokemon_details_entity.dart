class PokemonDetailsEntity {
  String name;
  int number;
  String imageUrl;
  List<NameValue> stats;
  List<String> types;

  PokemonDetailsEntity({
    required this.name,
    required this.number,
    required this.imageUrl,
    required this.stats,
    required this.types,
  });
}

class NameValue {
  final String name;
  final int value;

  NameValue(this.name, this.value);
}
