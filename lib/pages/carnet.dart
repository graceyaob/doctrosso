import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class Carnet extends StatefulWidget {
  const Carnet({super.key});

  @override
  State<Carnet> createState() => _CarnetState();
}

class _CarnetState extends State<Carnet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(children: [
        Stack(
          children: [
            Container(
              height: Config.heightSize * 0.3,
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: Config.heightSize * 0.25,
              decoration: const BoxDecoration(
                  color: Config.couleurPrincipale,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(600),
                      bottomRight: Radius.circular(600))),
              child: Text(
                "Mon Carnet Numérique",
                style: TextStyle(
                    color: Colors.white, fontSize: Config.widthSize * 0.06),
              ),
            ),
            Positioned(
              bottom: Config.heightSize * 0.0005,
              right: Config.widthSize * 0.38,
              child: const CadrePhoto(raduis: 50),
            ),
          ],
        ),
        Config.spaceSmall,
        Text(
          "Ma liste de consultations",
          style: TextStyle(
              color: Config.couleurPrincipale,
              fontSize: Config.widthSize * 0.045),
        ),
        Config.spaceSmall,
        SizedBox(
          height: Config.heightSize * 0.45,
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(
                      "Consultation Medecine Generale",
                      style: TextStyle(
                        color: Config.couleurPrincipale,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("01/08/2023"), Text("10:00")],
                    ),
                    trailing:
                        TextButton(onPressed: () {}, child: Text("Détail")),
                  ),
                );
              }),
        )
      ]),
    ));
  }
}
