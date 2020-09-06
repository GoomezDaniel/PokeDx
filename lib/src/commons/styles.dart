import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

/// Constante de estilo para las estadisticas del pokemon
final styleDetails = GoogleFonts.pressStart2p(
  color: Colors.blueGrey[600],
  fontSize: getProportionateScreenHeight(12),
);

/// Metodo que devuelve el color de la generación segun la id del pokemon
Color colores(int index) {
  List<Color> colores = [
    Colors.redAccent[400],
    Colors.cyanAccent[400],
    Colors.greenAccent[400],
    Colors.yellowAccent[400],
    Colors.purpleAccent,
    Colors.orangeAccent[400],
    Colors.pinkAccent,
    Colors.limeAccent[400]
  ];

  if (index < 151) {
    return colores[0];
  } else if (index < 251) {
    return colores[1];
  } else if (index < 386) {
    return colores[2];
  } else if (index < 493) {
    return colores[3];
  } else if (index < 649) {
    return colores[4];
  } else if (index < 721) {
    return colores[5];
  } else if (index < 809) {
    return colores[6];
  } else {
    return colores[7];
  }
}

/// Metodo que devuelve la url de la imagen segun la id del pokemon
String urlImage(int index) {
  List<String> urls = [
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$index.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$index.png',
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/$index.png',
  ];

  if (index <= 721) {
    return urls[0];
  } else if (index <= 807) {
    return urls[1];
  } else {
    return urls[2];
  }
}

/// Metodo que devuelve la generación del pokemon segun la id del pokemon
String texto(int index) {
  List<String> texto = [
    '1º Generación',
    '2º Generación',
    '3º Generación',
    '4º Generación',
    '5º Generación',
    '6º Generación',
    '7º Generación',
    '8º Generación',
  ];
  if (index < 151) {
    return texto[0];
  } else if (index < 251) {
    return texto[1];
  } else if (index < 386) {
    return texto[2];
  } else if (index < 493) {
    return texto[3];
  } else if (index < 649) {
    return texto[4];
  } else if (index < 721) {
    return texto[5];
  } else if (index < 809) {
    return texto[6];
  } else {
    return texto[7];
  }
}
