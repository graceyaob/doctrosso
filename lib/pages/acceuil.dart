import 'package:doctrosso/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Acceuil extends StatefulWidget {
  const Acceuil({super.key});

  @override
  State<Acceuil> createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;

    return Scaffold(
        bottomNavigationBar: Container(
      margin: EdgeInsets.all(largeur * 0.05),
      height: largeur * 0.155,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 38,
                offset: Offset(0, 10))
          ],
          borderRadius: BorderRadius.circular(50)),
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: largeur * 0.02),
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    HapticFeedback.lightImpact();
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex
                          ? largeur * 0.32
                          : largeur * 0.16,
                      alignment: Alignment.center,
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: index == currentIndex ? largeur * 0.12 : 0,
                        width: index == currentIndex ? largeur * 0.32 : 0,
                        decoration: BoxDecoration(
                            color: index == currentIndex
                                ? Colors.blueAccent
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(50)),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      width: index == currentIndex
                          ? largeur * 0.31
                          : largeur * 0.10,
                      alignment: Alignment.center,
                      child: Stack(children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex ? largeur * 0.13 : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? "${listOfStrings[index]}"
                                    : "",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: (largeur / 20) * 0.9)),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex ? largeur * 0.3 : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: largeur * 0.076,
                              color: index == currentIndex
                                  ? Colors.blueAccent
                                  : Colors.black,
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ),
              )),
    ));
  }

  List<String> listOfStrings = [
    "Acceuil",
    "Consultation",
    "Rendez-vous",
    "Profil",
    "Factures"
  ];

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.person_rounded,
    Icons.favorite_rounded,
    Icons.calendar_month_rounded,
    Icons.home_rounded
  ];
}
