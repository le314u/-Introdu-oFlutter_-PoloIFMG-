import 'dart:async';

import 'package:app_2/features/auth/auth_controller.dart';
import 'package:app_2/features/login/login_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page3State();
  }
}
class Page3State extends State<Page3> {

  Widget build(BuildContext context) {
    return Scaffold(
      body:content(),
    );
  }

  Widget content(){
    return Center(child: Container(child: Text("Pagina Home"),color: Colors.red,));
  }

}
