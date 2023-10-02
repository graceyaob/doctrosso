import 'package:doctrosso/components/button.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class LoginModif extends StatefulWidget {
  const LoginModif({super.key});

  @override
  State<LoginModif> createState() => _LoginModifState();
}

class _LoginModifState extends State<LoginModif> {
  final _formKey = GlobalKey<FormState>();
  final _nouveauPasswordController = TextEditingController();
  final _ancienpasswordController = TextEditingController();
  final _configPasswordController = TextEditingController();
  bool osbcurePass = true;

  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(),
        body: Center(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: largeur * 0.05),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // formulaire de connexion

                  password(_ancienpasswordController, "Mot de Passe",
                      "Entrer le mot de passe ", true),

                  Config.spaceSmall,
                  password(_nouveauPasswordController, "Nouveau mot de passe",
                      "Entrer le nouveau mot de passe", false),
                  Config.spaceSmall,
                  password(
                      _configPasswordController,
                      "Confirmation du mot de passe",
                      "Confirmer le mot de passe",
                      false),
                  Config.spaceMeduim,

                  // login button

                  Button(
                    width: double.infinity,
                    title: "Connexion",
                    disable: false,
                    onPressed: () {
                      Navigator.of(context).pushNamed("verification");
                    },
                  ),
                ],
              ),
            ),
          ),
        )));
  }

  Widget password(TextEditingController controller, String label,
      String hintText, bool suffixIcon) {
    return TextFormField(
      controller: controller,
      keyboardType: TextInputType.visiblePassword,
      obscureText: osbcurePass,
      cursorColor: Colors.black12,
      decoration: InputDecoration(
          border: Config.outLinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outLinedBorder,
          hintText: hintText,
          labelText: label,
          alignLabelWithHint: true,
          suffixIcon: suffixIcon
              ? IconButton(
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
                        ))
              : null),
    );
  }
}
