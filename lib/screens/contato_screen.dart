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
                  Row (
                    children: <Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.zero,
                        child: Container (
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(top: 10),
                          child: Text(
                            "SOBRE NÓS".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Raleway',
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row (
                    children: <Widget> [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: const Color.fromRGBO(0, 146, 122, 1),
                        margin: const EdgeInsets.only(top: 5),
                        child: Container (
                          height: 250,
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          padding: const EdgeInsets.all(30),
                          margin: const EdgeInsets.only(top:10,left: 20, right: 20),
                          child: Column (
                            children: <Widget> [
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
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(height: 15),
                  Row (
                    children: <Widget> [
                      Flexible(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          color: const Color.fromRGBO(0, 146, 122, 1),
                          alignment: Alignment.center,
                          height: 60,
                          child: const Text(
                            "pedala.bariri@gmail.com",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
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