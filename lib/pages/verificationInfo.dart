import 'package:doctrosso/components/buttonFacture.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class VerificationInfo extends StatefulWidget {
  const VerificationInfo({super.key});

  @override
  State<VerificationInfo> createState() => _VerificationInfoState();
}

class _VerificationInfoState extends State<VerificationInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vérification de vos informations")),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: Config.widthSize * 0.10,
            right: Config.widthSize * 0.05,
            left: Config.widthSize * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 10,
              child: Container(
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                    spreadRadius: 5,
                    color: Colors.white,
                    offset: Offset(0, 3),
                    blurRadius: 7,
                  ),
                ], border: Border.all(color: Colors.white, width: 2)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      monBloc("Nom", "YAO"),
                      monBloc("Prenom", "Grace"),
                      monBloc("Date de naissance", "08-06-1999"),
                      monBloc("Sexe", "feminin"),
                      monBloc("Assurance", "MCI Care"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonFacture(
                              couleurEcriture: Colors.black,
                              fondBouton: Config.couleurBoutonSelectionner,
                              title: "Modifier",
                              onPressed: () {
                                Navigator.of(context).pushNamed("profil");
                              }),
                          ButtonFacture(
                              couleurEcriture: Colors.white,
                              fondBouton: Config.couleurPrincipale,
                              title: "Valider",
                              onPressed: () {
                                Navigator.of(context).pushNamed("main");
                              })
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget monBloc(String libelle, String valeur) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$libelle :",
          style: TextStyle(
              fontWeight: FontWeight.w500, fontSize: Config.widthSize * 0.05),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            valeur,
            style: TextStyle(fontSize: Config.widthSize * 0.04),
          ),
        ),
        Config.spaceSmall
      ],
    );
  }
}
