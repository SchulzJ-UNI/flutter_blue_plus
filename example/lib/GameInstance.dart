import 'dart:convert';

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class GameInstance {
  var tor1;
  var tor2;
  var tor3;
  var total;

  GameInstance(BluetoothCharacteristic c){
    waitForEvent(c);

/*
    Future<bool> contains(Object? needle) async {
      await for (final event in c.value) {
       // if (event.first == [0x49]) {

        print(c.value.first);
        print("JAHHAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
          return true;

    }
    return true;}*/
  }
 waitForEvent(BluetoothCharacteristic c)async {
   await for (final event in c.value) {
     if(event.isNotEmpty){
     print(event.toString().substring(0, 3));
     if (event.toString().substring(0, 3) == "[49") {
       //print(event.first.toString());
       //var zv =utf8.decode(event).substring(3);
       tor1 = utf8.decode(event).substring(2);
       print(tor1 +" für Tor 1 abgespeichert");
     }
     if (event.toString().substring(0, 3) == "[50") {
       //print(event.first.toString());
       tor2 = utf8.decode(event).substring(2);
       print(tor2 +" für Tor 2 abgespeichert");
     }
   }}
 }
  setTor1(tor1){
    this.tor1 = tor1;
    print("Zeit von Tor1 gespeichert");
  }
  getTor1(){
    return this.tor1;
  }
}