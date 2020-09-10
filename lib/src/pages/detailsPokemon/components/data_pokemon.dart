import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedanix/src/commons/styles.dart';
import 'package:pokedanix/src/models/pokedata.dart';
import 'package:pokedanix/src/size_config.dart';

import 'stats_pokemon.dart';
import 'types_pokemon.dart';

/// Constructor de las estadisticas del pokemon
class DetailsPokemon extends StatelessWidget {
  DetailsPokemon({Key key, this.url, this.colorgen}) : super(key: key);

  final String url;
  final Color colorgen;

  @override
  Widget build(BuildContext context) {
    PokeData pokemon;

    return FutureBuilder(
      future: _getDetails(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          pokemon = PokeData.fromMap(snapshot.data);
          return Wrap(
            runSpacing: getProportionateScreenWidth(25),
            alignment: WrapAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('${pokemon.height / 10}m', style: styleDetails),
                  Text('${(pokemon.weight / 10)}kg', style: styleDetails)
                ],
              ),
              StatsPokemon(pokemon: pokemon, colorgen: colorgen),
              TypesPokemon(pokemon: pokemon)
            ],
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
                  backgroundColor: Colors.blueGrey[600],
                  valueColor: AlwaysStoppedAnimation(colorgen)));
        }
      },
    );
  }

  _getDetails() async {
    final response = await http.get(url);
    return jsonDecode(response.body);
  }
}
