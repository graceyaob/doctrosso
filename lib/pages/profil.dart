import 'package:doctrosso/components/imageProfil.dart';
import 'package:doctrosso/components/profil/choixPhoto.dart';
import 'package:doctrosso/components/profil/login_form_profil.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  final bool write;
  final bool visibility;
  const Profil({super.key, this.visibility = true, this.write = false});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  bool isObscurePassword = true;
  String textAppbar = "Profil";
  bool write = false;
  bool visibilite = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    write = widget.write;
    visibilite = widget.visibility;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              textAppbar,
              style: TextStyle(
                  color: Config.couleurPrincipale,
                  fontSize: Config.widthSize * 0.05),
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Config.couleurPrincipale,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("main");
            },
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: const Icon(
                  Icons.settings,
                  color: Config.couleurPrincipale,
                ))
          ],
        ),
        body: SafeArea(
            child: Container(
          padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
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
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/portrait_femme.jpg")),
                        )),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 4, color: Colors.white),
                              color: Config.couleurPrincipale),
                          child: !write
                              ? IconButton(
                                  icon: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      write = !write;
                                      visibilite = !visibilite;
                                      textAppbar = "Edites ton profil";
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: ((builder) =>
                                            const ChoixPhoto()));
                                  },
                                ),
                        ))
                  ],
                ),
              ),
              LoginFormProfil(
                readOnly: !write,
                buttonVisible: !visibilite,
              ),
            ],
          ),
        )));
  }
}
