import 'package:doctrosso/components/login_form.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:doctrosso/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthPageState extends StatefulWidget {
  const AuthPageState({super.key});

  @override
  State<AuthPageState> createState() => _AuthPageStateState();
}

class _AuthPageStateState extends State<AuthPageState> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: largeur * 0.07, vertical: largeur * 0.07),
          child: SingleChildScrollView(
            child: SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/images/Hospital.svg",
                  height: hauteur * 0.45,
                ),
                Text(
                  AppText.enText['connexion']!,
                  style: TextStyle(
                      fontWeight: FontWeight.w800, fontSize: largeur / 15),
                ),
                SizedBox(
                  height: hauteur * 0.01,
                ),
                const LoginForm(),
                Config.spaceSmall,
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppText.enText['forgot-password']!,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            )),
          )),
    );
  }
}
