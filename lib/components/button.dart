import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.width,
      required this.title,
      required this.disable,
      required this.onPressed});

  final double width;
  final String title;
  final bool disable;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      decoration: BoxDecoration(
          color: Config.couleurPrincipale,
          borderRadius: BorderRadius.circular(30)),
      width: width,
      child: ElevatedButton(
        onPressed: disable ? null : onPressed,
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          minimumSize:
              Size(Config.screenWidth! * 6, Config.screenHeight! * 0.07),
        ),
        child: Text(
          title,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
