import 'package:flutter/material.dart';

import 'title_load.dart';
import 'button_load.dart';

/// Constructor del body de la pantalla de Inicio
class BodyLoad extends StatelessWidget {
  const BodyLoad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [TitleLoad(), ButtonLoad()]);
  }
}
