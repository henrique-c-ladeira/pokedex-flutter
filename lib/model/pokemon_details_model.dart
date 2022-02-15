import 'package:myflutterapp/entities/pokemon_details_entity.dart';

class PokemonDetails {
  List<Abilities>? abilities;
  int? baseExperience;
  List<Forms>? forms;
  List<GameIndices>? gameIndices;
  int? height;
  List<HeldItems>? heldItems;
  int? id;
  bool? isDefault;
  String? locationAreaEncounters;
  List<Moves>? moves;
  String? name;
  int? order;
  List<dynamic>? pastTypes;
  Species? species;
  Sprites? sprites;
  List<Stats>? stats;
  List<Types>? types;
  int? weight;

  PokemonDetails(
      {this.abilities,
      this.baseExperience,
      this.forms,
      this.gameIndices,
      this.height,
      this.heldItems,
      this.id,
      this.isDefault,
      this.locationAreaEncounters,
      this.moves,
      this.name,
      this.order,
      this.pastTypes,
      this.species,
      this.sprites,
      this.stats,
      this.types,
      this.weight});

  PokemonDetailsEntity toEntity() {
    return PokemonDetailsEntity(
      name: name!,
      image: sprites!.other!.officialArtwork!.frontDefault!,
      stats: stats!,
      type: types!.map((e) => e.type!.name!).toList(),
    );
  }

  PokemonDetails.fromJson(Map<String, dynamic> json) {
    if (json["abilities"] is List) {
      abilities = json["abilities"] == null
          ? null
          : (json["abilities"] as List)
              .map((e) => Abilities.fromJson(e))
              .toList();
    }
    if (json["base_experience"] is int) {
      baseExperience = json["base_experience"];
    }
    if (json["forms"] is List) {
      forms = json["forms"] == null
          ? null
          : (json["forms"] as List).map((e) => Forms.fromJson(e)).toList();
    }
    if (json["game_indices"] is List) {
      gameIndices = json["game_indices"] == null
          ? null
          : (json["game_indices"] as List)
              .map((e) => GameIndices.fromJson(e))
              .toList();
    }
    if (json["height"] is int) height = json["height"];
    if (json["held_items"] is List) {
      heldItems = json["held_items"] == null
          ? null
          : (json["held_items"] as List)
              .map((e) => HeldItems.fromJson(e))
              .toList();
    }
    if (json["id"] is int) id = json["id"];
    if (json["is_default"] is bool) isDefault = json["is_default"];
    if (json["location_area_encounters"] is String) {
      locationAreaEncounters = json["location_area_encounters"];
    }
    if (json["moves"] is List) {
      moves = json["moves"] == null
          ? null
          : (json["moves"] as List).map((e) => Moves.fromJson(e)).toList();
    }
    if (json["name"] is String) name = json["name"];
    if (json["order"] is int) order = json["order"];
    if (json["past_types"] is List) pastTypes = json["past_types"] ?? [];
    if (json["species"] is Map) {
      species =
          json["species"] == null ? null : Species.fromJson(json["species"]);
    }
    if (json["sprites"] is Map) {
      sprites =
          json["sprites"] == null ? null : Sprites.fromJson(json["sprites"]);
    }
    if (json["stats"] is List) {
      stats = json["stats"] == null
          ? null
          : (json["stats"] as List).map((e) => Stats.fromJson(e)).toList();
    }
    if (json["types"] is List) {
      types = json["types"] == null
          ? null
          : (json["types"] as List).map((e) => Types.fromJson(e)).toList();
    }
    if (json["weight"] is int) weight = json["weight"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (abilities != null) {
      data["abilities"] = abilities?.map((e) => e.toJson()).toList();
    }
    data["base_experience"] = baseExperience;
    if (forms != null) {
      data["forms"] = forms?.map((e) => e.toJson()).toList();
    }
    if (gameIndices != null) {
      data["game_indices"] = gameIndices?.map((e) => e.toJson()).toList();
    }
    data["height"] = height;
    if (heldItems != null) {
      data["held_items"] = heldItems?.map((e) => e.toJson()).toList();
    }
    data["id"] = id;
    data["is_default"] = isDefault;
    data["location_area_encounters"] = locationAreaEncounters;
    if (moves != null) {
      data["moves"] = moves?.map((e) => e.toJson()).toList();
    }
    data["name"] = name;
    data["order"] = order;
    if (pastTypes != null) data["past_types"] = pastTypes;
    if (species != null) data["species"] = species?.toJson();
    if (sprites != null) data["sprites"] = sprites?.toJson();
    if (stats != null) {
      data["stats"] = stats?.map((e) => e.toJson()).toList();
    }
    if (types != null) {
      data["types"] = types?.map((e) => e.toJson()).toList();
    }
    data["weight"] = weight;
    return data;
  }
}

class Types {
  int? slot;
  Type? type;

