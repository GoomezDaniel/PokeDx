import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

/// Constructor del widget que genera el titulo
/// en la pantalla de Inicio
class TitleLoad extends StatelessWidget {
  const TitleLoad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight() / 3,
      width: screenWidth(),
      padding: EdgeInsets.all(getProportionateScreenWidth(10)),
      child: JelloIn(
        duration: Duration(milliseconds: 1500),
        delay: Duration(seconds: 2),
        child: Center(
          child: Image(
            image: AssetImage('assets/logo.png'),
          ),
        ),
      ),
    );
  }
}
