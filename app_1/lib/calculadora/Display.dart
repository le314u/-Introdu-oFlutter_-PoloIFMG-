import 'package:flutter/material.dart';

class Display extends StatelessWidget{
  final String value;
  const Display({Key? key, this.value = "0"}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: 1,
      child: Container(
        alignment: Alignment.bottomRight,
        child:Text(
            "${this.value}",
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 44,),
          ),
      )
    );
  }
}

