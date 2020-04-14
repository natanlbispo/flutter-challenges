import 'dart:math';
import 'package:flutter/material.dart';

class Contador extends StatefulWidget{
  @override
  _ContadorState createState() => _ContadorState();

} 

class _ContadorState extends State<Contador>{

  @override
  Widget build( BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Contador Flutter Cubos Academy", style: TextStyle(color: Colors.white)),
      ),
      body: Column(),
    );
  } 

}