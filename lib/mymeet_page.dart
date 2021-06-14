import 'package:archbold/home_page.dart';
import 'package:flutter/material.dart';

class MyMeetPage extends StatefulWidget {
  const MyMeetPage({Key? key}) : super(key: key);

  @override
  _MyMeetPageState createState() => _MyMeetPageState();
}

class _MyMeetPageState extends State<MyMeetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Reuniões'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                  Card(
                    child: Image.asset("assets/image/logo.png"),
                  ),
                  Container(
                    child: Text("rafael"),
                  ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
