import 'dart:convert';

/// Modelo constructor que recoge la lista de pokemons del json
class PokeList {
  PokeList({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int count;
  String next;
  dynamic previous;
  List<Result> results;

  PokeList copyWith({
    int count,
    String next,
    dynamic previous,
    List<Result> results,
  }) =>
      PokeList(
        count: count ?? this.count,
        next: next ?? this.next,
        previous: previous ?? this.previous,
        results: results ?? this.results,
      );

  factory PokeList.fromJson(String str) => PokeList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PokeList.fromMap(Map<String, dynamic> json) => PokeList(
        count: json["count"] == null ? null : json["count"],
        next: json["next"] == null ? null : json["next"],
        previous: json["previous"],
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "count": count == null ? null : count,
        "next": next == null ? null : next,
        "previous": previous,
        "results": results == null
            ? null
            : List<dynamic>.from(results.map((x) => x.toMap())),
      };
}

class Result {
  Result({
    this.name,
    this.url,
  });

  String name;
  String url;

  Result copyWith({
    String name,
    String url,
  }) =>
      Result(
        name: name ?? this.name,
        url: url ?? this.url,
      );

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        name: json["name"] == null ? null : json["name"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toMap() => {
        "name": name == null ? null : name,
        "url": url == null ? null : url,
      };
}
