import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedanix/src/commons/container_custom.dart';
import 'package:pokedanix/src/commons/container_type_pokemon.dart';
import 'package:pokedanix/src/commons/loading.dart';
import 'package:http/http.dart' as http;
import 'package:pokedanix/src/commons/styles.dart';
import 'package:pokedanix/src/models/pokelist.dart';
import 'package:pokedanix/src/pages/detailsPokemon/detailsPage.dart';

import '../../../size_config.dart';

/// Constructor de la lista del body de la pantalla Home
class ListPokemons extends StatefulWidget {
  const ListPokemons({
    Key key,
  }) : super(key: key);

  @override
  _ListPokemonsState createState() => _ListPokemonsState();
}

class _ListPokemonsState extends State<ListPokemons> {
  //Variables
  PokeList pokeList;
  List<Result> resultados = [];
  String url = 'https://pokeapi.co/api/v2/pokemon?limit=50&offset=0';
  ScrollController _scrollController = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoNumero = 0;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return resultados.length > 0
        ? Stack(children: [
            ListView.builder(
                controller: _scrollController,
                itemCount: _listaNumeros.length,
                itemBuilder: (BuildContext context, int index) {
                  final image = _listaNumeros[index];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: InkWell(
                        child: Container(
                            height: 80,
                            width: screenWidth(),
                            child: Stack(children: [
                              ClipPath(
                                clipper: ContainerType(),
                                child: Container(
                                  color: colores(index),
                                ),
                              ),
                              ClipPath(
                                clipper: ContainerDataPokemon(),
                                child: Container(
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                              Hero(
                                tag: urlImage(image),
                                child: Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: FadeInImage(
                                        placeholder:
                                            AssetImage("assets/pokeball.png"),
                                        image: NetworkImage(urlImage(image)))),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 40, bottom: 5),
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    resultados[index].name.toUpperCase(),
                                    style: GoogleFonts.pressStart2p(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 40, bottom: 15),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    texto(index),
                                    style: GoogleFonts.pressStart2p(
                                        fontSize: 12,
                                        color: Colors.blueGrey[900]),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5, top: 5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    '${index + 1}',
                                    style: GoogleFonts.pressStart2p(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                  builder: (context) => DetailsPokemonPage(
                                      image: urlImage(image),
                                      url: resultados[index].url,
                                      name: resultados[index].name,
                                      colorGen: colores(index))));
                        }),
                  );
                }),
            _isLoading ? Loading() : Opacity(opacity: 0)
          ])
        : Loading();
  }

  /// Metodo que carga los datos de la api y los parsea
  _getPokemons() async {
    final response = await http.get(url);

    var datos = jsonDecode(response.body);

    pokeList = PokeList.fromMap(datos);

    setState(() {
      for (var i = 0; i < pokeList.results.length; i++) {
        resultados.add(pokeList.results[i]);
      }

      url = pokeList.next;
    });
  }

  /// Metodo que ejecuta la suma de más valores a la lista
  void _agregar50() {
    for (var i = 1; i < 50; i++) {
      if (_ultimoNumero < 983) {
        _ultimoNumero++;
        _listaNumeros.add(_ultimoNumero);
      }
    }

    setState(() {});
  }

  /// Metodo que carga sus respuestas una vez se han cargado los dato
  /// y se solicitan más
  Future fetchData() async {
    _isLoading = true;

    setState(() {});

    return new Timer(Duration(milliseconds: 500), respuestaHTTP);
  }

  /// Metodo que comprueba la respuesta del scroll
  void respuestaHTTP() {
    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 150,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);

    _getPokemons();
    _agregar50();
  }

  @override
  void initState() {
    super.initState();
    _getPokemons();
    _agregar50();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (_ultimoNumero < 983) {
          fetchData();
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
