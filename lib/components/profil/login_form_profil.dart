import 'package:doctrosso/components/buttonFacture.dart';
import 'package:flutter/material.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:doctrosso/components/button.dart';
import 'package:ionicons/ionicons.dart';

class LoginFormProfil extends StatefulWidget {
  // Dans cette classe  les input sont par défaut insaisissable (readOnly = true) et les boutons sont invisibles

  const LoginFormProfil(
      {super.key, this.readOnly = true, this.buttonVisible = false});
  final bool readOnly;
  final bool buttonVisible;

  @override
  State<LoginFormProfil> createState() => _LoginFormProfilState();
}

class _LoginFormProfilState extends State<LoginFormProfil> {
  final _formKey = GlobalKey<FormState>();
  final _isnController = TextEditingController(text: "DPI0000000");
  final _nomController = TextEditingController(text: "YAO");
  final _prenomController = TextEditingController(text: "Grace");
  final _dateController = TextEditingController(text: "08-06-1999");
  final _assuranceController = TextEditingController(text: "MCI Care");
  final _passwordController = TextEditingController(text: "zkdcjhud");
  bool osbcurePass = true;

  @override
  Widget build(BuildContext context) {
    // utiliser
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: Config.widthSize * 0.05),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // formulaire de connexion
              TextFormField(
                readOnly: true,
                controller: _isnController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                  labelText: "Code Patient",
                  prefixIcon: Icon(
                    Ionicons.person,
                    color: Config.couleurPrincipale,
                  ), // Utilisez l'icône de préfixe passée en paramètre
                ),
              ),
              Config.spaceSmall,
              input("Nom", Ionicons.person, _nomController, widget.readOnly),
              Config.spaceSmall,
              input("Prenom", Ionicons.person, _prenomController,
                  widget.readOnly),
              Config.spaceSmall,
              input("Date de Naissance", Ionicons.calendar, _dateController,
                  widget.readOnly),
              Config.spaceSmall,
              input("Assurance", Ionicons.document_text_sharp,
                  _assuranceController, widget.readOnly),
              Config.spaceSmall,

              //champ mot de passe
              TextFormField(
                readOnly: widget.readOnly,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: osbcurePass,
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                    labelText: "Mot de passe",
                    alignLabelWithHint: true,
                    prefixIcon: Icon(
                      Ionicons.key_sharp,
                      color: Config.couleurPrincipale,
                    ),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            osbcurePass = !osbcurePass;
                          });
                        },
                        icon: osbcurePass
                            ? const Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.black38,
                              )
                            : const Icon(
                                Icons.visibility_outlined,
                                color: Config.couleurPrincipale,
                              ))),
              ),

              // login button
              Config.spaceSmall,
              Visibility(
                  visible: widget.buttonVisible,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonFacture(
                        couleurEcriture: Colors.black,
                        fondBouton: Colors.white,
                        title: "Retour",
                        onPressed: () {},
                      ),
                      ButtonFacture(
                        couleurEcriture: Colors.white,
                        fondBouton: Config.couleurPrincipale,
                        title: "Sauvegarder",
                        onPressed: () {},
                      )
                    ],
                  ))
            ],
          ),
        ),
      );
    });
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
