import 'package:archbold/login_page.dart';
import 'package:archbold/mymeet_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

// ignore: use_key_in_widget_constructors
class Appwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes:{
        //'/':(context) => LoginPage(),
          '/':(context) => MyMeetPage(),
          '/home': (context) => HomePage(),
        /*'/cadastro' : (context) => CadastroPage(),*/
      }
    );
  }
}
