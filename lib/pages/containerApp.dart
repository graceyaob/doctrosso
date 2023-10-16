import 'package:doctrosso/pages/carnet.dart';
import 'package:doctrosso/pages/consultation.dart';

import 'package:doctrosso/pages/home.dart';
import 'package:doctrosso/pages/profil.dart';
import 'package:doctrosso/pages/rendezVous.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerApp extends StatefulWidget {
  const ContainerApp({
    super.key,
  });

  @override
  State<ContainerApp> createState() => _ContainerAppState();
}

int currentPage = 0; //position des pages
PageController _pageController = PageController(); //le controlleur des pages

class _ContainerAppState extends State<ContainerApp> {
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
          HomePage(),
          ConsultationPAge(),
          AppointPage(),
          Profil(),
          Carnet()
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
              label: "Acceuil"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.document_text_outline),
              label: "Consultation"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.calendar_outline), label: "Rendez-vous"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.person_outline), label: "Profil"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.book_outline), label: "Carnet"),
        ],
      ),
    );
  }
}
