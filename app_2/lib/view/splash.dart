import 'dart:async';

import 'package:app_2/features/auth/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<Splash> {

  hasToken() async{
    //Verifica se ja esta autenticado
    Auth_controller auth = new Auth_controller();

    if(! await auth.authenticated() ){
      Navigator.pushReplacementNamed(context, "login");
      //Navigator.push(context,MaterialPageRoute(builder: (context)=>Login_view(),));
    }else{
      Navigator.pushReplacementNamed(context, "home");
      //Navigator.push(context,MaterialPageRoute(builder: (context)=>Home(),));
    }
  }

  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      hasToken();
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      body:loading(),
    );
  }

  Widget loading(){
    return Center(
      child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ),
              SizedBox(height: 30,),
              Text("Loading..."),
            ],
          )
        ),
    );
  }
}
