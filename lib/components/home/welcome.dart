import 'package:doctrosso/components/home/buttonIcon.dart';
import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key, required this.columnVisible});
  final bool columnVisible;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50),
                bottomLeft: Radius.circular(50)),
            color: Colors.grey.withOpacity(0.05),
            border: Border.all(color: Colors.white, width: 2)),
        height:
            columnVisible ? Config.heightSize * 0.30 : Config.heightSize * 0.20,
        width: constraints.maxWidth,
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
                      const CadrePhoto(raduis: 30),
                      text(Colors.black, "Grace YAO")
                    ],
                  ),
                  //icone notification
                  const CircleAvatar(
                    backgroundColor: Colors.blue,
                  )
                ],
              ),
            ),

            //groupe sanguin
            Container(
              width: 68,
              height: 35,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(75), right: Radius.circular(75)),
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.white)]),
              child: Row(
                children: [
                  Image.asset("assets/images/goutte-de-sang.png"),
                  text(const Color(0xFFED0010), "O+")
                ],
              ),
            ),

            //Mot de bienvenue
            Visibility(
              visible: columnVisible,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text(const Color(0xFF655F5F),
                      "Comment-Allez vous Aujourd'hui"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(Config.couleurPrincipale, "Grace"),
                      text(const Color(0xFF655F5F), "?")
                    ],
                  ),
                ],
              ),
            ),
            Config.spaceSmall,
            //bloc bouton
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonIcon(
                  icon: const Icon(Ionicons.calendar_outline),
                  title: "RDV",
                  onPressed: () {},
                ),
                ButtonIcon(
                  icon: const Icon(Ionicons.document_text_outline),
                  title: "Consultation",
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      );
    });
  }

  // Mes widgets

  Widget button(String title, Icon iconData) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            iconData,
            SizedBox(
              width: Config.widthSize * 0.03,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: Config.widthSize! * 0.04),
            )
          ],
        ));
  }

  Widget text(
    Color couleur,
    String text,
  ) {
    return Text(
      text,
      style: TextStyle(
          color: couleur,
          fontSize: Config.widthSize * 0.04,
          fontWeight: FontWeight.bold),
    );
  }
}
