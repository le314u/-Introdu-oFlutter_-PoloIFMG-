import 'package:flutter/material.dart';
import 'calculadora/Calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minha Aplicação',
      theme: ThemeData(primarySwatch: Colors.green,),
      home: Scaffold(
        body: Column(
          children: [Calculadora()],
        ),// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}