import 'package:flutter/material.dart';
import '../mycolors/mycolors.dart';
import '../providers/vars.dart';
import 'home_screen.dart';

class DicasScreen extends StatelessWidget {
  const DicasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            image: AssetImage("img/tips.jpg"),
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
                        padding: const EdgeInsets.all(25),
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Dicas da Semana".toUpperCase(),
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
                      color: const Color.fromRGBO(180, 150, 25, 1),
                      margin: const EdgeInsets.only(top: 5),
                      child: Container (
                        //margin: const EdgeInsets.only(top: 25),
                        height: 250,
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 20, left: 40),
                        child: Column (
                          children: <Widget> [
                            Row (
                              children: const <Widget> [
                                Text(
                                "1. Invista na bike ideal",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                                  textAlign: TextAlign.left,
                              ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "2. Use os equipamentos de segurança",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "3. Adquira seu próprio Kit Ferramentas",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "4. Se atente a alimentação e hidratação",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "5. Faça revisões periódicas",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "6. Respeite seus limites",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row (
                              children: const <Widget> [
                                Text(
                                  "7. Se alongue antes e depois do pedal",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
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
                            child: const Icon(Icons.pedal_bike, color: primaryBlack, size: 22,)
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                           // padding: const EdgeInsets.all(1),
                            child: const Text('PEDALA', style: TextStyle(fontWeight: FontWeight.w400, color: primaryBlack, fontSize: 18, fontFamily: 'Helvetica')),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            //padding: const EdgeInsets.all(1),
                            child: const Text('BARIRI', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1, color: primaryBlack, fontSize: 18, fontFamily: 'Helvetica')),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
            ]
        ),
      ),
    );
  }
}