import 'package:flutter/material.dart';

class CadrePhoto extends StatelessWidget {
  const CadrePhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage("assets/images/portrait_femme.jpg"),
    );
  }
}
