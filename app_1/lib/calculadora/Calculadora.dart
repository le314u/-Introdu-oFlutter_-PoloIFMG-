import 'package:app_1/calculadora/KeyBoardController.dart';
import 'package:flutter/material.dart';
import 'Display.dart';
import 'Keyboard.dart';
import 'Memoria.dart';

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return CalculadoraState();
  }
}

class CalculadoraState extends State<Calculadora>{
  //Atributos
  late String valor;
  late Memoria memoria;
  late KeyBoardController controller;

  @override
  void initState(){
    super.initState();
    valor = "0";
    memoria = new Memoria();
    controller = new KeyBoardController(memoria);
    controller.addListener(() {
      valor = memoria.getDisplay();
      setState(()=>{});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(child:
        Column(children: [
          Display(value: valor),
          Keyboard(controller: controller)
        ],)
      ),
    );
  }
}
