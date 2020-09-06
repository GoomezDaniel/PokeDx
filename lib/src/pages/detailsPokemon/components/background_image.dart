import 'package:flutter/material.dart';

import '../../../size_config.dart';

/// Constructor del fondo que contiene la imagen del pokemon
/// en la pantalla de Detalles
class FondoImagen extends StatelessWidget {
  const FondoImagen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: getProportionateScreenHeight(220),
        width: getProportionateScreenHeight(220),
        decoration: BoxDecoration(
            color: Colors.blueGrey[900],
            borderRadius:
                BorderRadius.circular(getProportionateScreenHeight(110)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 5, blurRadius: 10)
            ]),
      ),
    );
  }
}
