import 'package:doctrosso/components/button.dart';
import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ConsultationPAge extends StatefulWidget {
  const ConsultationPAge({super.key});

  @override
  State<ConsultationPAge> createState() => _ConsultationPAgeState();
}

class _ConsultationPAgeState extends State<ConsultationPAge> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String choixHopital = 'Option 1';
  List<String> _items = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Fiche de paiement",
            style: TextStyle(
                color: Config.couleurPrincipale,
                fontSize: Config.widthSize * 0.05),
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
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
                width: double.infinity,
                height: Config.heightSize * 0.1,
                decoration: BoxDecoration(
                    color: Config.couleurPrincipale,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(100))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Ionicons.document_text_outline,
                      color: Colors.white,
                      size: Config.widthSize * 0.1,
                    ),
                    Text(
                      "Formulaire de création de fiche de paiement",
                    )
                  ],
                ))
          ]),
        ));
  }

  Widget formulaire() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.widthSize * 0.05),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hopital",
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    DropdownButtonFormField<String>(
                      // choix de la valeur dans la liste de la liste selection

                      value: choixHopital,
                      onChanged: (newValue) {
                        setState(() {
                          choixHopital = newValue!;
                        });
                      },
                      items: _items.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: Config.outLinedBorder,
                        focusedBorder: Config.focusBorder,
                        errorBorder: Config.errorBorder,
                        enabledBorder: Config.outLinedBorder,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: Config.widthSize * 0.04,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Hopital",
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    DropdownButtonFormField<String>(
                      alignment: AlignmentDirectional.bottomEnd,
                      // choix de la valeur dans la liste de la liste selection

                      value: choixHopital,
                      onChanged: (newValue) {
                        setState(() {
                          choixHopital = newValue!;
                        });
                      },
                      items: _items.map((item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: Config.outLinedBorder,
                        focusedBorder: Config.focusBorder,
                        errorBorder: Config.errorBorder,
                        enabledBorder: Config.outLinedBorder,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Button(
                width: double.infinity,
                title: "Enregistrer",
                disable: true,
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Traitez les données du formulaire ici
                    print('Option sélectionnée : $choixHopital');
                  }
                })
          ],
        ),
      ),
    );
  }
}

//Dans cet exemple, nous avons utilisé Form pour englober le widget de sélection et le bouton de validation. Le widget DropdownButtonFormField est utilisé pour créer le champ de sélection, et ElevatedButton est utilisé pour le bouton de validation. Lorsque l'utilisateur sélectionne une option et appuie sur le bouton "Valider", les données sont validées et traitées.

//Assurez-vous d'ajouter une logique de validation appropriée si nécessaire en utilisant le paramètre validator du widget DropdownButtonFormField.


