import 'package:doctrosso/components/button.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:doctrosso/api/api.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _isnController = TextEditingController();
  final _passwordController = TextEditingController();
  bool osbcurePass = true;
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: largeur * 0.05),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // formulaire de connexion
            TextFormField(
              controller: _isnController,
              keyboardType: TextInputType.text,
              cursorColor: Colors.black12,
              decoration: const InputDecoration(
                border: Config.outLinedBorder,
                focusedBorder: Config.focusBorder,
                errorBorder: Config.errorBorder,
                enabledBorder: Config.outLinedBorder,
                hintText: "Code Patient",
                labelText: "Code Patient",
                alignLabelWithHint: true,
              ),
            ),
            Config.spaceSmall,
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: osbcurePass,
              cursorColor: Colors.black12,
              decoration: InputDecoration(
                  border: Config.outLinedBorder,
                  focusedBorder: Config.focusBorder,
                  errorBorder: Config.errorBorder,
                  enabledBorder: Config.outLinedBorder,
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
                apipost({
                  "username": _isnController.text,
                  "password": _passwordController.text
                });
                Navigator.of(context).pushNamed("modifier");
              },
            ),
          ],
        ),
      ),
    );
  }
}
