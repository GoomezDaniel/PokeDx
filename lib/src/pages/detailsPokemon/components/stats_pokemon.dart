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
          Divider(color: Colors.blueGrey[600]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircularPercentIndicator(
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(0),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(0),
                    style: styleDetails, textAlign: TextAlign.center),
                header: Text(
                  'Vida',
                  style: styleDetails,
                ),
              ),
              CircularPercentIndicator(
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(1),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(1),
                    style: styleDetails, textAlign: TextAlign.center),
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
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(2),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(2),
                    style: styleDetails, textAlign: TextAlign.center),
                header: Text(
                  'Defensa',
                  style: styleDetails,
                ),
              ),
              CircularPercentIndicator(
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(3),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(3),
                    style: styleDetails, textAlign: TextAlign.center),
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
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(4),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(4),
                    style: styleDetails, textAlign: TextAlign.center),
                header: Text(
                  'Defensa\nEspecial',
                  style: styleDetails,
                  textAlign: TextAlign.center,
                ),
              ),
              CircularPercentIndicator(
                animationDuration: 1300,
                backgroundColor: Colors.blueGrey[600],
                animation: true,
                radius: getProportionateScreenHeight(110),
                percent: valorPorcentaje(5),
                lineWidth: getProportionateScreenHeight(10),
                progressColor: colorgen,
                center: Text(valorStats(5),
                    style: styleDetails, textAlign: TextAlign.center),
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

  /// Metodo que comprueba si hay datos y devuelve el valor de los ataques
  double valorPorcentaje(int index) {
    if (pokemon.stats.length != 0) {
      return pokemon.stats[index].baseStat / 255;
    } else {
      return 0.0;
    }
  }

  /// Metodo que comprueba si hay datos y devuelve el valor de los ataques
  String valorStats(int index) {
    if (pokemon.stats.length > 0) {
      return pokemon.stats[index].baseStat.toString();
    } else {
      return 'No hay datos';
    }
  }
}
