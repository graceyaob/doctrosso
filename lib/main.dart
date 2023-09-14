import 'package:doctrosso/pages/acceuil.dart';
import 'package:doctrosso/pages/connexion.dart';
import 'package:flutter/material.dart';

//mes variables
var couleurBouton = Color(0xFF3B82F6);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Acceuil(),
    );
  }
}
