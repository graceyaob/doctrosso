import 'package:doctrosso/components/connexion/login_form.dart';
import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/components/profil/login_form_profil.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text(
              "Profil",
              style: TextStyle(
                  color: Config.couleurPrincipale,
                  fontSize: Config.widthSize * 0.05),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Config.couleurPrincipale,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Config.couleurPrincipale,
                ))
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  color: Colors.black.withOpacity(0.1))
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/portrait_femme.jpg")),
                          )),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Config.couleurPrincipale),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                Config.spaceSmall,
                LoginFormProfil(),
              ],
            ),
          ),
        ));
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: isPasswordTextField ? isObscurePassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.black,
                    ))
                : null,
            contentPadding: EdgeInsets.only(bottom: 5),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
            labelText: labelText),
      ),
    );
  }
}
