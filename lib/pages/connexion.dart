import 'package:doctrosso/main.dart';
import 'package:doctrosso/pages/acceuil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    //détermination des écran
    double hauteur = MediaQuery.of(context).size.height;
    double largeur = MediaQuery.of(context).size.width;
    //style d'écriture
    double ecriture = largeur / 20;

    //code

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.symmetric(
                vertical: largeur * 0.07, horizontal: hauteur * 0.03),
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/images/Hospital.svg",
                    height: hauteur * 0.45,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Connexion",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: largeur / 15)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: largeur * 0.03,
                  ),
                  Form(
                      child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "Code Patient",
                              style: GoogleFonts.poppins(
                                  fontSize: ecriture * 0.6,
                                  fontWeight: FontWeight.w500),
                            ),
                            hintStyle: GoogleFonts.poppins(),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                      ),
                      SizedBox(
                        height: hauteur * 0.04,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              "Mot de passe",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: ecriture * 0.6,
                                      fontWeight: FontWeight.w500)),
                            ),
                            hintStyle: GoogleFonts.poppins(),
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        obscureText: true,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Mot de passe oublié",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: ecriture * 0.6),
                                color: const Color(0xFF560CF3)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: hauteur * 0.03,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            const Acceuil();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              minimumSize: Size(largeur * 6, hauteur * 0.07),
                              backgroundColor: couleurBouton),
                          child: Text(
                            "Se connecter",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: ecriture)),
                          ))
                    ],
                  ))
                ],
              ),
            )),
      ),
    );
  }
}
