import 'package:doctrosso/components/connexion/login_form.dart';
import 'package:doctrosso/components/home/buttonIcon.dart';
import 'package:doctrosso/pages/login.dart';
import 'package:doctrosso/pages/profil.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class NavigationRdv extends StatelessWidget {
  const NavigationRdv({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                child: ButtonIcon(
                  icon: const Icon(Ionicons.calendar_outline),
                  title: "RDV",
                  onPressed: () {},
                ),
              ),
              Tab(
                child: Text(
                  "Liste",
                  style: TextStyle(
                      color: Colors.black), // Couleur du texte de l'onglet
                ),
              )
            ]),
            Expanded(
                child: TabBarView(
              children: [Profil(), LoginForm()],
            ))
          ],
        )));
  }
}
