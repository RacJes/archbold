import 'package:archbold/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  SizedBox(
                      width: 200,
                      height: 200,
                      child: Image.network("https://i.imgur.com/i8k6x2D.png")),
                  SizedBox(height: 10),
                  Text(
                    "Archbold's",
                    style: TextStyle(
                        fontSize: 40,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 1
                          ..color = Colors.black,
                        fontFamily: 'architects'),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (text) {
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: (InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        labelText: 'Email',
                        border: OutlineInputBorder())),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    onChanged: (text) {
                      senha = text;
                    },
                    obscureText: true,
                    decoration: (InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                    )),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red),
                          ),
                          child: Text('Cadastrar'),
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            if (email == 'rafael' && senha == '123') {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home');
                            } else {
                              print('login invalido');
                            }
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.indigoAccent)),
                          child: Text('Entrar'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
