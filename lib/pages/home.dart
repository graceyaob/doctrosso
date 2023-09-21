import 'package:doctrosso/components/home/containerImage.dart';
import 'package:doctrosso/components/home/welcome.dart';
import 'package:doctrosso/components/imageProfil.dart';
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
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: largeur * 0.005,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Welcome(),
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
                            color: Color(0xFF655F5F),
                            fontSize: Config.widthSize * 0.04),
                      ),
                      Config.spaceMeduim,
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: Config.widthSize * 0.05),
                        child: ContainerImage(),
                      )
                    ],
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
