import 'dart:async';
import 'dart:convert';

import 'package:connectivity/connectivity.dart';
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
  /// Api Pokemons
  PokeList pokeList;
  List<Result> resultados = [];
  String url = 'https://pokeapi.co/api/v2/pokemon?limit=50&offset=0';
  bool encontrado = true;

  /// Diseño
  ScrollController _scrollController = new ScrollController();
  bool _isLoading = false;

  /// Conexión
  Timer timer;
  bool mensaje = false;
  bool variable = false;
  var result;

  @override
  Widget build(BuildContext context) {
    return resultados.length > 0
        ? Stack(children: [
            ListView.builder(
                controller: _scrollController,
                itemCount: resultados.length,
                itemBuilder: (BuildContext context, int index) {
                  final image = index + 1;
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
                                tag: index.toString(),
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
                                      id: index.toString(),
                                      image: urlImage(image),
                                      url: resultados[index].url,
                                      name: resultados[index].name,
                                      colorGen: colores(index))));
                        }),
                  );
                }),
            _isLoading
                ? InkWell(
                    child: Loading(),
                    onTap: () {
                      setState(() {
                        _isLoading = false;
                      });
                    })
                : Opacity(opacity: 0)
          ])
        : Loading();
  }

  /// Metodo que carga los datos de la api y los parsea
  _getPokemons() async {
    encontrado = true;
    final response = await http.get(url);

    var datos = jsonDecode(response.body);

    pokeList = PokeList.fromMap(datos);

    setState(() {
      for (var i = 0; i < pokeList.results.length; i++) {
        encontrado = true;
        for (var o = 0; o < resultados.length; o++) {
          if (resultados[o].name == pokeList.results[i].name) {
            encontrado = false;
            break;
          }
        }
        if (encontrado && resultados.length < 898) {
          resultados.add(pokeList.results[i]);
        }
      }

      url = pokeList.next;
    });
  }

  /// Metodo que carga sus respuestas una vez se han cargado los dato
  /// y se solicitan más
  Future fetchData() async {
    _isLoading = true;

    setState(() {});

    return respuestaHTTP();
  }

  /// Metodo que comprueba la respuesta del scroll
  respuestaHTTP() async {
    await _getPokemons();

    _isLoading = false;

    _scrollController.animateTo(_scrollController.position.pixels + 150,
        duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
  }

  /// Método que nos permite mostrar mensaje de alerta por pantalla
  void alertaInternet() {
    showDialog(
        context: context,
        builder: (buildcontext) {
          return AlertDialog(
            title: Text(
              'No hay conexión a internet',
              style: styleDetails,
            ),
            backgroundColor: Colors.white,
            actions: <Widget>[
              RaisedButton(
                //Estilo del botón del mensaje y su texto
                color: Colors.black,
                child: Text(
                  "Cerrar",
                  style: styleDetailsButton,
                ),
                //Si pulsamos el botón volvemos a la pantalla en la que nos encontramos
                onPressed: () {
                  setState(() => mensaje = false);
                  Navigator.of(context, rootNavigator: true).pop();
                },
              )
            ],
          );
        });
  }

  /// Método que controla la conexión a internet de la app
  checkConectivity() async {
    result = await Connectivity().checkConnectivity();
    setState(() {
      if (result == ConnectivityResult.none) {
        variable = true;
      } else {
        variable = false;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _getPokemons();

    // Mensaje de aviso de Conexión perdida
    Timer.periodic(
        Duration(seconds: 3),
        (Timer t) => setState(() {
              checkConectivity();
              if (resultados.length <= 0 && !mensaje) {
                mensaje = true;
                alertaInternet();
                _getPokemons();
              }
              if ((result == ConnectivityResult.none) && !mensaje) {
                mensaje = true;
                alertaInternet();
                _getPokemons();
              }
            }));

    // Controlador del scroll
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (resultados.length < 898 && !variable) {
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
