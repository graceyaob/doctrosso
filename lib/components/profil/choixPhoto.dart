import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ChoixPhoto extends StatefulWidget {
  const ChoixPhoto({super.key});

  @override
  State<ChoixPhoto> createState() => _ChoixPhotoState();
}

class _ChoixPhotoState extends State<ChoixPhoto> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Config.heightSize * 0.12,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
          vertical: Config.widthSize * 0.02,
          horizontal: Config.widthSize * 0.05),
      child: Column(children: [
        Text(
          "Choisir la photo de profil",
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.camera),
                label: Text(
                  "Camera",
                )),
            TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.image),
                label: Text("Galerie")),
          ],
        )
      ]),
    );
  }
}
