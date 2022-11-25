import 'package:flutter/material.dart';
import '../mycolors/mycolors.dart';
import 'home_screen.dart';

class ContatoScreen extends StatelessWidget {
  const ContatoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("CONTATO"),
      ),
      body: Container(
        color: const Color.fromRGBO(255, 255, 245, 1),
        child: ListView(
            children: <Widget>[
              Column(
                children: <Widget> [
                  Row (
                    children: <Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.zero,
                        child: Stack (
                          children: const [
                            Image(
                              width: double.maxFinite,
                              alignment: Alignment.topCenter,
                              image: AssetImage("img/contato.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row (
                    children: <Widget> [
                         Flexible(
                            child: Container(
                              margin: const EdgeInsets.only(left:22,right: 22),
                              child: const Text(
                            "Para sugestões, dúvidas ou parceria, sinta-se livre para entrar em contato conosco:",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                               textAlign: TextAlign.center,
                              ),
                            ),
                        ),
                    ],
                  ),
                  Row (
                    children: <Widget> [
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.center,
                          height: 60,
                          child: const Text(
                            "pedala.bariri@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: primaryBlack
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height:15),
                  Row (
                    children: <Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: const Color.fromRGBO(0, 146, 122, 1),
                        margin: const EdgeInsets.only(top: 5),
                        height: 300,
                        padding: const EdgeInsets.only(top: 10),
                        child: Container (
                          height: MediaQuery.of(context).size.height,
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          padding: const EdgeInsets.only(top: 20, left: 5,right: 5),
                          margin: const EdgeInsets.only(top:6,left: 10, right: 5),
                          child: Column (
                            children: <Widget> [
                              Row (
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const <Widget> [
                                  Flexible(
                                    child: Text(
                                    "SOBRE NÓS",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 25),
                              Row (
                                children: const <Widget> [
                                  Flexible(child: Text(
                                    "Pedala Bariri é um aplicativo web idealizado pelos alunos do Eixo de Computação da UNIVESP, para a disciplina Projeto Integrador.",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row (
                                children: const <Widget> [
                                  Flexible(child: Text(
                                    "Iniciamos esse projeto com o intuito de aproximar pessoas que são apaixonadas por ciclismo, aventura e turismo.",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget> [
                                  Container (
                                    alignment: Alignment.bottomCenter,
                                    height: 50,
                                    child: Row (
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.only(top: 5),
                                            padding: const EdgeInsets.all(2),
                                            child: const Icon(Icons.pedal_bike, color: Colors.white, size: 20,)
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          // padding: const EdgeInsets.all(1),
                                          child: const Text('PEDALA', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 16, fontFamily: 'Helvetica')),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 5),
                                          //padding: const EdgeInsets.all(1),
                                          child: const Text('BARIRI', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white, fontSize: 16, fontFamily: 'Helvetica')),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ]
        ),
      ),
    );
  }

}