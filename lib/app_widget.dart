import 'package:archbold/login_page.dart';
import 'package:archbold/mymeet_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'newmeet_page.dart';

// ignore: use_key_in_widget_constructors
class Appwidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
        initialRoute: '/',
        routes:{
          '/':(context) => HomePage(),
          '/home': (context) => HomePage(),
          '/mymeets':(context) => MyMeetPage(),
          '/newmeets':(context) =>NewMeetPage(),
          '/login': (context) => LoginPage(),
        /*'/cadastro' : (context) => CadastroPage(),*/
      }
    );
  }
}
