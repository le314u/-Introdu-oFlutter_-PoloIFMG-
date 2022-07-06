import 'dart:async';

import 'package:app_2/features/auth/auth_controller.dart';
import 'package:app_2/features/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page1State();
  }
}
class Page1State extends State<Page1> {

  Widget build(BuildContext context) {
    return Scaffold(
      body:content(),
    );
  }

  Widget content(){
    return Center(
      child: Container(
          child:ListView(
            children: [
              Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(10, (index){return card(index.toString());}),
              ),
            ],
          )
        ),
    );
  }

  card([String name = "Nome",String number = "Numero"]){
    return Card(
      child: ListTile(
        leading: Icon(Icons.account_circle, size: 50),
        title: Text(name),
        subtitle: Text(number),
      ),
    );
  }
}
