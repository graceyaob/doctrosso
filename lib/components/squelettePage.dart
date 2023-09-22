import 'package:doctrosso/utils/config.dart';
import 'package:flutter/material.dart';

class PageLayout extends StatelessWidget {
  final Widget child;
  final double padding;

  const PageLayout({super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: padding,
          ), // Ajustez le padding comme nécessaire
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  child, // Contenu spécifique à chaque page
                ],
              ),
            ),
          )),
    );
  }
}
