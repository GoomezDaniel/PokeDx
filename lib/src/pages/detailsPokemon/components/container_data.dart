import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'data_pokemon.dart';

/// Constructor del contenerdor en el que se muestran
/// todas las estadísticas del pokemon
class ContainerData extends StatelessWidget {
  const ContainerData({
    Key key,
    this.url,
    this.colorGen,
  }) : super(key: key);

  final String url;
  final Color colorGen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: 25, top: getProportionateScreenHeight(190)),
        child: Container(
          padding: EdgeInsets.fromLTRB(30, 55, 30, 35),
          width: screenWidth() - getProportionateScreenWidth(50),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 5, blurRadius: 10)
              ]),
          child: DetailsPokemon(url: url, colorgen: colorGen),
        ),
      ),
    );
  }
}
