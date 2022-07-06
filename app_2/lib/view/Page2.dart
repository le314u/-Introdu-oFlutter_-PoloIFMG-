import 'dart:async';

import 'package:app_2/features/auth/auth_controller.dart';
import 'package:app_2/features/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page2State();
  }
}

class Page2State extends State<Page2> {

  Widget build(BuildContext context) {
    return Scaffold(
      body:content(),
    );
  }

  Widget content(){
    return Center(
      child: Container(
          child:Text("Essa pagina Foi empilhada pelo Navigator Push")
      ),
    );
  }
}
