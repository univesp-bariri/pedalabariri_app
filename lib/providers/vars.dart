import 'package:flutter/material.dart';

var loginHomeTitle = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const <Widget> [
        Text('PEDALA', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 28, fontFamily: 'Helvetica')),
        Padding(padding: EdgeInsets.only(right: 5)),
        Text('BARIRI', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white, fontSize: 28, fontFamily: 'Helvetica')),
        Padding(padding: EdgeInsets.only(bottom: 10))
    ]
);

  var lightHomeTitle = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget> [
          Padding(padding: EdgeInsets.only(left: 5),
            child: Icon(Icons.pedal_bike, color: Colors.white),
          ),
          Padding(padding: EdgeInsets.only(left: 10, right:5),
            child: Text('PEDALA', style: TextStyle(fontWeight: FontWeight.w400, color: Colors.white)),
          ),
          Padding(padding: EdgeInsets.only(right:30),
            child: Text('BARIRI', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white)),
          )
        ]
  );

var darkHomeTitle = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget> [
      Padding(padding: EdgeInsets.only(left: 5),
        child: Icon(Icons.pedal_bike, color: Colors.black),
      ),
      Padding(padding: EdgeInsets.only(left: 10, right:5),
        child: Text('PEDALA', style: TextStyle(fontWeight: FontWeight.w400)),
      ),
      Padding(padding: EdgeInsets.only(right:30),
        child: Text('BARIRI', style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1)),
      )
    ]
);