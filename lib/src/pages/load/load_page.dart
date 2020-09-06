import 'package:flutter/material.dart';
import 'package:pokedanix/src/pages/load/components/back_image.dart';
import 'package:pokedanix/src/size_config.dart';

import 'components/body_load.dart';

/// Constructor de la pantalla de Inicio
class LoadPage extends StatelessWidget {
  const LoadPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(children: [
        BackImage(),
        BodyLoad(),
      ]),
    );
  }
}
