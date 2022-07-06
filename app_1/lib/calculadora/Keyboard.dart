import 'package:app_1/calculadora/KeyBoardController.dart';
import 'package:flutter/material.dart';
import 'KeyPad.dart';

class Keyboard extends StatelessWidget{
  final KeyBoardController controller;
  Keyboard({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Column(
          children: [
            Row(children:  [
              KeyPad(tecla: '1', code:"1", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '2', code:"2", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '3', code:"3", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '/', code:"/", size: [4,4], keyBoardController: this.controller, color: Colors.redAccent)],),
            Row(children:  [
              KeyPad(tecla: '4', code:"4", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '5', code:"5", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '6', code:"6", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '*', code:"*", size: [4,4], keyBoardController: this.controller , color: Colors.redAccent)],),
            Row(children: [
              KeyPad(tecla: '7', code:"7", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '8', code:"8", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '9', code:"9", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '-', code:"-", size: [4,4], keyBoardController: this.controller , color: Colors.redAccent)],),
            Row(children: [
              KeyPad(tecla: '.', code:".", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: '0', code:"0", size: [4,4], keyBoardController: this.controller ),
              KeyPad(tecla: 'AC', code:"clear", size: [4,4], keyBoardController: this.controller , color: Colors.redAccent),
              KeyPad(tecla: '+', code:"+", size: [4,4], keyBoardController: this.controller , color: Colors.redAccent,)],),
            Row(children: [
              KeyPad(tecla: '=', code:"result", size: [4,1], keyBoardController: this.controller , color: Colors.greenAccent,)],)
          ],
       )
      ),
    ) ;
  }
}
