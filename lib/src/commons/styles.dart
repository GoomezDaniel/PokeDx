import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

/// Constante de estilo para las estadisticas del pokemon
final styleDetails = GoogleFonts.pressStart2p(
  color: Colors.blueGrey[600],
  fontSize: getProportionateScreenHeight(12),
);

/// Constante de estilo para las estadisticas del pokemon
final styleDetailsButton = GoogleFonts.pressStart2p(
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
    // 1º Generacion
    return colores[0];
  } else if (index < 251) {
    // 2º Generacion
    return colores[1];
  } else if (index < 386) {
    // 3º Generacion
    return colores[2];
  } else if (index < 493) {
    // 4º Generacion
    return colores[3];
  } else if (index < 649) {
    // 5º Generacion
    return colores[4];
  } else if (index < 721) {
    // 6º Generacion
    return colores[5];
  } else if (index < 809) {
    // 7º Generacion
    return colores[6];
  } else {
    // 8º Generacion
    return colores[7];
  }
}

/// Metodo que devuelve la url de la imagen segun la id del pokemon
String urlImage(int index) {
  return 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$index.png';
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
    // 1º Generacion
    return texto[0];
  } else if (index < 251) {
    // 2º Generacion
    return texto[1];
  } else if (index < 386) {
    // 3º Generacion
    return texto[2];
  } else if (index < 493) {
    // 4º Generacion
    return texto[3];
  } else if (index < 649) {
    // 5º Generacion
    return texto[4];
  } else if (index < 721) {
    // 6º Generacion
    return texto[5];
  } else if (index < 809) {
    // 7º Generacion
    return texto[6];
  } else {
    // 8º Generacion
    return texto[7];
  }
}

/// Metodo que devuelve la generación del pokemon segun la id del pokemon
String tipos(String dato) {
  switch (dato) {
    case 'steel':
      return 'Acero';
      break;
    case 'water':
      return 'Agua';
      break;
    case 'bug':
      return 'Bicho';
      break;
    case 'dragon':
      return 'Dragon';
      break;
    case 'electric':
      return 'Electrico';
      break;
    case 'ghost':
      return 'Fantasma';
      break;
    case 'fire':
      return 'Fuego';
      break;
    case 'fairy':
      return 'Hada';
      break;
    case 'ice':
      return 'Hielo';
      break;
    case 'fighting':
      return 'Lucha';
      break;
    case 'normal':
      return 'Normal';
      break;
    case 'grass':
      return 'Planta';
      break;
    case 'psychic':
      return 'Psiquico';
      break;
    case 'rock':
      return 'Roca';
      break;
    case 'dark':
      return 'Siniestro';
      break;
    case 'ground':
      return 'Tierra';
      break;
    case 'poison':
      return 'Veneno';
      break;
    case 'flying':
      return 'Volador';
      break;
    default:
      return '';
  }
}
