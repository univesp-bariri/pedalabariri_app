import 'package:flutter/material.dart';
import '../components/rotas_datalhes_item.dart';
import '../mycolors/mycolors.dart';
import '../providers/vars.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Flexible (
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("img/home-bg.jpg"),
                    fit: BoxFit.cover,
                  ),
              ),
              child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget> [
                    Container (
                      width: double.maxFinite,
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: 15,
                      ),
                      child:           SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget> [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const <Widget> [
                                  Icon(Icons.pedal_bike, color: Colors.white, size: 50,),
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget> [
                                  loginHomeTitle,
                                ]
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget> [
                                  Flexible(
                                      child: Container(
                                        padding: const EdgeInsets.all(5),
                                        margin: const EdgeInsets.only(top: 5),
                                        child: const Text(
                                          "Nossos eventos ciclísticos, passeios sociais e programas de mudança de comportamento reúnem toda a comunidade. ",
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                   ),
                                  ),
                                ]
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
      ],
    );
  }
}