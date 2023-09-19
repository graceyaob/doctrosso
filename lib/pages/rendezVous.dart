import 'package:flutter/material.dart';

class AppointPage extends StatefulWidget {
  const AppointPage({super.key});

  @override
  State<AppointPage> createState() => _AppointPageState();
}

class _AppointPageState extends State<AppointPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Rendez-Vous"),
      ),
    );
  }
}
