import 'package:flutter/material.dart';
import '../size_config.dart';

/// Constructor del fondo de la pantalla Home
class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key key,
    this.urlAsset,
  }) : super(key: key);

  final String urlAsset;

  @override
  Widget build(BuildContext context) {
    return Image.asset(urlAsset,
        width: screenWidth(), height: screenHeight(), fit: BoxFit.cover);
  }
}
