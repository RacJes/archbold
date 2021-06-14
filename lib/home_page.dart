import 'package:archbold/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Bem Vindo!"),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                ),
                child: Text('Minhas Reuniões'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text('Agendar Sala'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text('Ver todas as salas'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text('Criar Sala'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                child: Text('Perfil'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 1000,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: Text('Sair'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
