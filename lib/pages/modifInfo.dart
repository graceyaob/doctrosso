import 'package:doctrosso/components/champsSelection.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:doctrosso/components/buttonFacture.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ModiInfo extends StatefulWidget {
  const ModiInfo({
    super.key,
  });

  @override
  State<ModiInfo> createState() => _ModiInfoState();
}

class _ModiInfoState extends State<ModiInfo> {
  final _formKey = GlobalKey<FormState>();

  final _nomController = TextEditingController(text: "YAO");
  final _prenomController = TextEditingController(text: "Grace");
  final _dateController = TextEditingController(text: "08-06-1999");
  final _sexeController = TextEditingController(text: "f");
  String textAppbar = "Profil";
  bool readOnly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: readOnly
            ? AppBar(
                title: Center(
                  child: Text(
                    textAppbar,
                    style: TextStyle(fontSize: Config.widthSize * 0.05),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        setState(() {
                          readOnly = !readOnly;

                          textAppbar = "Modifiez vos informations";
                        });
                      },
                      icon: const Icon(
                        Icons.edit,
                        color: Config.couleurPrincipale,
                      ))
                ],
              )
            : AppBar(
                title: Center(
                  child: Text(
                    textAppbar,
                    style: TextStyle(fontSize: Config.widthSize * 0.05),
                  ),
                ),
              ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.widthSize * 0.05),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // formulaire de connexion

                input("Nom", Ionicons.person, _nomController, readOnly),
                Config.spaceSmall,
                input("Prenom", Ionicons.person, _prenomController, readOnly),
                Config.spaceSmall,
                input("Date de Naissance", Ionicons.calendar, _dateController,
                    readOnly),

                Config.spaceSmall,
                ChampSelect(
                  items: ["f", "s"],
                  libelle: "Sexe",
                  readOnly: readOnly,
                  formulaireConsultation: false,
                ),
                Config.spaceSmall,

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ButtonFacture(
                      couleurEcriture: Colors.white,
                      fondBouton: Config.couleurPrincipale,
                      title: "Valider",
                      onPressed: () {
                        Navigator.of(context).pushNamed("main");
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }

  // mon widget input
  Widget input(String labelText, IconData prefixIcon,
      TextEditingController controller, bool readOnly) {
    return TextFormField(
      readOnly: readOnly,
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black12,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          prefixIcon,
          color: Config.couleurPrincipale,
        ), // Utilisez l'icône de préfixe passée en paramètre
      ),
    );
  }
}
