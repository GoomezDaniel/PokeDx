import 'package:flutter/material.dart';

/// Container que muestra el cuadro respectivo a la generación del pokemon
class ContainerType extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.moveTo(size.width / 3, 10);
    path.lineTo(50, size.height);
    path.lineTo(size.width - 40, size.height);
    path.lineTo(size.width - 10, 10);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
