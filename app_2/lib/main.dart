import 'package:app_2/features/login/login_view.dart';
import 'package:app_2/view/Page1.dart';
import 'package:app_2/view/Page3.dart';
import 'package:app_2/view/home.dart';
import 'package:flutter/material.dart';

import 'view/Page2.dart';
import 'view/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicativo 2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'splash',
      routes: {
        'login': (context) => Login_view(),
        'splash': (context) => Splash(),
        'home': (context) => Home(),
        'page1': (context) => Page1(),
        'page2': (context) => Page2(),
        'page3': (context) => Page3(),
      },
    );
  }
}
