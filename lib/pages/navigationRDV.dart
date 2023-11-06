import 'package:doctrosso/components/rendez-vous/constante.dart';
import 'package:doctrosso/components/rendez-vous/examen.dart';
import 'package:doctrosso/components/rendez-vous/interrogatoire.dart';
import 'package:doctrosso/components/rendez-vous/ordonnance.dart';
import 'package:doctrosso/pages/carnet.dart';
import 'package:doctrosso/pages/consultation.dart';

import 'package:doctrosso/pages/home.dart';
import 'package:doctrosso/pages/profil.dart';
import 'package:doctrosso/pages/rendezVous.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RdvApp extends StatefulWidget {
  const RdvApp({
    super.key,
  });

  @override
  State<RdvApp> createState() => _RdvAppState();
}

int currentPage = 0; //position des pages
PageController _pageController = PageController(); //le controlleur des pages

class _RdvAppState extends State<RdvApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: const [
          Constante(),
          Interrogatoire(),
          Ordonnance(),
          Examen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _pageController.jumpToPage(page);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
              label: "Constantes"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.document_text_outline),
              label: "Interrogatoire"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline), label: "Ordonnance"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Examen"),
        ],
      ),
    );
  }
}
