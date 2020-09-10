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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 80),
          child: Stack(children: [
            FondoImagen(),
            ContainerData(url: url, colorGen: colorGen),
            ImageAndName(image: image, name: name),
          ]),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
            backgroundColor: Colors.blueGrey[900],
            elevation: 16,
            child: Icon(
              Icons.arrow_back,
              color: colorGen,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
    );
  }
}
