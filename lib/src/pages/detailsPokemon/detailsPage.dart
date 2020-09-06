import 'package:flutter/material.dart';

import 'components/background_image.dart';
import 'components/container_data.dart';
import 'components/image_name.dart';

/// Contructor de la pantalla de Detalles
class DetailsPokemonPage extends StatelessWidget {
  const DetailsPokemonPage(
      {Key key, this.url, this.image, this.name, this.colorGen})
      : super(key: key);
  final String url, image, name;
  final Color colorGen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGen,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.blueGrey[900]),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(children: [
        FondoImagen(),
        ContainerData(url: url, colorGen: colorGen),
        ImageAndName(image: image, name: name),
      ]),
    );
  }
}
