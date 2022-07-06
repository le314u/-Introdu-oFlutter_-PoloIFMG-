import 'package:flutter/material.dart';
import 'KeyBoardController.dart';

class KeyPad extends StatelessWidget{
  final String tecla;
  final String code;
  final List<int> size;
  final KeyBoardController keyBoardController;
  final Color? color;
  KeyPad({Key? key, required this.tecla, required this.code, required this.size, required this.keyBoardController,this.color,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const double sizeBorder = 0.1;
    final double height = (MediaQuery.of(context).size.width/this.size[0])-sizeBorder*2*this.size[0];
    final double width = (MediaQuery.of(context).size.width/this.size[1])-sizeBorder*2;
    final BoxDecoration decoration = BoxDecoration(
      border: Border.all(
        color: Colors.black,
        width: sizeBorder,
      ),
    );
    return Container(
      decoration:decoration ,
      width: width,
      height: height,
      child:TextButton(
        onPressed: () {
          print("Apertado ${this.code}");
          keyBoardController.pressed(this.code);
        },
        child: Text(
          "${this.tecla}",
          style: TextStyle(color: this.color ?? Colors.black),
        ),
      )
    );
  }
}