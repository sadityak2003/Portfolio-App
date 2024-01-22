import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyInformation extends StatefulWidget {
  const MyInformation({super.key});

  @override
  State<MyInformation> createState() => _MyInformationState();
}

class _MyInformationState extends State<MyInformation> {
  info(type, name, stream, icon, grade) {
    return SizedBox(
      height: 223,
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
              margin: const EdgeInsets.only(
                  left: 20, right: 10, top: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    type,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    name,
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
                    stream,
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
                      Icon(
                        icon,
                        color: Colors.white,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        grade,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
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
            title: const Text('About Me',
            style: TextStyle(
              fontSize: 15
            ),),
          ),
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  info('School', 'Govt. Sr. Sec. School', 'Science (P,C,M)',
                      FontAwesomeIcons.school, '92%'),
                  info(
                      'College (IPU)',
                      'Bharati Vidyapeeth College of Engg.',
                      'Computer Science Engineering',
                      FontAwesomeIcons.school,
                      'Undergrad  (Cr. 9 CGPA)'),
                  info('Interests', 'Android Studio, Graphics, Coding',
                      'Technology', FontAwesomeIcons.code, 'Intermediate'),
                  info('Coming Soon', 'Coming Soon', 'Coming Soon',
                      FontAwesomeIcons.comment, 'Coming Soon'),
                ],
              ),
            ),
          )),
    );
  }
}
