import 'package:doctrosso/components/buttonFacture.dart';
import 'package:doctrosso/components/home/welcome.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class AppointPage extends StatefulWidget {
  const AppointPage({super.key});

  @override
  State<AppointPage> createState() => _AppointPageState();
}

class _AppointPageState extends State<AppointPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(vertical: Config.widthSize * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Welcome(columnVisible: false),
            Expanded(
              // Utilisez Expanded pour que TabBarView occupe tout l'espace vertical disponible
              child: Column(
                children: [
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    indicatorWeight: Config.heightSize * 0.005,
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Config.couleurPrincipale,
                    tabs: [
                      Tab(
                        text: "Calendrier",
                      ),
                      Tab(text: 'Liste'),
                    ],
                  ),
                  Expanded(
                    // Utilisez Expanded pour que TabBarView occupe tout l'espace vertical disponible
                    child: TabBarView(
                      children: [
                        Center(
                          child: Text("Man"),
                        ),
                        Center(
                          child: Text("pap"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Config.widthSize * 0.50,
                  right: Config.widthSize * 0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    mini: true,
                    onPressed: () {},
                    child: Text(
                      "+",
                      style: TextStyle(
                          fontSize: Config.widthSize * 0.07,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  ButtonFacture()
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
