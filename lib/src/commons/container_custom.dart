import 'package:flutter/material.dart';

/// Constructor del conntenedor que muestra el pokemon en el listado del Home
class ContainerDataPokemon extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(35, 0);
    path.lineTo(0, 40);
    path.lineTo(10, size.height);
    path.lineTo(size.width - 30, size.height);
    path.lineTo(size.width - 15, size.height - 30);
    path.lineTo(130, size.height - 30);
    path.lineTo(size.width / 2, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
