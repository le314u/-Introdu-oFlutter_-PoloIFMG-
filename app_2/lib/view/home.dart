import 'package:app_2/view/Page1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Page2.dart';
import 'Page3.dart';

class Home extends StatefulWidget {
  Widget page = Page3();

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {

  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.page,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 75.0, child: butons(),),
      ),
    );
  }

  Widget butons(){
    List<Color> colors = [Colors.green,Colors.red];
    List<IconData> icons = [Icons.check,Icons.clear];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){
          if(Navigator.canPop(context)){
            Navigator.pop(context);
          }
        }, icon: Icon(Icons.arrow_back)),
        IconButton(onPressed: (){
          setState(() {
            widget.page=Page3();
          });
        }, icon: Icon(Icons.home)),
        IconButton(onPressed: (){
          setState(() {
            widget.page=Page1();
          });
        }, icon: Icon(Icons.account_circle)),
        IconButton(onPressed: (){
          Navigator.restorablePushNamed(context,"page2");
        }, icon: Icon(Icons.add)),
      ],
    );
  }
}
