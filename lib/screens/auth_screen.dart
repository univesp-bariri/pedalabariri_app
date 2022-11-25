import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:pedala_bariri/mycolors/mycolors.dart';
import 'package:pedala_bariri/screens/auth_card.dart';
import '../providers/vars.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/intro-bg.jpg"),
                fit: BoxFit.cover,
                ),
              ),
            ),
          SizedBox(
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
                const Padding(padding: EdgeInsets.only(top: 10)),
                const AuthCard()
              ],
            ),
          ),
        ],
      ),
    );
  }
}