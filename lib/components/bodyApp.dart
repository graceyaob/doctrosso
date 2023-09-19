import 'package:flutter/material.dart';

class BodyApp extends StatefulWidget {
  const BodyApp({super.key, required this.child});
  final Widget child;
  @override
  State<BodyApp> createState() => _BodyAppState();
}

class _BodyAppState extends State<BodyApp> {
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: largeur * 0.07, vertical: largeur * 0.07),
      child: SingleChildScrollView(
        child: widget.child,
      ),
    );
  }
}
