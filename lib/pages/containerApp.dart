import 'package:doctrosso/pages/consultaion.dart';
import 'package:doctrosso/pages/home.dart';
import 'package:flutter/material.dart';

class ContainerApp extends StatefulWidget {
  const ContainerApp({super.key});

  @override
  State<ContainerApp> createState() => _ContainerAppState();
}

int currentPage = 0;
final PageController _pageController = PageController();

class _ContainerAppState extends State<ContainerApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: ((value) {
          setState(() {
            currentPage = value;
          });
        }),
        children: [HomePage(), ConsultationPAge()],
      ),
    );
  }
}
