import 'package:flutter/cupertino.dart';
import 'Memoria.dart';

class KeyBoardController extends ChangeNotifier{
  static final List<String> num = ["0","1","2","3","4","5","6","7","8","9"];
  static final List<String> sig = [".","-"];
  static final List<String> cmd = ["clear","result"];
  static final List<String> op = ["+","-","*","/"];

  Memoria instancia;
  KeyBoardController(this.instancia);

  void attState(){// Vai chamar a função setState
    notifyListeners();
  }

  void pressed(String code){
    this._pressed(code);
    this.attState();
  }//Gambiarra

  void _pressed(String code){
    if(sig.contains(code)) {
      if (code == "-" && instancia.getSig() == "") {
        instancia.add("-");
        return;
      }//Numero Negativo
      if (code == "." && !instancia.hasDot) {
        if (instancia.getSig() == "-") { //Se o primeiro Digito for <->
          if (!instancia.startedNum()) {
            instancia.add("0");
            instancia.add(".");
            instancia.hasDot = true;
            return;
          }
          else {
            instancia.add(".");
            instancia.hasDot = true;
            return;
          }
        }
        if (!instancia.startedNum()) { // Se o primeiro digito for <.>
          instancia.add("0");
          instancia.add(".");
          instancia.hasDot = true;
          return;
        }
        else {
          //Adiciona a virgula padrão
          instancia.add(".");
          instancia.hasDot = true;
          return;
        } //Casa decimal
      }//Numero Racional
    }// É um sinal ?

    if(num.contains(code)){
      if(instancia.getNum1() != "" && instancia.getOp()==""){
        instancia.clear();
      }
      instancia.add(code);
      return;
    }// Add [0-9]

    if(op.contains(code)){
      if(instancia.startedNum()){
        instancia.persiste();
        if(instancia.getOp() == ""){
          instancia.add(code);
          instancia.persiste();
        }//Persiste o operador
        if(instancia.getNum2() != ""){
          String r = instancia.calc(double.parse(instancia.getNum1()),instancia.getOp(),double.parse(instancia.getNum2()));
          instancia.clear();
          instancia.input.add(r);
          instancia.persiste();
          instancia.add(code);
          instancia.persiste();
        }//Dados suficientes para calcular
      }else{
        if(instancia.getNum1() != "" && instancia.getOp()==""){
          instancia.add(code);
          instancia.persiste();
        }
      }
    }// Add <+,-,*,/>

    if(cmd.contains(code)){
      if(code == "clear"){
        instancia.clear();
        return;
      }//Apaga a memoria e o buffer de entrada
      if(code == "result"){
        if(instancia.getNum1() != "" || instancia.getOp() != ""){
          if(instancia.startedNum()){
            instancia.persiste();
          }else{ return; }
          String r = instancia.calc(double.parse(instancia.getNum1()),instancia.getOp(),double.parse(instancia.getNum2()));
          instancia.clear();
          instancia.input.add(r);
          instancia.persiste();
        }
      }
      return ;
    }//"clear" e "result"
  }

}