import 'package:flutter/material.dart';
import 'package:doctrosso/utils/config.dart';

class ButtonFacture extends StatelessWidget {
  const ButtonFacture({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {},
        child: Text(
          "Facture",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: Config.widthSize! * 0.04),
        ));
  }
}
