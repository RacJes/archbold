import 'package:archbold/home_page.dart';
import 'package:archbold/perfil_widget.dart';
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    perfil(),
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  children: [
                    DataTable(
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Text(
                            'Sala',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Andar',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Horario',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                        DataColumn(
                          label: Text(
                            'Participantes',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Abaco')),
                            DataCell(Text('1°')),
                            DataCell(Text('14:30~15:00')),
                            DataCell(Text('Carlos.Albanês')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Bascara')),
                            DataCell(Text('1°')),
                            DataCell(Text('15:15~15:45')),
                            DataCell(Text('Marilia.Joaquina')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('Hipotenusa')),
                            DataCell(Text('2°')),
                            DataCell(Text('18:30~19:00')),
                            DataCell(Text('Fernanda.Maria, Carlos.Albanês e Deny.Coelho')),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 100,),
                SizedBox(
                  width: 1000,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/newmeets');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text('Agendar nova sala'),
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: 1000,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    child: Text('Voltar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
