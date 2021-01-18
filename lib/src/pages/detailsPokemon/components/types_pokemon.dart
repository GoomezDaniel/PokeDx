import 'package:flutter/material.dart';
import 'package:pokedanix/src/commons/styles.dart';
import 'package:pokedanix/src/models/pokedata.dart';

/// Constructor de los tipos del pokemon en la pantalla de Detalles
class TypesPokemon extends StatelessWidget {
  const TypesPokemon({
    Key key,
    @required this.pokemon,
    this.colorGen,
  }) : super(key: key);

  final PokeData pokemon;
  final Color colorGen;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Tipo',
            style: styleDetails,
          ),
          Divider(color: Colors.blueGrey[600]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                color: Colors.blueGrey[800],
                onPressed: () {},
                child: Text(
                  tipos(pokemon.types[0].type.name).toUpperCase(),
                  style: styleDetailsButton.copyWith(color: colorGen),
                ),
              ),
              pokemon.types.length > 1
                  ? Row(children: [
                      SizedBox(width: 30),
                      RaisedButton(
                          color: Colors.blueGrey[800],
                          onPressed: () {},
                          child: Text(
                            tipos(pokemon.types[1].type.name).toUpperCase(),
                            style: styleDetailsButton.copyWith(color: colorGen),
                          ))
                    ])
                  : Text('')
            ],
          ),
        ],
      ),
    );
  }
}
