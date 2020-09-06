import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pokedanix/src/commons/styles.dart';
import 'package:pokedanix/src/models/pokedata.dart';

import '../../../size_config.dart';

/// Constructor de los datos de las estadísticas del pokemon
/// en la pantalla de Detalles
class StatsPokemon extends StatelessWidget {
  const StatsPokemon({
    Key key,
    @required this.pokemon,
    @required this.colorgen,
  }) : super(key: key);

  final PokeData pokemon;
  final Color colorgen;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        runSpacing: getProportionateScreenHeight(10),
        children: [
          Text(
            'Estadísticas',
            style: styleDetails,
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[0].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[0].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Vida',
                  style: styleDetails,
                ),
              ),
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[1].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[1].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Ataque',
                  style: styleDetails,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[2].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[2].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Defensa',
                  style: styleDetails,
                ),
              ),
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[3].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[3].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Ataque\nEspecial',
                  style: styleDetails,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[4].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[4].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Defensa\nEspecial',
                  style: styleDetails,
                  textAlign: TextAlign.center,
                ),
              ),
              CircularPercentIndicator(
                radius: getProportionateScreenHeight(110),
                percent: pokemon.stats[5].baseStat / 255,
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(
                  '${pokemon.stats[5].baseStat}',
                  style: styleDetails,
                ),
                header: Text(
                  'Velocidad',
                  style: styleDetails,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
