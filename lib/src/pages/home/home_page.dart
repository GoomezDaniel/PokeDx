import 'package:flutter/material.dart';
import 'package:pokedanix/src/commons/background_image.dart';
import 'components/list_pokemons.dart';

/// Constructor de la pantalla Home
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        centerTitle: true,
        elevation: 18,
        title: Image.asset(
          'assets/logo.png',
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
      body: Stack(children: [
        BackgroundImage(urlAsset: 'assets/list_wallpaper.png'),
        ListPokemons(),
      ]),
    );
  }
}
