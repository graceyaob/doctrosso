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
  final _isnController = TextEditingController();
  final _nomController = TextEditingController();
  final _prenomController = TextEditingController();
  final _dateController = TextEditingController();
  final _assuranceController = TextEditingController();
  final _passwordController = TextEditingController();
  bool osbcurePass = true;

  @override
  Widget build(BuildContext context) {
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
              input("Code Patient", "DPI0378999", Ionicons.accessibility_sharp,
                  _isnController, widget.readOnly),
              Config.spaceSmall,
              input("Nom", "YAO", Ionicons.person, _nomController,
                  widget.readOnly),
              Config.spaceSmall,
              input("Prenom", "Grace", Ionicons.person, _prenomController,
                  widget.readOnly),
              Config.spaceSmall,
              input("Date de Naissance", "08-06-1999", Ionicons.calendar,
                  _dateController, widget.readOnly),
              Config.spaceSmall,
              input("Assurance", "MCI Care", Ionicons.document_text_sharp,
                  _assuranceController, widget.readOnly),
              Config.spaceSmall,
              TextFormField(
                readOnly: widget.readOnly,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: osbcurePass,
                cursorColor: Colors.black12,
                decoration: InputDecoration(
                    hintText: "Mot de passe",
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

  Widget input(String labelText, String hintText, IconData prefixIcon,
      TextEditingController controller, bool readOnly) {
    return TextFormField(
      readOnly: readOnly,
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: Colors.black12,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Icon(
          prefixIcon,
          color: Config.couleurPrincipale,
        ), // Utilisez l'icône de préfixe passée en paramètre
        alignLabelWithHint: true,
      ),
    );
  }
}
