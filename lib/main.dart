import 'package:doctrosso/components/connexion/modifier_MDP.dart';
import 'package:doctrosso/components/rendez-vous/appoint.dart';
import 'package:doctrosso/pages/connexion.dart';
import 'package:doctrosso/pages/containerApp.dart';
import 'package:doctrosso/pages/home.dart';
import 'package:doctrosso/pages/login.dart';
import 'package:doctrosso/pages/profil.dart';
import 'package:doctrosso/pages/verificationInfo.dart';
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
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Config.couleurPrincipale,
          ),
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: Config.couleurPrincipale,
              //border: Config.outLinedBorder,
              //focusedBorder: Config.focusBorder,
              //errorBorder: Config.errorBorder,
              //enabledBorder: Config.outLinedBorder,
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
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPageState(),
        'verification': (context) => const VerificationInfo(),
        'main': (context) => const ContainerApp(),
        'modifier': (context) => const LoginModif(),
        'profil': (context) => const Profil(
              visibility: false,
              write: true,
            ),
        'calendrier': (context) => const AppointListeApp()
      },
    );
  }
}
