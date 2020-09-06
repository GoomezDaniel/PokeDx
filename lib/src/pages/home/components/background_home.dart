import 'package:flutter/material.dart';

import '../../../size_config.dart';

/// Constructor del fondo de la pantalla Home
class BackgroundHome extends StatelessWidget {
  const BackgroundHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Image.asset('assets/list_wallpaper.png',
            width: screenWidth(), height: screenHeight(), fit: BoxFit.cover),
      ),
    );
  }
}
