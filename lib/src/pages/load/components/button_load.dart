import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedanix/src/pages/home/home_page.dart';
import 'package:pokedanix/src/pages/load/components/audio_load.dart';

import '../../../size_config.dart';

/// Constructor del widget que genera el botón
/// en la pantalla de Inicio
class ButtonLoad extends StatelessWidget {
  const ButtonLoad({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight() - (screenHeight() / 3),
      width: screenWidth(),
      padding: EdgeInsets.all(10),
      child: Stack(children: [
        FadeIn(
          duration: Duration(milliseconds: 2000),
          delay: Duration(milliseconds: 3500),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Pulse(
              infinite: true,
              child: Center(
                child: InkWell(
                  child: Image(
                      image: AssetImage('assets/pokeball.png'),
                      height: getProportionateScreenWidth(100)),
                  onTap: () {
                    return Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
                  },
                ),
              ),
            ),
            SizedBox(height: 50),
            Text(
              'Start'.toUpperCase(),
              style: GoogleFonts.pressStart2p(
                  color: Colors.white,
                  fontSize: 30,
                  shadows: [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black,
                      spreadRadius: 10,
                      blurRadius: 10,
                    )
                  ]),
            )
          ]),
        ),
        AudioLoad()
      ]),
    );
  }
}