  Types({this.slot, this.type});

  Types.fromJson(Map<String, dynamic> json) {
    if (json["slot"] is int) slot = json["slot"];
    if (json["type"] is Map) {
      type = json["type"] == null ? null : Type.fromJson(json["type"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["slot"] = slot;
    if (type != null) data["type"] = type?.toJson();
    return data;
  }
}

class Type {
  String? name;
  String? url;

  Type({this.name, this.url});

  Type.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Stats {
  int? baseStat;
  int? effort;
  Stat? stat;

  Stats({this.baseStat, this.effort, this.stat});

  Stats.fromJson(Map<String, dynamic> json) {
    if (json["base_stat"] is int) baseStat = json["base_stat"];
    if (json["effort"] is int) effort = json["effort"];
    if (json["stat"] is Map) {
      stat = json["stat"] == null ? null : Stat.fromJson(json["stat"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["base_stat"] = baseStat;
    data["effort"] = effort;
    if (stat != null) data["stat"] = stat?.toJson();
    return data;
  }
}

class Stat {
  String? name;
  String? url;

  Stat({this.name, this.url});

  Stat.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Sprites {
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;
  Other? other;
  Versions? versions;

  Sprites(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale,
      this.other,
      this.versions});

  Sprites.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
    if (json["other"] is Map) {
      other = json["other"] == null ? null : Other.fromJson(json["other"]);
    }
    if (json["versions"] is Map) {
      versions =
          json["versions"] == null ? null : Versions.fromJson(json["versions"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    if (other != null) data["other"] = other?.toJson();
    if (versions != null) data["versions"] = versions?.toJson();
    return data;
  }
}

class Versions {
  GenerationI? generationI;
  GenerationIi? generationIi;
  GenerationIii? generationIii;
  GenerationIv? generationIv;
  GenerationV? generationV;
  GenerationVi? generationVi;
  GenerationVii? generationVii;
  GenerationViii? generationViii;

  Versions(
      {this.generationI,
      this.generationIi,
      this.generationIii,
      this.generationIv,
      this.generationV,
      this.generationVi,
      this.generationVii,
      this.generationViii});

  Versions.fromJson(Map<String, dynamic> json) {
    if (json["generation-i"] is Map) {
      generationI = json["generation-i"] == null
          ? null
          : GenerationI.fromJson(json["generation-i"]);
    }
    if (json["generation-ii"] is Map) {
      generationIi = json["generation-ii"] == null
          ? null
          : GenerationIi.fromJson(json["generation-ii"]);
    }
    if (json["generation-iii"] is Map) {
      generationIii = json["generation-iii"] == null
          ? null
          : GenerationIii.fromJson(json["generation-iii"]);
    }
    if (json["generation-iv"] is Map) {
      generationIv = json["generation-iv"] == null
          ? null
          : GenerationIv.fromJson(json["generation-iv"]);
    }
    if (json["generation-v"] is Map) {
      generationV = json["generation-v"] == null
          ? null
          : GenerationV.fromJson(json["generation-v"]);
    }
    if (json["generation-vi"] is Map) {
      generationVi = json["generation-vi"] == null
          ? null
          : GenerationVi.fromJson(json["generation-vi"]);
    }
    if (json["generation-vii"] is Map) {
      generationVii = json["generation-vii"] == null
          ? null
          : GenerationVii.fromJson(json["generation-vii"]);
    }
    if (json["generation-viii"] is Map) {
      generationViii = json["generation-viii"] == null
          ? null
          : GenerationViii.fromJson(json["generation-viii"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generationI != null) {
      data["generation-i"] = generationI?.toJson();
    }
    if (generationIi != null) {
      data["generation-ii"] = generationIi?.toJson();
    }
    if (generationIii != null) {
      data["generation-iii"] = generationIii?.toJson();
    }
    if (generationIv != null) {
      data["generation-iv"] = generationIv?.toJson();
    }
    if (generationV != null) {
      data["generation-v"] = generationV?.toJson();
    }
    if (generationVi != null) {
      data["generation-vi"] = generationVi?.toJson();
    }
    if (generationVii != null) {
      data["generation-vii"] = generationVii?.toJson();
    }
    if (generationViii != null) {
      data["generation-viii"] = generationViii?.toJson();
    }
    return data;
  }
}

class GenerationViii {
  Icons1? icons;

  GenerationViii({this.icons});

  GenerationViii.fromJson(Map<String, dynamic> json) {
    if (json["icons"] is Map) {
      icons = json["icons"] == null ? null : Icons1.fromJson(json["icons"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) data["icons"] = icons?.toJson();
    return data;
  }
}

class Icons1 {
  String? frontDefault;
  dynamic? frontFemale;

  Icons1({this.frontDefault, this.frontFemale});

  Icons1.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    return data;
  }
}

class GenerationVii {
  Icons? icons;
  UltraSunUltraMoon? ultraSunUltraMoon;

  GenerationVii({this.icons, this.ultraSunUltraMoon});

  GenerationVii.fromJson(Map<String, dynamic> json) {
    if (json["icons"] is Map) {
      icons = json["icons"] == null ? null : Icons.fromJson(json["icons"]);
    }
    if (json["ultra-sun-ultra-moon"] is Map) {
      ultraSunUltraMoon = json["ultra-sun-ultra-moon"] == null
          ? null
          : UltraSunUltraMoon.fromJson(json["ultra-sun-ultra-moon"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (icons != null) data["icons"] = icons?.toJson();
    if (ultraSunUltraMoon != null) {
      data["ultra-sun-ultra-moon"] = ultraSunUltraMoon?.toJson();
    }
    return data;
  }
}

class UltraSunUltraMoon {
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  UltraSunUltraMoon(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  UltraSunUltraMoon.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class Icons {
  String? frontDefault;
  dynamic? frontFemale;

  Icons({this.frontDefault, this.frontFemale});

  Icons.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    return data;
  }
}

class GenerationVi {
  OmegarubyAlphasapphire? omegarubyAlphasapphire;
  XY? xY;

  GenerationVi({this.omegarubyAlphasapphire, this.xY});

  GenerationVi.fromJson(Map<String, dynamic> json) {
    if (json["omegaruby-alphasapphire"] is Map) {
      omegarubyAlphasapphire = json["omegaruby-alphasapphire"] == null
          ? null
          : OmegarubyAlphasapphire.fromJson(json["omegaruby-alphasapphire"]);
    }
    if (json["x-y"] is Map) {
      xY = json["x-y"] == null ? null : XY.fromJson(json["x-y"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (omegarubyAlphasapphire != null) {
      data["omegaruby-alphasapphire"] = omegarubyAlphasapphire?.toJson();
    }
    if (xY != null) data["x-y"] = xY?.toJson();
    return data;
  }
}

class XY {
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  XY(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  XY.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class OmegarubyAlphasapphire {
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  OmegarubyAlphasapphire(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  OmegarubyAlphasapphire.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class GenerationV {
  BlackWhite? blackWhite;

  GenerationV({this.blackWhite});

  GenerationV.fromJson(Map<String, dynamic> json) {
    if (json["black-white"] is Map) {
      blackWhite = json["black-white"] == null
          ? null
          : BlackWhite.fromJson(json["black-white"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (blackWhite != null) {
      data["black-white"] = blackWhite?.toJson();
    }
    return data;
  }
}

class BlackWhite {
  Animated? animated;
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  BlackWhite(
      {this.animated,
      this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  BlackWhite.fromJson(Map<String, dynamic> json) {
    if (json["animated"] is Map) {
      animated =
          json["animated"] == null ? null : Animated.fromJson(json["animated"]);
    }
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (animated != null) data["animated"] = animated?.toJson();
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class Animated {
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  Animated(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  Animated.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class GenerationIv {
  DiamondPearl? diamondPearl;
  HeartgoldSoulsilver? heartgoldSoulsilver;
  Platinum? platinum;

  GenerationIv({this.diamondPearl, this.heartgoldSoulsilver, this.platinum});

  GenerationIv.fromJson(Map<String, dynamic> json) {
    if (json["diamond-pearl"] is Map) {
      diamondPearl = json["diamond-pearl"] == null
          ? null
          : DiamondPearl.fromJson(json["diamond-pearl"]);
    }
    if (json["heartgold-soulsilver"] is Map) {
      heartgoldSoulsilver = json["heartgold-soulsilver"] == null
          ? null
          : HeartgoldSoulsilver.fromJson(json["heartgold-soulsilver"]);
    }
    if (json["platinum"] is Map) {
      platinum =
          json["platinum"] == null ? null : Platinum.fromJson(json["platinum"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (diamondPearl != null) {
      data["diamond-pearl"] = diamondPearl?.toJson();
    }
    if (heartgoldSoulsilver != null) {
      data["heartgold-soulsilver"] = heartgoldSoulsilver?.toJson();
    }
    if (platinum != null) data["platinum"] = platinum?.toJson();
    return data;
  }
}

class Platinum {
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  Platinum(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  Platinum.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class HeartgoldSoulsilver {
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  HeartgoldSoulsilver(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  HeartgoldSoulsilver.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class DiamondPearl {
  String? backDefault;
  dynamic? backFemale;
  String? backShiny;
  dynamic? backShinyFemale;
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  DiamondPearl(
      {this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  DiamondPearl.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    backFemale = json["back_female"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    backShinyFemale = json["back_shiny_female"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_female"] = backFemale;
    data["back_shiny"] = backShiny;
    data["back_shiny_female"] = backShinyFemale;
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class GenerationIii {
  Emerald? emerald;
  FireredLeafgreen? fireredLeafgreen;
  RubySapphire? rubySapphire;

  GenerationIii({this.emerald, this.fireredLeafgreen, this.rubySapphire});

  GenerationIii.fromJson(Map<String, dynamic> json) {
    if (json["emerald"] is Map) {
      emerald =
          json["emerald"] == null ? null : Emerald.fromJson(json["emerald"]);
    }
    if (json["firered-leafgreen"] is Map) {
      fireredLeafgreen = json["firered-leafgreen"] == null
          ? null
          : FireredLeafgreen.fromJson(json["firered-leafgreen"]);
    }
    if (json["ruby-sapphire"] is Map) {
      rubySapphire = json["ruby-sapphire"] == null
          ? null
          : RubySapphire.fromJson(json["ruby-sapphire"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (emerald != null) data["emerald"] = emerald?.toJson();
    if (fireredLeafgreen != null) {
      data["firered-leafgreen"] = fireredLeafgreen?.toJson();
    }
    if (rubySapphire != null) {
      data["ruby-sapphire"] = rubySapphire?.toJson();
    }
    return data;
  }
}

class RubySapphire {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  RubySapphire(
      {this.backDefault, this.backShiny, this.frontDefault, this.frontShiny});

  RubySapphire.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_shiny"] = backShiny;
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    return data;
  }
}

class FireredLeafgreen {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;

  FireredLeafgreen(
      {this.backDefault, this.backShiny, this.frontDefault, this.frontShiny});

  FireredLeafgreen.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_shiny"] = backShiny;
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    return data;
  }
}

class Emerald {
  String? frontDefault;
  String? frontShiny;

  Emerald({this.frontDefault, this.frontShiny});

  Emerald.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    return data;
  }
}

class GenerationIi {
  Crystal? crystal;
  Gold? gold;
  Silver? silver;

  GenerationIi({this.crystal, this.gold, this.silver});

  GenerationIi.fromJson(Map<String, dynamic> json) {
    if (json["crystal"] is Map) {
      crystal =
          json["crystal"] == null ? null : Crystal.fromJson(json["crystal"]);
    }
    if (json["gold"] is Map) {
      gold = json["gold"] == null ? null : Gold.fromJson(json["gold"]);
    }
    if (json["silver"] is Map) {
      silver = json["silver"] == null ? null : Silver.fromJson(json["silver"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (crystal != null) data["crystal"] = crystal?.toJson();
    if (gold != null) data["gold"] = gold?.toJson();
    if (silver != null) data["silver"] = silver?.toJson();
    return data;
  }
}

class Silver {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  String? frontTransparent;

  Silver(
      {this.backDefault,
      this.backShiny,
      this.frontDefault,
      this.frontShiny,
      this.frontTransparent});

  Silver.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    if (json["front_transparent"] is String) {
      frontTransparent = json["front_transparent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_shiny"] = backShiny;
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    data["front_transparent"] = frontTransparent;
    return data;
  }
}

class Gold {
  String? backDefault;
  String? backShiny;
  String? frontDefault;
  String? frontShiny;
  String? frontTransparent;

  Gold(
      {this.backDefault,
      this.backShiny,
      this.frontDefault,
      this.frontShiny,
      this.frontTransparent});

  Gold.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    if (json["front_transparent"] is String) {
      frontTransparent = json["front_transparent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_shiny"] = backShiny;
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    data["front_transparent"] = frontTransparent;
    return data;
  }
}

class Crystal {
  String? backDefault;
  String? backShiny;
  String? backShinyTransparent;
  String? backTransparent;
  String? frontDefault;
  String? frontShiny;
  String? frontShinyTransparent;
  String? frontTransparent;

  Crystal(
      {this.backDefault,
      this.backShiny,
      this.backShinyTransparent,
      this.backTransparent,
      this.frontDefault,
      this.frontShiny,
      this.frontShinyTransparent,
      this.frontTransparent});

  Crystal.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_shiny"] is String) backShiny = json["back_shiny"];
    if (json["back_shiny_transparent"] is String) {
      backShinyTransparent = json["back_shiny_transparent"];
    }
    if (json["back_transparent"] is String) {
      backTransparent = json["back_transparent"];
    }
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    if (json["front_shiny_transparent"] is String) {
      frontShinyTransparent = json["front_shiny_transparent"];
    }
    if (json["front_transparent"] is String) {
      frontTransparent = json["front_transparent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["back_default"] = backDefault;
    data["back_shiny"] = backShiny;
    data["back_shiny_transparent"] = backShinyTransparent;
    data["back_transparent"] = backTransparent;
    data["front_default"] = frontDefault;
    data["front_shiny"] = frontShiny;
    data["front_shiny_transparent"] = frontShinyTransparent;
    data["front_transparent"] = frontTransparent;
    return data;
  }
}

class GenerationI {
  RedBlue? redBlue;
  Yellow? yellow;

  GenerationI({this.redBlue, this.yellow});

  GenerationI.fromJson(Map<String, dynamic> json) {
    if (json["red-blue"] is Map) {
      redBlue =
          json["red-blue"] == null ? null : RedBlue.fromJson(json["red-blue"]);
    }
    if (json["yellow"] is Map) {
      yellow = json["yellow"] == null ? null : Yellow.fromJson(json["yellow"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (redBlue != null) data["red-blue"] = redBlue?.toJson();
    if (yellow != null) data["yellow"] = yellow?.toJson();
    return data;
  }
}

class Yellow {
  String? backDefault;
  String? backGray;
  String? backTransparent;
  String? frontDefault;
  String? frontGray;
  String? frontTransparent;

  Yellow(
      {this.backDefault,
      this.backGray,
      this.backTransparent,
      this.frontDefault,
      this.frontGray,
      this.frontTransparent});

  Yellow.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_gray"] is String) backGray = json["back_gray"];
    if (json["back_transparent"] is String) {
      backTransparent = json["back_transparent"];
    }
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_gray"] is String) frontGray = json["front_gray"];
    if (json["front_transparent"] is String) {
      frontTransparent = json["front_transparent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_gray"] = backGray;
    data["back_transparent"] = backTransparent;
    data["front_default"] = frontDefault;
    data["front_gray"] = frontGray;
    data["front_transparent"] = frontTransparent;
    return data;
  }
}

class RedBlue {
  String? backDefault;
  String? backGray;
  String? backTransparent;
  String? frontDefault;
  String? frontGray;
  String? frontTransparent;

  RedBlue(
      {this.backDefault,
      this.backGray,
      this.backTransparent,
      this.frontDefault,
      this.frontGray,
      this.frontTransparent});

  RedBlue.fromJson(Map<String, dynamic> json) {
    if (json["back_default"] is String) backDefault = json["back_default"];
    if (json["back_gray"] is String) backGray = json["back_gray"];
    if (json["back_transparent"] is String) {
      backTransparent = json["back_transparent"];
    }
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    if (json["front_gray"] is String) frontGray = json["front_gray"];
    if (json["front_transparent"] is String) {
      frontTransparent = json["front_transparent"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["back_default"] = backDefault;
    data["back_gray"] = backGray;
    data["back_transparent"] = backTransparent;
    data["front_default"] = frontDefault;
    data["front_gray"] = frontGray;
    data["front_transparent"] = frontTransparent;
    return data;
  }
}

class Other {
  DreamWorld? dreamWorld;
  Home? home;
  OfficialArtwork? officialArtwork;

  Other({this.dreamWorld, this.home, this.officialArtwork});

  Other.fromJson(Map<String, dynamic> json) {
    if (json["dream_world"] is Map) {
      dreamWorld = json["dream_world"] == null
          ? null
          : DreamWorld.fromJson(json["dream_world"]);
    }
    if (json["home"] is Map) {
      home = json["home"] == null ? null : Home.fromJson(json["home"]);
    }
    if (json["official-artwork"] is Map) {
      officialArtwork = json["official-artwork"] == null
          ? null
          : OfficialArtwork.fromJson(json["official-artwork"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (dreamWorld != null) {
      data["dream_world"] = dreamWorld?.toJson();
    }
    if (home != null) data["home"] = home?.toJson();
    if (officialArtwork != null) {
      data["official-artwork"] = officialArtwork?.toJson();
    }
    return data;
  }
}

class OfficialArtwork {
  String? frontDefault;

  OfficialArtwork({this.frontDefault});

  OfficialArtwork.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["front_default"] = frontDefault;
    return data;
  }
}

class Home {
  String? frontDefault;
  dynamic? frontFemale;
  String? frontShiny;
  dynamic? frontShinyFemale;

  Home(
      {this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale});

  Home.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
    if (json["front_shiny"] is String) frontShiny = json["front_shiny"];
    frontShinyFemale = json["front_shiny_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    data["front_shiny"] = frontShiny;
    data["front_shiny_female"] = frontShinyFemale;
    return data;
  }
}

class DreamWorld {
  String? frontDefault;
  dynamic? frontFemale;

  DreamWorld({this.frontDefault, this.frontFemale});

  DreamWorld.fromJson(Map<String, dynamic> json) {
    if (json["front_default"] is String) {
      frontDefault = json["front_default"];
    }
    frontFemale = json["front_female"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["front_default"] = frontDefault;
    data["front_female"] = frontFemale;
    return data;
  }
}

class Species {
  String? name;
  String? url;

  Species({this.name, this.url});

  Species.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Moves {
  Move? move;
  List<VersionGroupDetails>? versionGroupDetails;

  Moves({this.move, this.versionGroupDetails});

  Moves.fromJson(Map<String, dynamic> json) {
    if (json["move"] is Map) {
      move = json["move"] == null ? null : Move.fromJson(json["move"]);
    }
    if (json["version_group_details"] is List) {
      versionGroupDetails = json["version_group_details"] == null
          ? null
          : (json["version_group_details"] as List)
              .map((e) => VersionGroupDetails.fromJson(e))
              .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (move != null) data["move"] = move?.toJson();
    if (versionGroupDetails != null) {
      data["version_group_details"] =
          versionGroupDetails?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class VersionGroupDetails {
  int? levelLearnedAt;
  MoveLearnMethod? moveLearnMethod;
  VersionGroup? versionGroup;

  VersionGroupDetails(
      {this.levelLearnedAt, this.moveLearnMethod, this.versionGroup});

  VersionGroupDetails.fromJson(Map<String, dynamic> json) {
    if (json["level_learned_at"] is int) {
      levelLearnedAt = json["level_learned_at"];
    }
    if (json["move_learn_method"] is Map) {
      moveLearnMethod = json["move_learn_method"] == null
          ? null
          : MoveLearnMethod.fromJson(json["move_learn_method"]);
    }
    if (json["version_group"] is Map) {
      versionGroup = json["version_group"] == null
          ? null
          : VersionGroup.fromJson(json["version_group"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["level_learned_at"] = levelLearnedAt;
    if (moveLearnMethod != null) {
      data["move_learn_method"] = moveLearnMethod?.toJson();
    }
    if (versionGroup != null) {
      data["version_group"] = versionGroup?.toJson();
    }
    return data;
  }
}

class VersionGroup {
  String? name;
  String? url;

  VersionGroup({this.name, this.url});

  VersionGroup.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class MoveLearnMethod {
  String? name;
  String? url;

  MoveLearnMethod({this.name, this.url});

  MoveLearnMethod.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Move {
  String? name;
  String? url;

  Move({this.name, this.url});

  Move.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class HeldItems {
  Item? item;
  List<VersionDetails>? versionDetails;

  HeldItems({this.item, this.versionDetails});

  HeldItems.fromJson(Map<String, dynamic> json) {
    if (json["item"] is Map) {
      item = json["item"] == null ? null : Item.fromJson(json["item"]);
    }
    if (json["version_details"] is List) {
      versionDetails = json["version_details"] == null
          ? null
          : (json["version_details"] as List)
              .map((e) => VersionDetails.fromJson(e))
              .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (item != null) data["item"] = item?.toJson();
    if (versionDetails != null) {
      data["version_details"] = versionDetails?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}

class VersionDetails {
  int? rarity;
  Version1? version;

  VersionDetails({this.rarity, this.version});

  VersionDetails.fromJson(Map<String, dynamic> json) {
    if (json["rarity"] is int) rarity = json["rarity"];
    if (json["version"] is Map) {
      version =
          json["version"] == null ? null : Version1.fromJson(json["version"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["rarity"] = rarity;
    if (version != null) data["version"] = version?.toJson();
    return data;
  }
}

class Version1 {
  String? name;
  String? url;

  Version1({this.name, this.url});

  Version1.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Item {
  String? name;
  String? url;

  Item({this.name, this.url});

  Item.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class GameIndices {
  int? gameIndex;
  Version? version;

  GameIndices({this.gameIndex, this.version});

  GameIndices.fromJson(Map<String, dynamic> json) {
    if (json["game_index"] is int) gameIndex = json["game_index"];
    if (json["version"] is Map) {
      version =
          json["version"] == null ? null : Version.fromJson(json["version"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["game_index"] = gameIndex;
    if (version != null) data["version"] = version?.toJson();
    return data;
  }
}

class Version {
  String? name;
  String? url;

  Version({this.name, this.url});

  Version.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Forms {
  String? name;
  String? url;

  Forms({this.name, this.url});

  Forms.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

class Abilities {
  Ability? ability;
  bool? isHidden;
  int? slot;

  Abilities({this.ability, this.isHidden, this.slot});

  Abilities.fromJson(Map<String, dynamic> json) {
    if (json["ability"] is Map) {
      ability =
          json["ability"] == null ? null : Ability.fromJson(json["ability"]);
    }
    if (json["is_hidden"] is bool) isHidden = json["is_hidden"];
    if (json["slot"] is int) slot = json["slot"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (ability != null) data["ability"] = ability?.toJson();
    data["is_hidden"] = isHidden;
    data["slot"] = slot;
    return data;
  }
}

class Ability {
  String? name;
  String? url;

  Ability({this.name, this.url});

  Ability.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) name = json["name"];
    if (json["url"] is String) url = json["url"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}
