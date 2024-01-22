import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:url_launcher/url_launcher_string.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({super.key});

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  projects(tech, project, description, rate) {
    return SizedBox(
      height: 200,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Container(
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
        child: Card(
          color: Colors.transparent,
          child: Container(
            margin:
                const EdgeInsets.only(left: 20, right: 10, top: 30, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tech,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  project,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12.5,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 10,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      rate,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    IconButton(
                      onPressed: () async {
                        launcher.launchUrl(
                          Uri.parse('https://github.com/sadityak2003'),
                          mode: LaunchMode.externalApplication,
                        );
                      },
                      icon: const Icon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "Projects",
            style: TextStyle(fontSize: 15),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                projects("SOFTWARE", "BMI App", 'FLUTTER, DART', '10'),
                projects("SOFTWARE", "Portfolio App", 'FLUTTER, DART', '10'),
                projects("WEBSITE", "Portfolio", 'HTML, CSS, JAVASCRIPT', '10'),
                projects(
                    "WEBSITE", "Temp.Converter", 'HTML, CSS, JAVASCRIPT', '10'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
