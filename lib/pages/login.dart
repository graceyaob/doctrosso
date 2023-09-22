import 'package:doctrosso/components/connexion/login_form.dart';
import 'package:doctrosso/components/squelettePage.dart';
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

    return PageLayout(
      padding: 0.05,
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/images/Hospital.svg",
            height: largeur * 0.9,
          ),
          Text(
            AppText.enText['connexion']!,
            style:
                TextStyle(fontWeight: FontWeight.w800, fontSize: largeur / 15),
          ),
          Config.spaceSmall,
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
      ),
    );
  }
}
