import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';
import 'package:portfolio/aboutme.dart';
import 'package:portfolio/information.dart';
import 'package:portfolio/projects.dart';
import 'package:portfolio/splash_screen.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(),
      initialRoute: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        'splashScreen': (context) => const SplashScreen(),
        'home': (context) => const MyHome(),
        'about': (context) => const MyAbout(),
        'projects': (context) => const MyProjects(),
        'info': (context) => const MyInformation(),
        
      }));
}
