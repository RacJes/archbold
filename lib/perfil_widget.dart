import 'package:archbold/login_page.dart';
import 'package:archbold/mymeet_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class perfil extends StatelessWidget {
  String texto =
      "A filosofia ocidental teve seu início na Grécia antiga. A palavra filosofia - philosophia palavra de origem grega. Philo vem de philia a ver com companheirismo";

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              width: 100, height: 100, child: Image.asset("assets/images/perfil.png")),
          SizedBox(
            width: 10,
            height: 10,
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Nome Usuario Sobrenome",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.60,
                height: MediaQuery.of(context).size.height*0.15,
                child: Column(
                  children: [
                    Text(
                        texto,
                        textAlign: TextAlign.left),
                  ],
                ),
              ),
            ],
          ),
        ],
      );
  }
}
