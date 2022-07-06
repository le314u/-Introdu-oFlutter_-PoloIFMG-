import 'package:flutter/cupertino.dart';

class Memoria extends ChangeNotifier{
  //Flags
  bool hasDot = false;
  bool neg = false;
  List<String> input = [];// Input é o buffer de digitação
  List memoria = [];//Memoria é a formatação do input em tokens

  //Manipulação no buffer <input>
  String getSig(){
    try{
      if(input[0] == "-"){
        return "-";
      }else{
        return "+";
      }
    }catch(e){return "";}
  }

  bool startedNum(){
    return firstDigit() != "";
  }

  String firstDigit(){
    String sinal = getSig();
    if(sinal == "-"){
      if(input.length > 1){
        return input[1];
      }else{
        return "";
      }
    }else if(sinal == "+"){
      if(input.length > 0){
        return input[0];
      }
    }
    return "" ;
  }

  void add(String char) {
    if (char.length == 1) {
      input.add(char);
    }//Apenas um Digito
    if (char.length > 1 ){
      for(int i = 0; i< char.length;i++){
        input.add(char[i]);
      }
    }//Mais de um Digito
  }

  //Manipulação na memoria <memoria>
  String getNum1(){
    try{
      return memoria[0].toString();
    }catch(e){ return "";}
  }

  String getOp(){
    try{
      return memoria[1].toString();
    }catch(e){ return "";}
  }

  String getNum2(){
    try{
      return memoria[2].toString();
    }catch(e){ return "";}
  }

  void persiste(){
    if(input.length > 0){
      try{
        double num = double.parse(input.join());
        memoria.add(num);
        input.clear();
      }catch(e){
        memoria.add(input.join());
        input.clear();
      };
    }
  }

  // Memoria + Buffer
  String getDisplay(){
    var r = memoria.join("")+input.join("");
    if(r == "") {return "0";}
    else{return r;}
  }

  void clear(){
    memoria.clear();
    input.clear();
    hasDot = false;
  }

  //Aparte
  String calc(double num1, String operation, double num2){
    switch (operation) {
      case '/':
        return (num1 / num2).toString();
      case '*':
        return (num1 * num2).toString();
      case '+':
        return (num1 + num2).toString();
      case '-':
        return (num1 - num2).toString();
      default:
        return "0.0";
    }
  }

}