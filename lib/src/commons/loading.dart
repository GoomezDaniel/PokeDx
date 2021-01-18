import 'package:flutter/material.dart';
import 'package:pokedanix/src/size_config.dart';

/// Constructor del Loading
class Loading extends StatelessWidget {
  const Loading({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: screenHeight(),
        width: screenWidth(),
        color: Color.fromRGBO(0, 0, 0, 0.7),
        child: Center(
            child: Image.asset(
          'assets/loading.gif',
          fit: BoxFit.cover,
          height: getProportionateScreenHeight(200),
        )));
  }
}
