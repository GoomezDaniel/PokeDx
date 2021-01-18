import 'dart:convert';

/// Modelo constructor del json que devuelve los valores del pokemon
class PokeData {
  PokeData({
    this.abilities,
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
    this.species,
    this.sprites,
    this.stats,
    this.types,
    this.weight,
  });

  List<Ability> abilities;
  int baseExperience;
  List<Species> forms;
  List<GameIndex> gameIndices;
  int height;
  List<dynamic> heldItems;
  int id;
  bool isDefault;
  String locationAreaEncounters;
  List<Move> moves;
  String name;
  int order;
  Species species;
  Sprites sprites;
  List<Stat> stats;
  List<Type> types;
  int weight;

  PokeData copyWith({
    List<Ability> abilities,
    int baseExperience,
    List<Species> forms,
    List<GameIndex> gameIndices,
    int height,
    List<dynamic> heldItems,
    int id,
    bool isDefault,
    String locationAreaEncounters,
    List<Move> moves,
    String name,
    int order,
    Species species,
    Sprites sprites,
    List<Stat> stats,
    List<Type> types,
    int weight,
  }) =>
      PokeData(
        abilities: abilities ?? this.abilities,
        baseExperience: baseExperience ?? this.baseExperience,
        forms: forms ?? this.forms,
        gameIndices: gameIndices ?? this.gameIndices,
        height: height ?? this.height,
        heldItems: heldItems ?? this.heldItems,
        id: id ?? this.id,
        isDefault: isDefault ?? this.isDefault,
        locationAreaEncounters:
            locationAreaEncounters ?? this.locationAreaEncounters,
        moves: moves ?? this.moves,
        name: name ?? this.name,
        order: order ?? this.order,
        species: species ?? this.species,
        sprites: sprites ?? this.sprites,
        stats: stats ?? this.stats,
        types: types ?? this.types,
        weight: weight ?? this.weight,
      );

  factory PokeData.fromJson(String str) => PokeData.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokeData.fromMap(Map<String, dynamic> json) => PokeData(
        abilities: json["abilities"] == null
            ? null
            : List<Ability>.from(
                json["abilities"].map((x) => Ability.fromMap(x))),
        baseExperience:
            json["base_experience"] == null ? null : json["base_experience"],
        forms: json["forms"] == null
            ? null
            : List<Species>.from(json["forms"].map((x) => Species.fromMap(x))),
        gameIndices: json["game_indices"] == null
            ? null
            : List<GameIndex>.from(
                json["game_indices"].map((x) => GameIndex.fromMap(x))),
        height: json["height"] == null ? null : json["height"],
        heldItems: json["held_items"] == null
            ? null
            : List<dynamic>.from(json["held_items"].map((x) => x)),
        id: json["id"] == null ? null : json["id"],
        isDefault: json["is_default"] == null ? null : json["is_default"],
        locationAreaEncounters: json["location_area_encounters"] == null
            ? null
            : json["location_area_encounters"],
        moves: json["moves"] == null
            ? null
            : List<Move>.from(json["moves"].map((x) => Move.fromMap(x))),
        name: json["name"] == null ? null : json["name"],
        order: json["order"] == null ? null : json["order"],
        species:
            json["species"] == null ? null : Species.fromMap(json["species"]),
        sprites:
            json["sprites"] == null ? null : Sprites.fromMap(json["sprites"]),
        stats: json["stats"] == null
            ? null
            : List<Stat>.from(json["stats"].map((x) => Stat.fromMap(x))),
        types: json["types"] == null
            ? null
            : List<Type>.from(json["types"].map((x) => Type.fromMap(x))),
        weight: json["weight"] == null ? null : json["weight"],
      );

