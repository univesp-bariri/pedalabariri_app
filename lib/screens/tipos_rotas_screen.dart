import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:pedala_bariri/mycolors/mycolors.dart';
import '../models/rotas.dart';
import '../models/rotas_detalhes.dart';
import '../data/dummy_data.dart';
import '../components/rotas_item.dart';
import '../components/rotas_datalhes_item.dart';
import 'package:url_launcher/url_launcher.dart';

class TiposRotasScreen extends StatelessWidget {
  const TiposRotasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tipoRota = ModalRoute
        .of(context)
        ?.settings
        .arguments as Rota;
    final rotasDetalhes = DUMMY_ROTAS_DETALHES.where((rota) {
      return rota.rotas.contains(tipoRota.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ROTA ${tipoRota.title}"),
      ),
      body: InkWell(
          child: ListView(
            children: <Widget>[
              Column(
                children: [
                  Container(
                          height: 300,
                          width: double.maxFinite,
                          margin: EdgeInsets.zero,
                          child: Stack (
                          children: [
                            ListView.builder(
                              itemCount: rotasDetalhes.length,
                              itemBuilder: (ctx, index) {
                                return RotasDetalhesItem(rotasDetalhes[index]);
                                }
                            ),
                            Container(
                              alignment: Alignment.bottomRight,
                              margin: const EdgeInsets.all(20),
                              child: FloatingActionButton.small(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                    Icons.star,
                                    size: 30),
                              ),
                            ),
                            ],
                            ),
                          ),
                        ],
                      ),

              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  tipoRota.intro.toUpperCase(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Raleway',
                    color: tipoRota.introcolor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                width: double.maxFinite,
                color: tipoRota.introcolor,
                height: 100,
                alignment: Alignment.center,
                child: Text(
                  tipoRota.descricao,
                  style: const TextStyle(
                    fontFamily: 'Arial Black',
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(224, 224, 225, 1),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Clique no mapa e descubra seu destino'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Raleway',
                    color: tipoRota.introcolor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15, left: 15),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: tipoRota.introcolor,
                  border: Border.all(
                    color: tipoRota.introcolor,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: GestureDetector(
                    onTap: (){
                      //here you can redirect to your affiliate link by using url_launcher
                      launchUrl(Uri.parse(tipoRota.mapUrl), mode: LaunchMode.externalApplication);
                    },
                    child: Image(
                      image: AssetImage(tipoRota.mapa),
                    ),
                ),
                ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                color: tipoRota.introcolor,
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 20, bottom: 10),
                            alignment: Alignment.topCenter,
                            child: const Text(
                              "O que você encontrará pelo caminho:",
                              style: TextStyle(
                                fontFamily: 'Arial Black',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(224, 224, 225, 1),
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // ====================== Parceiros ======================
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2, // 20%
                          child: Container(
                            height: 150,
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 2, left: 2),
                                  padding: const EdgeInsets.only(top: 15),
                                  child: CircleAvatar(
                                    backgroundColor: const Color.fromRGBO(
                                        224, 224, 225, 1),
                                    radius: 44,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage: AssetImage(
                                          tipoRota.parceiros[0]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, right: 6, left: 6),
                                  child: Text(
                                    tipoRota.parceirosinfo[0],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(224, 224, 225, 1),
                                      fontFamily: "RobotoCondensed",
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2, // 20%
                          child: Container(
                            height: 150,
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 2, left: 2),
                                  padding: const EdgeInsets.only(top: 15),
                                  child: CircleAvatar(
                                    backgroundColor: const Color.fromRGBO(
                                        224, 224, 225, 1),
                                    radius: 44,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage: AssetImage(
                                          tipoRota.parceiros[1]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, right: 6, left: 6),
                                  child: Text(
                                    tipoRota.parceirosinfo[1],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(224, 224, 225, 1),
                                      fontFamily: "RobotoCondensed",
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2, // 20%
                          child: Container(
                            height: 150,
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 2, left: 2),
                                  padding: const EdgeInsets.only(top: 15),
                                  child: CircleAvatar(
                                    backgroundColor: const Color.fromRGBO(
                                        224, 224, 225, 1),
                                    radius: 44,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage: AssetImage(
                                          tipoRota.parceiros[2]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, right: 6, left: 6),
                                  child: Text(
                                    tipoRota.parceirosinfo[2],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(224, 224, 225, 1),
                                      fontFamily: "RobotoCondensed",
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          flex: 2, // 20%
                          child: Container(
                            height: 150,
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(
                                      right: 2, left: 2),
                                  padding: const EdgeInsets.only(top: 15),
                                  child: CircleAvatar(
                                    backgroundColor: const Color.fromRGBO(
                                        224, 224, 225, 1),
                                    radius: 44,
                                    child: CircleAvatar(
                                      radius: 42,
                                      backgroundImage: AssetImage(
                                          tipoRota.parceiros[3]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      top: 5, right: 6, left: 6),
                                  child: Text(
                                    tipoRota.parceirosinfo[3],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Color.fromRGBO(224, 224, 225, 1),
                                      fontFamily: "RobotoCondensed",
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}