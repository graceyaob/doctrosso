import 'package:doctrosso/components/connexion/modifier_MDP.dart';
import 'package:doctrosso/components/rendez-vous/appoint.dart';
import 'package:doctrosso/pages/consultation.dart';
import 'package:doctrosso/pages/containerApp.dart';
import 'package:doctrosso/pages/login.dart';
import 'package:doctrosso/pages/modifInfo.dart';
import 'package:doctrosso/pages/navigationRDV.dart';
import 'package:doctrosso/pages/rendezVous.dart';
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
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            foregroundColor: Config.couleurPrincipale,
          ),
          inputDecorationTheme: const InputDecorationTheme(
              focusColor: Config.couleurPrincipale,
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
        'main': (context) => const ContainerApp(),
        'modifier': (context) => const LoginModif(),
        'modifInfo': (context) => const ModiInfo(),
        'calendrier': (context) => const AppointListeApp(),
        'consultation': (context) => const ConsultationPAge(),
        'rdv': (context) => const AppointPage(),
        "detail_consultation": (context) => const RdvApp()
      },
    );
  }
}
