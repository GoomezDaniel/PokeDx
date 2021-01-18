import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:pokedanix/src/commons/background_image.dart';

/// Contructor del BackgroungImage de la pantalla de inicio
class BackImage extends StatefulWidget {
  const BackImage({
    Key key,
  }) : super(key: key);

  @override
  _BackImageState createState() => _BackImageState();
}

class _BackImageState extends State<BackImage> {
  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: Duration(seconds: 2),
      child: BackgroundImage(urlAsset: 'assets/fondo.gif'),
    );
  }
}
