import 'package:app_2/features/auth/auth_controller.dart';
import 'package:app_2/features/login/login_model.dart';
import 'package:flutter/material.dart';

class Login_controller {
  TextEditingController controllerUser = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  Auth_controller auth = Auth_controller();

  Login_model getModel(){
    return Login_model(controllerUser.text, controllerPassword.text);
  }

  bool check(){
    Login_model model = getModel();
    if(model.user == "admin" && model.pwd == "senha"){
      return true;
    }
    return false;
  }

  login(){
    auth.authenticate("Codigo_Token:123XYZ");
  }
}