  Map<String, dynamic> toMap() => {
        "abilities": abilities == null
            ? null
            : List<dynamic>.from(abilities.map((x) => x.toMap())),
        "base_experience": baseExperience == null ? null : baseExperience,
        "forms": forms == null
            ? null
            : List<dynamic>.from(forms.map((x) => x.toMap())),
        "game_indices": gameIndices == null
            ? null
            : List<dynamic>.from(gameIndices.map((x) => x.toMap())),
        "height": height == null ? null : height,
        "held_items": heldItems == null
            ? null
            : List<dynamic>.from(heldItems.map((x) => x)),
        "id": id == null ? null : id,
        "is_default": isDefault == null ? null : isDefault,
        "location_area_encounters":
            locationAreaEncounters == null ? null : locationAreaEncounters,
        "moves": moves == null
            ? null
            : List<dynamic>.from(moves.map((x) => x.toMap())),
        "name": name == null ? null : name,
        "order": order == null ? null : order,
        "species": species == null ? null : species.toMap(),
        "sprites": sprites == null ? null : sprites.toMap(),
        "stats": stats == null
            ? null
            : List<dynamic>.from(stats.map((x) => x.toMap())),
        "types": types == null
            ? null
            : List<dynamic>.from(types.map((x) => x.toMap())),
        "weight": weight == null ? null : weight,
      };
}

class Ability {
  Ability({
    this.ability,
    this.isHidden,
    this.slot,
  });

  Species ability;
  bool isHidden;
  int slot;

  Ability copyWith({
    Species ability,
    bool isHidden,
    int slot,
  }) =>
      Ability(
        ability: ability ?? this.ability,
        isHidden: isHidden ?? this.isHidden,
        slot: slot ?? this.slot,
      );

  factory Ability.fromJson(String str) => Ability.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Ability.fromMap(Map<String, dynamic> json) => Ability(
        ability:
            json["ability"] == null ? null : Species.fromMap(json["ability"]),
        isHidden: json["is_hidden"] == null ? null : json["is_hidden"],
        slot: json["slot"] == null ? null : json["slot"],
      );

  Map<String, dynamic> toMap() => {
        "ability": ability == null ? null : ability.toMap(),
        "is_hidden": isHidden == null ? null : isHidden,
        "slot": slot == null ? null : slot,
      };
}

class Species {
  Species({
    this.name,
    this.url,
  });

  String name;
  String url;

  Species copyWith({
    String name,
    String url,
  }) =>
      Species(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory Species.fromJson(String str) => Species.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Species.fromMap(Map<String, dynamic> json) => Species(
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "url": url == null ? null : url,
      };
}

class GameIndex {
  GameIndex({
    this.gameIndex,
    this.version,
  });

  int gameIndex;
  Species version;

  GameIndex copyWith({
    int gameIndex,
    Species version,
  }) =>
      GameIndex(
        gameIndex: gameIndex ?? this.gameIndex,
        version: version ?? this.version,
      );

  factory GameIndex.fromJson(String str) => GameIndex.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GameIndex.fromMap(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"] == null ? null : json["game_index"],
        version:
            json["version"] == null ? null : Species.fromMap(json["version"]),
      );

  Map<String, dynamic> toMap() => {
        "game_index": gameIndex == null ? null : gameIndex,
        "version": version == null ? null : version.toMap(),
      };
}

class Move {
  Move({
    this.move,
    this.versionGroupDetails,
  });

  Species move;
  List<VersionGroupDetail> versionGroupDetails;

  Move copyWith({
    Species move,
    List<VersionGroupDetail> versionGroupDetails,
  }) =>
      Move(
        move: move ?? this.move,
        versionGroupDetails: versionGroupDetails ?? this.versionGroupDetails,
      );

