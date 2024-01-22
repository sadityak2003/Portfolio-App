import 'package:flutter/material.dart';
import 'package:portfolio/assets/sliding_sheet.dart';
import 'package:portfolio/assets/pop-up_menu.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 140, 83, 255),
              Color.fromARGB(255, 92, 225, 230),
            ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const Pop_Menu(),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: const SlidingSheets()
      ),
    );
  }

}
