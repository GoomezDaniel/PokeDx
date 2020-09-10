import 'package:flutter/material.dart';
import 'package:pokedanix/src/commons/styles.dart';
import 'package:pokedanix/src/models/pokedata.dart';

/// Constructor de los tipos del pokemon en la pantalla de Detalles
class TypesPokemon extends StatelessWidget {
  const TypesPokemon({
    Key key,
    @required this.pokemon,
  }) : super(key: key);

  final PokeData pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Tipo',
            style: styleDetails,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text(
                  pokemon.types[0].type.name.toUpperCase(),
                  style: styleDetails,
                ),
              ),
              pokemon.types.length > 1
                  ? Row(children: [
                      SizedBox(width: 30),
                      RaisedButton(
                          onPressed: () {},
                          child: Text(
                            pokemon.types[1].type.name.toUpperCase(),
                            style: styleDetails,
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
