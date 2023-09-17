import 'package:doctrosso/main.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double hauteur = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: OverflowBox(
            minHeight: 80.0, // Hauteur minimale de la barre de navigation
            maxHeight: 100.0, // Hauteur maximale de la barre de navigation
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Accueil',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Entreprise',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'École',
                ),
              ],
            )));
  }
}
