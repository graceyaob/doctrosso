import 'package:doctrosso/pages/consultation.dart';
import 'package:doctrosso/pages/facture.dart';
import 'package:doctrosso/pages/home.dart';
import 'package:doctrosso/pages/profil.dart';
import 'package:doctrosso/pages/rendezVous.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContainerApp extends StatefulWidget {
  const ContainerApp({super.key});

  @override
  State<ContainerApp> createState() => _ContainerAppState();
}

int currentPage = 0;
final PageController _pageController = PageController();

class _ContainerAppState extends State<ContainerApp> {
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
          Facture()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (page) {
          setState(() {
            currentPage = page;
            _pageController.animateToPage(page,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut);
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.houseChimneyMedical),
              label: "Acceuil"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidFile), label: "Consultation"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidCalendarCheck),
              label: "Rendez-vous"),
        ],
      ),
    );
  }
}
