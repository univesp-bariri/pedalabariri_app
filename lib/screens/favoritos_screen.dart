import 'package:flutter/material.dart';
import '../mycolors/mycolors.dart';
import 'home_screen.dart';

class FavoritosScreen extends StatelessWidget {
  const FavoritosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: const Color.fromRGBO(255, 255, 245, 1),
              width: double.maxFinite,
              margin: EdgeInsets.zero,
              child: Stack (
                children: const [
                  Image(
                    alignment: Alignment.topLeft,
                    image: AssetImage("img/contato.jpg"),
                    fit: BoxFit.fill,
                  ),
                  Center(
                      child: Text(
                          "someText"
                      )
                  ),
                ],
              ),
            ),
          ]
      ),
    );
  }

}