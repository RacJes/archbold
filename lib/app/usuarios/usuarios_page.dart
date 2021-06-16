import 'package:flutter/material.dart';

class UsuariosPage extends StatefulWidget {
  final String title;
  const UsuariosPage({Key? key, this.title = 'UsuariosPage'}) : super(key: key);
  @override
  UsuariosPageState createState() => UsuariosPageState();
}
class UsuariosPageState extends State<UsuariosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}