import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class AppointListeApp extends StatefulWidget {
  const AppointListeApp({super.key});

  @override
  State<AppointListeApp> createState() => _AppointListeAppState();
}

//enumeration du statut rendez-vous

class _AppointListeAppState extends State<AppointListeApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Config.heightSize * 0.001,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    const Divider(
                      color: Colors.black,
                      thickness: 0.4,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Card(
                      elevation: 6,
                      child: ListTile(
                        title: const Text("Gynecologie"),
                        subtitle: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hopital General de Bingerville"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "19/10/2023",
                                  style: TextStyle(
                                    color: Config.couleurPrincipale,
                                  ),
                                ),
                                Text("10:00")
                              ],
                            )
                          ],
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed("detail_consultation");
                        },
                      ),
                    )
                  ],
                );
              }),
        ) /*Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Gynecologie",
                style: TextStyle(
                    color: Config.couleurPrincipale,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hopital General de Bingerville"),
                  TextButton(onPressed: () {}, child: Text("Détail"))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "19/10/2023",
                    style: TextStyle(
                      color: Config.couleurPrincipale,
                    ),
                  ),
                  Text("10:00")
                ],
              )
            ],
          ),
        ),
      ),*/
        );
  }
}
