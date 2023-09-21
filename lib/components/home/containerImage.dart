import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class ContainerImage extends StatelessWidget {
  const ContainerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return monContainerRaduis("Mon poids", "assets/images/sang.png", "75 kg");
  }

  Widget monContainerRaduis(String title, String image, String valeur) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey[100],
          border: Border.all(color: Colors.white, width: 2)),
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
                fontSize: Config.widthSize * 0.04, fontWeight: FontWeight.w400),
          ),
          Image(
            height: 50,
            image: AssetImage(image),
          ),
          Text(
            valeur,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: Config.widthSize * 0.04),
          )
        ],
      ),
    );
  }
}
