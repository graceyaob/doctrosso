import 'package:doctrosso/components/home/welcome.dart';
import 'package:doctrosso/components/imageProfil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: largeur * 0.005, vertical: largeur * 0.05),
        child: SingleChildScrollView(
          child: Welcome(),
        ),
      ),
    );
  }
}
