import 'package:flutter/material.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:doctrosso/components/button.dart';
import 'package:ionicons/ionicons.dart';

class LoginFormProfil extends StatefulWidget {
  const LoginFormProfil({super.key});

  @override
  State<LoginFormProfil> createState() => _LoginFormProfilState();
}

class _LoginFormProfilState extends State<LoginFormProfil> {
  final _formKey = GlobalKey<FormState>();
  final _isnController = TextEditingController();
  final _passwordController = TextEditingController();
  bool osbcurePass = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.widthSize * 0.05),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // formulaire de connexion
            input("Code Patient", "Code Patient", Ionicons.person),
            Config.spaceSmall,
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: osbcurePass,
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                  hintText: "Mot de passe",
                  labelText: "Mot de passe",
                  alignLabelWithHint: true,
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
            Button(
              width: double.infinity,
              title: "Connexion",
              disable: false,
              onPressed: () {
                Navigator.of(context).pushNamed("main");
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget input(String labelText, String hintText, IconData prefixIcon) {
    return TextFormField(
      controller: _isnController,
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
