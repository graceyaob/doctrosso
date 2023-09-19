import 'package:flutter/material.dart';

class ConsultationPAge extends StatefulWidget {
  const ConsultationPAge({super.key});

  @override
  State<ConsultationPAge> createState() => _ConsultationPAgeState();
}

class _ConsultationPAgeState extends State<ConsultationPAge> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Consultation")),
    );
  }
}