  factory Move.fromJson(String str) => Move.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Move.fromMap(Map<String, dynamic> json) => Move(
        move: json["move"] == null ? null : Species.fromMap(json["move"]),
        versionGroupDetails: json["version_group_details"] == null
            ? null
            : List<VersionGroupDetail>.from(json["version_group_details"]
                .map((x) => VersionGroupDetail.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "move": move == null ? null : move.toMap(),
        "version_group_details": versionGroupDetails == null
            ? null
            : List<dynamic>.from(versionGroupDetails.map((x) => x.toMap())),
      };
}

class VersionGroupDetail {
  VersionGroupDetail({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  int levelLearnedAt;
  Species moveLearnMethod;
  Species versionGroup;

  VersionGroupDetail copyWith({
    int levelLearnedAt,
    Species moveLearnMethod,
    Species versionGroup,
  }) =>
      VersionGroupDetail(
        levelLearnedAt: levelLearnedAt ?? this.levelLearnedAt,
        moveLearnMethod: moveLearnMethod ?? this.moveLearnMethod,
        versionGroup: versionGroup ?? this.versionGroup,
      );

  factory VersionGroupDetail.fromJson(String str) =>
      VersionGroupDetail.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory VersionGroupDetail.fromMap(Map<String, dynamic> json) =>
      VersionGroupDetail(
        levelLearnedAt:
            json["level_learned_at"] == null ? null : json["level_learned_at"],
        moveLearnMethod: json["move_learn_method"] == null
            ? null
            : Species.fromMap(json["move_learn_method"]),
        versionGroup: json["version_group"] == null
            ? null
            : Species.fromMap(json["version_group"]),
      );

  Map<String, dynamic> toMap() => {
        "level_learned_at": levelLearnedAt == null ? null : levelLearnedAt,
        "move_learn_method":
            moveLearnMethod == null ? null : moveLearnMethod.toMap(),
        "version_group": versionGroup == null ? null : versionGroup.toMap(),
      };
}

class GenerationV {
  GenerationV({
    this.blackWhite,
  });

  Sprites blackWhite;

  GenerationV copyWith({
    Sprites blackWhite,
  }) =>
      GenerationV(
        blackWhite: blackWhite ?? this.blackWhite,
      );

  factory GenerationV.fromJson(String str) =>
      GenerationV.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationV.fromMap(Map<String, dynamic> json) => GenerationV(
        blackWhite: json["black-white"] == null
            ? null
            : Sprites.fromMap(json["black-white"]),
      );

  Map<String, dynamic> toMap() => {
        "black-white": blackWhite == null ? null : blackWhite.toMap(),
      };
}

class GenerationIv {
  GenerationIv({
    this.diamondPearl,
    this.heartgoldSoulsilver,
    this.platinum,
  });

  Sprites diamondPearl;
  Sprites heartgoldSoulsilver;
  Sprites platinum;

  GenerationIv copyWith({
    Sprites diamondPearl,
    Sprites heartgoldSoulsilver,
    Sprites platinum,
  }) =>
      GenerationIv(
        diamondPearl: diamondPearl ?? this.diamondPearl,
        heartgoldSoulsilver: heartgoldSoulsilver ?? this.heartgoldSoulsilver,
        platinum: platinum ?? this.platinum,
      );

  factory GenerationIv.fromJson(String str) =>
      GenerationIv.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIv.fromMap(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: json["diamond-pearl"] == null
            ? null
            : Sprites.fromMap(json["diamond-pearl"]),
        heartgoldSoulsilver: json["heartgold-soulsilver"] == null
            ? null
            : Sprites.fromMap(json["heartgold-soulsilver"]),
        platinum:
            json["platinum"] == null ? null : Sprites.fromMap(json["platinum"]),
      );

  Map<String, dynamic> toMap() => {
        "diamond-pearl": diamondPearl == null ? null : diamondPearl.toMap(),
        "heartgold-soulsilver":
            heartgoldSoulsilver == null ? null : heartgoldSoulsilver.toMap(),
        "platinum": platinum == null ? null : platinum.toMap(),
      };
}

class Versions {
  Versions({
    this.generationI,
    this.generationIi,
    this.generationIii,
    this.generationIv,
    this.generationV,
    this.generationVi,
    this.generationVii,
    this.generationViii,
  });

  GenerationI generationI;
  GenerationIi generationIi;
  GenerationIii generationIii;
  GenerationIv generationIv;
  GenerationV generationV;
  Map<String, GenerationVi> generationVi;
  GenerationVii generationVii;
  GenerationViii generationViii;

  Versions copyWith({
    GenerationI generationI,
    GenerationIi generationIi,
    GenerationIii generationIii,
    GenerationIv generationIv,
    GenerationV generationV,
    Map<String, GenerationVi> generationVi,
    GenerationVii generationVii,
    GenerationViii generationViii,
  }) =>
      Versions(
        generationI: generationI ?? this.generationI,
        generationIi: generationIi ?? this.generationIi,
        generationIii: generationIii ?? this.generationIii,
        generationIv: generationIv ?? this.generationIv,
        generationV: generationV ?? this.generationV,
        generationVi: generationVi ?? this.generationVi,
        generationVii: generationVii ?? this.generationVii,
        generationViii: generationViii ?? this.generationViii,
      );

  factory Versions.fromJson(String str) => Versions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Versions.fromMap(Map<String, dynamic> json) => Versions(
        generationI: json["generation-i"] == null
            ? null
            : GenerationI.fromMap(json["generation-i"]),
        generationIi: json["generation-ii"] == null
            ? null
            : GenerationIi.fromMap(json["generation-ii"]),
        generationIii: json["generation-iii"] == null
            ? null
            : GenerationIii.fromMap(json["generation-iii"]),
        generationIv: json["generation-iv"] == null
            ? null
            : GenerationIv.fromMap(json["generation-iv"]),
        generationV: json["generation-v"] == null
            ? null
            : GenerationV.fromMap(json["generation-v"]),
        generationVi: json["generation-vi"] == null
            ? null
            : Map.from(json["generation-vi"]).map((k, v) =>
                MapEntry<String, GenerationVi>(k, GenerationVi.fromMap(v))),
        generationVii: json["generation-vii"] == null
            ? null
            : GenerationVii.fromMap(json["generation-vii"]),
        generationViii: json["generation-viii"] == null
            ? null
            : GenerationViii.fromMap(json["generation-viii"]),
      );

  Map<String, dynamic> toMap() => {
        "generation-i": generationI == null ? null : generationI.toMap(),
        "generation-ii": generationIi == null ? null : generationIi.toMap(),
        "generation-iii": generationIii == null ? null : generationIii.toMap(),
        "generation-iv": generationIv == null ? null : generationIv.toMap(),
        "generation-v": generationV == null ? null : generationV.toMap(),
        "generation-vi": generationVi == null
            ? null
            : Map.from(generationVi)
                .map((k, v) => MapEntry<String, dynamic>(k, v.toMap())),
        "generation-vii": generationVii == null ? null : generationVii.toMap(),
        "generation-viii":
            generationViii == null ? null : generationViii.toMap(),
      };
}

class Sprites {
  Sprites({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
    this.versions,
    this.animated,
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

  Sprites copyWith({
    String backDefault,
    dynamic backFemale,
    String backShiny,
    dynamic backShinyFemale,
    String frontDefault,
    dynamic frontFemale,
    String frontShiny,
    dynamic frontShinyFemale,
    Other other,
    Versions versions,
    Sprites animated,
  }) =>
      Sprites(
        backDefault: backDefault ?? this.backDefault,
        backFemale: backFemale ?? this.backFemale,
        backShiny: backShiny ?? this.backShiny,
        backShinyFemale: backShinyFemale ?? this.backShinyFemale,
        frontDefault: frontDefault ?? this.frontDefault,
        frontFemale: frontFemale ?? this.frontFemale,
        frontShiny: frontShiny ?? this.frontShiny,
        frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
        other: other ?? this.other,
        versions: versions ?? this.versions,
        animated: animated ?? this.animated,
      );

  factory Sprites.fromJson(String str) => Sprites.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Sprites.fromMap(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"] == null ? null : json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"] == null ? null : json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"] == null ? null : json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
        other: json["other"] == null ? null : Other.fromMap(json["other"]),
        versions: json["versions"] == null
            ? null
            : Versions.fromMap(json["versions"]),
        animated:
            json["animated"] == null ? null : Sprites.fromMap(json["animated"]),
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault == null ? null : backDefault,
        "back_female": backFemale,
        "back_shiny": backShiny == null ? null : backShiny,
        "back_shiny_female": backShinyFemale,
        "front_default": frontDefault == null ? null : frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny == null ? null : frontShiny,
        "front_shiny_female": frontShinyFemale,
        "other": other == null ? null : other.toMap(),
        "versions": versions == null ? null : versions.toMap(),
        "animated": animated == null ? null : animated.toMap(),
      };
}

class GenerationI {
  GenerationI({
    this.redBlue,
    this.yellow,
  });

  RedBlue redBlue;
  RedBlue yellow;

  GenerationI copyWith({
    RedBlue redBlue,
    RedBlue yellow,
  }) =>
      GenerationI(
        redBlue: redBlue ?? this.redBlue,
        yellow: yellow ?? this.yellow,
      );

  factory GenerationI.fromJson(String str) =>
      GenerationI.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationI.fromMap(Map<String, dynamic> json) => GenerationI(
        redBlue:
            json["red-blue"] == null ? null : RedBlue.fromMap(json["red-blue"]),
        yellow: json["yellow"] == null ? null : RedBlue.fromMap(json["yellow"]),
      );

  Map<String, dynamic> toMap() => {
        "red-blue": redBlue == null ? null : redBlue.toMap(),
        "yellow": yellow == null ? null : yellow.toMap(),
      };
}

class RedBlue {
  RedBlue({
    this.backDefault,
    this.backGray,
    this.frontDefault,
    this.frontGray,
  });

  String backDefault;
  String backGray;
  String frontDefault;
  String frontGray;

  RedBlue copyWith({
    String backDefault,
    String backGray,
    String frontDefault,
    String frontGray,
  }) =>
      RedBlue(
        backDefault: backDefault ?? this.backDefault,
        backGray: backGray ?? this.backGray,
        frontDefault: frontDefault ?? this.frontDefault,
        frontGray: frontGray ?? this.frontGray,
      );

  factory RedBlue.fromJson(String str) => RedBlue.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RedBlue.fromMap(Map<String, dynamic> json) => RedBlue(
        backDefault: json["back_default"] == null ? null : json["back_default"],
        backGray: json["back_gray"] == null ? null : json["back_gray"],
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontGray: json["front_gray"] == null ? null : json["front_gray"],
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault == null ? null : backDefault,
        "back_gray": backGray == null ? null : backGray,
        "front_default": frontDefault == null ? null : frontDefault,
        "front_gray": frontGray == null ? null : frontGray,
      };
}

class GenerationIi {
  GenerationIi({
    this.crystal,
    this.gold,
    this.silver,
  });

  Crystal crystal;
  Crystal gold;
  Crystal silver;

  GenerationIi copyWith({
    Crystal crystal,
    Crystal gold,
    Crystal silver,
  }) =>
      GenerationIi(
        crystal: crystal ?? this.crystal,
        gold: gold ?? this.gold,
        silver: silver ?? this.silver,
      );

  factory GenerationIi.fromJson(String str) =>
      GenerationIi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIi.fromMap(Map<String, dynamic> json) => GenerationIi(
        crystal:
            json["crystal"] == null ? null : Crystal.fromMap(json["crystal"]),
        gold: json["gold"] == null ? null : Crystal.fromMap(json["gold"]),
        silver: json["silver"] == null ? null : Crystal.fromMap(json["silver"]),
      );

  Map<String, dynamic> toMap() => {
        "crystal": crystal == null ? null : crystal.toMap(),
        "gold": gold == null ? null : gold.toMap(),
        "silver": silver == null ? null : silver.toMap(),
      };
}

class Crystal {
  Crystal({
    this.backDefault,
    this.backShiny,
    this.frontDefault,
    this.frontShiny,
  });

  String backDefault;
  String backShiny;
  String frontDefault;
  String frontShiny;

  Crystal copyWith({
    String backDefault,
    String backShiny,
    String frontDefault,
    String frontShiny,
  }) =>
      Crystal(
        backDefault: backDefault ?? this.backDefault,
        backShiny: backShiny ?? this.backShiny,
        frontDefault: frontDefault ?? this.frontDefault,
        frontShiny: frontShiny ?? this.frontShiny,
      );

  factory Crystal.fromJson(String str) => Crystal.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Crystal.fromMap(Map<String, dynamic> json) => Crystal(
        backDefault: json["back_default"] == null ? null : json["back_default"],
        backShiny: json["back_shiny"] == null ? null : json["back_shiny"],
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontShiny: json["front_shiny"] == null ? null : json["front_shiny"],
      );

  Map<String, dynamic> toMap() => {
        "back_default": backDefault == null ? null : backDefault,
        "back_shiny": backShiny == null ? null : backShiny,
        "front_default": frontDefault == null ? null : frontDefault,
        "front_shiny": frontShiny == null ? null : frontShiny,
      };
}

class GenerationIii {
  GenerationIii({
    this.emerald,
    this.fireredLeafgreen,
    this.rubySapphire,
  });

  Emerald emerald;
  Crystal fireredLeafgreen;
  Crystal rubySapphire;

  GenerationIii copyWith({
    Emerald emerald,
    Crystal fireredLeafgreen,
    Crystal rubySapphire,
  }) =>
      GenerationIii(
        emerald: emerald ?? this.emerald,
        fireredLeafgreen: fireredLeafgreen ?? this.fireredLeafgreen,
        rubySapphire: rubySapphire ?? this.rubySapphire,
      );

  factory GenerationIii.fromJson(String str) =>
      GenerationIii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationIii.fromMap(Map<String, dynamic> json) => GenerationIii(
        emerald:
            json["emerald"] == null ? null : Emerald.fromMap(json["emerald"]),
        fireredLeafgreen: json["firered-leafgreen"] == null
            ? null
            : Crystal.fromMap(json["firered-leafgreen"]),
        rubySapphire: json["ruby-sapphire"] == null
            ? null
            : Crystal.fromMap(json["ruby-sapphire"]),
      );

  Map<String, dynamic> toMap() => {
        "emerald": emerald == null ? null : emerald.toMap(),
        "firered-leafgreen":
            fireredLeafgreen == null ? null : fireredLeafgreen.toMap(),
        "ruby-sapphire": rubySapphire == null ? null : rubySapphire.toMap(),
      };
}

class Emerald {
  Emerald({
    this.frontDefault,
    this.frontShiny,
  });

  String frontDefault;
  String frontShiny;

  Emerald copyWith({
    String frontDefault,
    String frontShiny,
  }) =>
      Emerald(
        frontDefault: frontDefault ?? this.frontDefault,
        frontShiny: frontShiny ?? this.frontShiny,
      );

  factory Emerald.fromJson(String str) => Emerald.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Emerald.fromMap(Map<String, dynamic> json) => Emerald(
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontShiny: json["front_shiny"] == null ? null : json["front_shiny"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault == null ? null : frontDefault,
        "front_shiny": frontShiny == null ? null : frontShiny,
      };
}

class GenerationVi {
  GenerationVi({
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
  });

  String frontDefault;
  dynamic frontFemale;
  String frontShiny;
  dynamic frontShinyFemale;

  GenerationVi copyWith({
    String frontDefault,
    dynamic frontFemale,
    String frontShiny,
    dynamic frontShinyFemale,
  }) =>
      GenerationVi(
        frontDefault: frontDefault ?? this.frontDefault,
        frontFemale: frontFemale ?? this.frontFemale,
        frontShiny: frontShiny ?? this.frontShiny,
        frontShinyFemale: frontShinyFemale ?? this.frontShinyFemale,
      );

  factory GenerationVi.fromJson(String str) =>
      GenerationVi.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationVi.fromMap(Map<String, dynamic> json) => GenerationVi(
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"] == null ? null : json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault == null ? null : frontDefault,
        "front_female": frontFemale,
        "front_shiny": frontShiny == null ? null : frontShiny,
        "front_shiny_female": frontShinyFemale,
      };
}

class GenerationVii {
  GenerationVii({
    this.icons,
    this.ultraSunUltraMoon,
  });

  DreamWorld icons;
  GenerationVi ultraSunUltraMoon;

  GenerationVii copyWith({
    DreamWorld icons,
    GenerationVi ultraSunUltraMoon,
  }) =>
      GenerationVii(
        icons: icons ?? this.icons,
        ultraSunUltraMoon: ultraSunUltraMoon ?? this.ultraSunUltraMoon,
      );

  factory GenerationVii.fromJson(String str) =>
      GenerationVii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationVii.fromMap(Map<String, dynamic> json) => GenerationVii(
        icons: json["icons"] == null ? null : DreamWorld.fromMap(json["icons"]),
        ultraSunUltraMoon: json["ultra-sun-ultra-moon"] == null
            ? null
            : GenerationVi.fromMap(json["ultra-sun-ultra-moon"]),
      );

  Map<String, dynamic> toMap() => {
        "icons": icons == null ? null : icons.toMap(),
        "ultra-sun-ultra-moon":
            ultraSunUltraMoon == null ? null : ultraSunUltraMoon.toMap(),
      };
}

class DreamWorld {
  DreamWorld({
    this.frontDefault,
    this.frontFemale,
  });

  String frontDefault;
  dynamic frontFemale;

  DreamWorld copyWith({
    String frontDefault,
    dynamic frontFemale,
  }) =>
      DreamWorld(
        frontDefault: frontDefault ?? this.frontDefault,
        frontFemale: frontFemale ?? this.frontFemale,
      );

  factory DreamWorld.fromJson(String str) =>
      DreamWorld.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DreamWorld.fromMap(Map<String, dynamic> json) => DreamWorld(
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
        frontFemale: json["front_female"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault == null ? null : frontDefault,
        "front_female": frontFemale,
      };
}

class GenerationViii {
  GenerationViii({
    this.icons,
  });

  DreamWorld icons;

  GenerationViii copyWith({
    DreamWorld icons,
  }) =>
      GenerationViii(
        icons: icons ?? this.icons,
      );

  factory GenerationViii.fromJson(String str) =>
      GenerationViii.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerationViii.fromMap(Map<String, dynamic> json) => GenerationViii(
        icons: json["icons"] == null ? null : DreamWorld.fromMap(json["icons"]),
      );

  Map<String, dynamic> toMap() => {
        "icons": icons == null ? null : icons.toMap(),
      };
}

class Other {
  Other({
    this.dreamWorld,
    this.officialArtwork,
  });

  DreamWorld dreamWorld;
  OfficialArtwork officialArtwork;

  Other copyWith({
    DreamWorld dreamWorld,
    OfficialArtwork officialArtwork,
  }) =>
      Other(
        dreamWorld: dreamWorld ?? this.dreamWorld,
        officialArtwork: officialArtwork ?? this.officialArtwork,
      );

  factory Other.fromJson(String str) => Other.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Other.fromMap(Map<String, dynamic> json) => Other(
        dreamWorld: json["dream_world"] == null
            ? null
            : DreamWorld.fromMap(json["dream_world"]),
        officialArtwork: json["official-artwork"] == null
            ? null
            : OfficialArtwork.fromMap(json["official-artwork"]),
      );

  Map<String, dynamic> toMap() => {
        "dream_world": dreamWorld == null ? null : dreamWorld.toMap(),
        "official-artwork":
            officialArtwork == null ? null : officialArtwork.toMap(),
      };
}

class OfficialArtwork {
  OfficialArtwork({
    this.frontDefault,
  });

  String frontDefault;

  OfficialArtwork copyWith({
    String frontDefault,
  }) =>
      OfficialArtwork(
        frontDefault: frontDefault ?? this.frontDefault,
      );

  factory OfficialArtwork.fromJson(String str) =>
      OfficialArtwork.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OfficialArtwork.fromMap(Map<String, dynamic> json) => OfficialArtwork(
        frontDefault:
            json["front_default"] == null ? null : json["front_default"],
      );

  Map<String, dynamic> toMap() => {
        "front_default": frontDefault == null ? null : frontDefault,
      };
}

class Stat {
  Stat({
    this.baseStat,
    this.effort,
    this.stat,
  });

  int baseStat;
  int effort;
  Species stat;

  Stat copyWith({
    int baseStat,
    int effort,
    Species stat,
  }) =>
      Stat(
        baseStat: baseStat ?? this.baseStat,
        effort: effort ?? this.effort,
        stat: stat ?? this.stat,
      );

  factory Stat.fromJson(String str) => Stat.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Stat.fromMap(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"] == null ? null : json["base_stat"],
        effort: json["effort"] == null ? null : json["effort"],
        stat: json["stat"] == null ? null : Species.fromMap(json["stat"]),
      );

  Map<String, dynamic> toMap() => {
        "base_stat": baseStat == null ? null : baseStat,
        "effort": effort == null ? null : effort,
        "stat": stat == null ? null : stat.toMap(),
      };
}

class Type {
  Type({
    this.slot,
    this.type,
  });

  int slot;
  Species type;

  Type copyWith({
    int slot,
    Species type,
  }) =>
      Type(
        slot: slot ?? this.slot,
        type: type ?? this.type,
      );

  factory Type.fromJson(String str) => Type.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Type.fromMap(Map<String, dynamic> json) => Type(
        slot: json["slot"] == null ? null : json["slot"],
        type: json["type"] == null ? null : Species.fromMap(json["type"]),
      );

  Map<String, dynamic> toMap() => {
        "slot": slot == null ? null : slot,
        "type": type == null ? null : type.toMap(),
      };
}
