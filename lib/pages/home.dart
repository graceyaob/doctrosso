import 'package:doctrosso/components/button.dart';
import 'package:doctrosso/components/buttonFacture.dart';
import 'package:doctrosso/components/home/containerImage.dart';
import 'package:doctrosso/components/home/welcome.dart';
import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/components/squelettePage.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageLayout(
      padding: Config.widthSize * 0.005,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Welcome(
            columnVisible: true,
          ),
          Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Config.widthSize * 0.05,
                  vertical: Config.widthSize * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Mes dernières constantes",
                    style: TextStyle(
                        color: const Color(0xFF655F5F),
                        fontSize: Config.widthSize * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  Config.spaceMeduim,
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Config.widthSize * 0.05),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ContainerImage(
                                  image: "assets/images/haltere.png",
                                  titre: "Mon poids",
                                  valeur: "75 kg"),
                              ContainerImage(
                                  image: "assets/images/taille.png",
                                  titre: "Ma taille",
                                  valeur: "150 cm")
                            ],
                          ),
                          Config.spaceMeduim,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ContainerImage(
                                  image: "assets/images/formegros.png",
                                  titre: "IMC",
                                  valeur: "29 kg/m²"),
                              ContainerImage(
                                  image: "assets/images/sucre.png",
                                  titre: "Diabétique",
                                  valeur: "Non")
                            ],
                          )
                        ],
                      ))
                ],
              )),
          Config.spaceSmall,
          Padding(
            padding: EdgeInsets.only(left: Config.widthSize * 0.70),
            child: ButtonFacture(
              fondBouton: Config.couleurPrincipale,
              couleurEcriture: Colors.white,
              title: "Facture",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
