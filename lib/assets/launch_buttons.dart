import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class LaunchButtons extends StatelessWidget {
  const LaunchButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LaunchButton(
          FontAwesomeIcons: FontAwesomeIcons.instagram,
          onPressed: () {
            launcher.launchUrl(
              Uri.parse('http://www.instagram.com/sadityak2003'),
              mode: launcher.LaunchMode.externalApplication,
            );
          },
        ),
        LaunchButton(
            FontAwesomeIcons: FontAwesomeIcons.github,
            onPressed: () {
              launcher.launchUrl(
                Uri.parse('https://github.com/'),
                mode: launcher.LaunchMode.externalApplication,
              );
            }),
        LaunchButton(
            FontAwesomeIcons: FontAwesomeIcons.linkedin,
            onPressed: () {
              launcher.launchUrl(
                Uri.parse('https://www.linkedin.com/in/aditya-a2003ks'),
                mode: launcher.LaunchMode.externalApplication,
              );
            }),
      ],
    );
  }
}

Widget LaunchButton({
  required IconData FontAwesomeIcons,
  required Function() onPressed,
}) {
  return IconButton(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(
        const Color.fromARGB(255, 12, 52, 129),
      ),
    ),
    onPressed: onPressed,
    icon: Icon(
      FontAwesomeIcons,
      color: Colors.white,
    ),
  );
}
