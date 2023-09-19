import 'package:doctrosso/components/button.dart';
import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(50),
              bottomLeft: Radius.circular(50)),
          color: Colors.grey[200],
          border: Border.all(color: Colors.white, width: 2)),
      height: Config.heightSize * 0.30,
      child: Column(
        children: [
          //ligne des notifications
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // image et nom
              Row(
                children: [
                  CadrePhoto(raduis: 40),
                  Text(
                    "Grace YAO",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              //icone notification
              CircleAvatar(
                backgroundColor: Colors.blue,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Comment-Allez vous ",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Grâce ",
                    style: TextStyle(
                        color: Config.couleurPrincipale, fontSize: 20),
                  ),
                  Text(
                    "?",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Button(
                          width: 200,
                          title: "data",
                          disable: false,
                          onPressed: () {})
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
