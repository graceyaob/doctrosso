import 'package:doctrosso/pages/connexion.dart';
import 'package:doctrosso/pages/login.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//mes variables
var couleurBouton = const Color(0xFF3B82F6);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Doctrôssô",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: Config.couleurPrincipale,
              border: Config.outLinedBorder,
              focusedBorder: Config.focusBorder,
              errorBorder: Config.errorBorder,
              enabledBorder: Config.outLinedBorder,
              floatingLabelStyle: TextStyle(color: Config.couleurPrincipale)),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Config.couleurPrincipale,
              selectedItemColor: Colors.white,
              showSelectedLabels: false,
              unselectedItemColor: Colors.grey.shade700,
              elevation: 10,
              type: BottomNavigationBarType.fixed),
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: const AuthPageState(),
    );
  }
}
