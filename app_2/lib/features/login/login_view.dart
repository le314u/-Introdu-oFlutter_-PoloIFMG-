import 'dart:async';

import 'package:app_2/view/home.dart';
import 'package:flutter/material.dart';
import 'login_controller.dart';

class Login_view extends StatefulWidget {
  Login_controller c = new Login_controller();
  @override
  State<StatefulWidget> createState() {
    return Login_viewState();
  }
}

class Login_viewState extends State<Login_view> {
  double spaceBetwen = 70;
  String msgErro = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: Container(
        width: 250,
        child: ListView(
          children: [SizedBox(height:spaceBetwen),
            logo(),SizedBox(height:spaceBetwen),
            user(),SizedBox(height:spaceBetwen/2),
            password(),SizedBox(height:spaceBetwen),
            btnLogin(),SizedBox(height:spaceBetwen),
            msg(),
          ],
        ),
      ),
    ) );
  }



  Widget logo(){
    double size = 128;
    String text = "Logo";
    return Center(
      child: Container(
        decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xADADFFFF),
            ),
        height: size,
        width: size,
        alignment: Alignment.center,
        child:Text(text,style: TextStyle(fontSize: size/4),),
      ),
    );
  }

  Widget user(){
    return Center(
      child: Container(
        child: TextFormField(
          controller: widget.c.controllerUser,
          decoration: const InputDecoration(
            labelText: 'Usuario',
            hintText: 'user/e-mail',// Place holde
          ),
        ),
      ),
    );
  }

  Widget password(){
    return Center(
      child: Container(
        child: TextFormField(
          controller: widget.c.controllerPassword,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: const InputDecoration(
            labelText: 'Senha',
            hintText: '[AZ az 09]',// Place holde
          ),
        ),
      ),
    );
  }

  Widget btnLogin([Function? callBack]){
    return Center(
      child: Container(
        height: 50,
        width: double.infinity,//Ocupar toda a largura
        child: OutlinedButton(
            child: Text("logar"),
            onPressed: (){
              if(widget.c.check()){
                login();
              }else{
                erroMsg();
              }
            }
        ),
      ),
    );
  }

  Widget msg(){
    return Center(
      child: Container(
        height: 50,
        width: double.infinity,//Ocupar toda a largura
        child: Center(
          child: Text(msgErro, style:TextStyle(color: Colors.redAccent))
        ),
      )
    );
  }

  erroMsg(){
    setState(() {this.msgErro = "Login ou senha invalidos";});
    Timer(Duration(seconds: 3), (){
      this.msgErro = "";
      setState((){});
    });
  }

  login(){
    widget.c.login();
    Navigator.push(context,MaterialPageRoute(builder: (context)=>Home(),));
  }

}
