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
          color: Colors.grey[50],
          border: Border.all(color: Colors.white, width: 2)),
      height: Config.heightSize * 0.30,
      child: Column(
        children: [
          //ligne des notifications
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // image et nom
                Row(
                  children: [
                    CadrePhoto(raduis: 30),
                    Text(
                      "Grace YAO",
                      style: TextStyle(fontSize: largeur * 0.04),
                    )
                  ],
                ),
                //icone notification
                CircleAvatar(
                  backgroundColor: Colors.blue,
                )
              ],
            ),
          ),

          //groupe sanguin
          Container(
            width: 68,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(75), right: Radius.circular(75)),
                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.white)]),
            child: Row(
              children: [
                Image.asset("assets/images/goutte-de-sang.png"),
                Text(
                  "O+",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
          ),

          //Mot de bienvenue
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Comment-Allez vous ",
                style: TextStyle(fontSize: largeur * 0.04),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Grâce ",
                    style: TextStyle(
                        color: Config.couleurPrincipale,
                        fontSize: largeur * 0.04),
                  ),
                  Text(
                    "?",
                    style: TextStyle(fontSize: largeur * 0.04),
                  )
                ],
              ),

              //bouton
            ],
          ),

          //bloc bouton
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.calendar_month_rounded),
                      SizedBox(
                        width: Config.widthSize * 0.03,
                      ),
                      Text(
                        "RDV",
                      )
                    ],
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.file_copy_rounded),
                      SizedBox(
                        width: Config.widthSize * 0.03,
                      ),
                      Text(
                        "Consultation",
                      )
                    ],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
