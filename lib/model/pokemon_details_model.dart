import 'package:myflutterapp/entities/pokemon_details_entity.dart';

class PokemonDetails {
  PokemonDetails({
    required this.abilities,
    required this.baseExperience,
    required this.forms,
    required this.gameIndices,
    required this.height,
    required this.heldItems,
    required this.id,
    required this.isDefault,
    required this.locationAreaEncounters,
    required this.moves,
    required this.name,
    required this.order,
    required this.pastTypes,
    required this.species,
    required this.sprites,
    required this.stats,
    required this.types,
    required this.weight,
  });

  List<Ability> abilities;
  int baseExperience;
  List<Species> forms;
  List<GameIndex> gameIndices;
  int height;
  List<HeldItem> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Move> moves;
  String name;
  int order;
  List<dynamic> pastTypes;
  Species species;
  Sprites sprites;
  List<Stat> stats;
  List<Type> types;
  int weight;

  factory PokemonDetails.fromJson(Map<String, dynamic> json) {
    final abilities = json['abilities'] as List<Ability>;
    final baseExperience = json['base_experience'] as int;
    final forms = json['forms'] as List<Species>;
    final gameIndices = json['gameIndices'] as List<GameIndex>;
    final height = json['height'] as int;
    final heldItems = json['held_items'] as List<HeldItem>;
    final id = json['id'] as int;
    final isDefault = json['is_default'] as bool;
    final locationAreaEncounters = json['location_area_encounters'] as String;
    final moves = json['moves'] as List<Move>;
    final name = json['name'] as String;
    final order = json['order'] as int;
    final pastTypes = json['past_types'] as List<dynamic>;
    final species = json['species'] as Species;
    final sprites = json['sprites'] as Sprites;
    final stats = json['stats'] as List<Stat>;
    final types = json['types'] as List<Type>;
    final weight = json['weight'] as int;

    return PokemonDetails(
      abilities: abilities,
      baseExperience: baseExperience,
      forms: forms,
      gameIndices: gameIndices,
      height: height,
      heldItems: heldItems,
      id: id,
      isDefault: isDefault,
      locationAreaEncounters: locationAreaEncounters,
      moves: moves,
      name: name,
      order: order,
      pastTypes: pastTypes,
      species: species,
      sprites: sprites,
      stats: stats,
      types: types,
      weight: weight,
    );
  }

  PokemonDetailsEntity toEntity() {
    return PokemonDetailsEntity(
        name: name, image: sprites.other.officialArtwork.frontDefault);
  }
}

class Ability {
  Ability({
    required this.ability,
    required this.isHidden,
    required this.slot,
  });

  Species ability;
  bool isHidden;
  int slot;
}

class Species {
  Species({
    required this.name,
    required this.url,
  });

  String name;
  String url;
}

class GameIndex {
  GameIndex({
    required this.gameIndex,
    required this.version,
  });

  int gameIndex;
  Species version;
}

class HeldItem {
  HeldItem({
    required this.item,
    required this.versionDetails,
  });

  Species item;
  List<VersionDetail> versionDetails;
}

class VersionDetail {
  VersionDetail({
    required this.rarity,
    required this.version,
  });

  int rarity;
  Species version;
}

class Move {
  Move({
    required this.move,
    required this.versionGroupDetails,
  });

  Species move;
  List<VersionGroupDetail> versionGroupDetails;
}

class VersionGroupDetail {
  VersionGroupDetail({
    required this.levelLearnedAt,
    required this.moveLearnMethod,
    required this.versionGroup,
  });

  int levelLearnedAt;
  Species moveLearnMethod;
  Species versionGroup;
}

class GenerationV {
  GenerationV({
    required this.blackWhite,
  });

  Sprites blackWhite;
}

class GenerationIv {
  GenerationIv({
    required this.diamondPearl,
    required this.heartgoldSoulsilver,
    required this.platinum,
  });

  Sprites diamondPearl;
  Sprites heartgoldSoulsilver;
  Sprites platinum;
}

class Versions {
  Versions({
    required this.generationI,
    required this.generationIi,
    required this.generationIii,
    required this.generationIv,
    required this.generationV,
    required this.generationVi,
    required this.generationVii,
    required this.generationViii,
  });

  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  Map<String, Home> generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;
}

class Sprites {
  Sprites({
    required this.backDefault,
    required this.backFemale,
    required this.backShiny,
    required this.backShinyFemale,
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
    required this.other,
    required this.versions,
    required this.animated,
  });

  String backDefault;
  dynamic backFemale;
  String backShiny;
  dynamic backShinyFemale;
  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
  Other other;
  Versions versions;
  Sprites animated;
}

class GenerationI {
  GenerationI({
    required this.redBlue,
    required this.yellow,
  });

  RedBlue redBlue;
  RedBlue yellow;
}

class RedBlue {
  RedBlue({
    required this.backDefault,
    required this.backGray,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontGray,
    required this.frontTransparent,
  });

  String backDefault;
  String backGray;
  String backTransparent;
  String frontDefault;
  String frontGray;
  String frontTransparent;
}

class GenerationIi {
  GenerationIi({
    required this.crystal,
    required this.gold,
    required this.silver,
  });

  Crystal crystal;
  Gold gold;
  Gold silver;
}

class Crystal {
  Crystal({
    required this.backDefault,
    required this.backShiny,
    required this.backShinyTransparent,
    required this.backTransparent,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontShinyTransparent,
    required this.frontTransparent,
  });

  String backDefault;
  String backShiny;
  String backShinyTransparent;
  String backTransparent;
  String frontDefault;
  String frontShiny;
  String frontShinyTransparent;
  String frontTransparent;
}

class Gold {
  Gold({
    required this.backDefault,
    required this.backShiny,
    required this.frontDefault,
    required this.frontShiny,
    required this.frontTransparent,
  });

  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;
  String frontTransparent;
}

class GenerationIii {
  GenerationIii({
    required this.emerald,
    required this.fireredLeafgreen,
    required this.rubySapphire,
  });

  Emerald emerald;
  Gold fireredLeafgreen;
  Gold rubySapphire;
}

class Emerald {
  Emerald({
    required this.frontDefault,
    required this.frontShiny,
  });

  String frontDefault;
  String frontShiny;
}

class Home {
  Home({
    required this.frontDefault,
    required this.frontFemale,
    required this.frontShiny,
    required this.frontShinyFemale,
  });

  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;
}

class GenerationVii {
  GenerationVii({
    required this.icons,
    required this.ultraSunUltraMoon,
  });

  DreamWorld icons;
  Home ultraSunUltraMoon;
}

class DreamWorld {
  DreamWorld({
    required this.frontDefault,
    required this.frontFemale,
  });

  String frontDefault;
  dynamic frontFemale;
}

class GenerationViii {
  GenerationViii({
    required this.icons,
  });

  DreamWorld icons;
}

class Other {
  Other({
    required this.dreamWorld,
    required this.home,
    required this.officialArtwork,
  });

  DreamWorld dreamWorld;
  Home home;
  OfficialArtwork officialArtwork;
}

class OfficialArtwork {
  OfficialArtwork({
    required this.frontDefault,
  });

  String frontDefault;
}

class Stat {
  Stat({
    required this.baseStat,
    required this.effort,
    required this.stat,
  });

  int baseStat;
  int effort;
  Species stat;
}

class Type {
  Type({
    required this.slot,
    required this.type,
  });

  int slot;
  Species type;
}
