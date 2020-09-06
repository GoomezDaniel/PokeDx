import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedanix/src/size_config.dart';

/// Constructor de la imagen del pokemon y su nombre en la pantalla de Detalles
class ImageAndName extends StatelessWidget {
  const ImageAndName({
    Key key,
    @required this.image,
    @required this.name,
  }) : super(key: key);

  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(children: [
        Hero(
          tag: image,
          child: Swing(
            child: Container(
                height: getProportionateScreenHeight(200),
                child: Image(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Text(
          name.toUpperCase(),
          textAlign: TextAlign.center,
          style: GoogleFonts.pressStart2p(
              color: Colors.blueGrey[900],
              fontSize: getProportionateScreenHeight(18)),
        )
      ]),
    );
  }
}
