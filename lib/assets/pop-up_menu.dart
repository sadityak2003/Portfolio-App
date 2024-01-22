import 'package:flutter/material.dart';

class Pop_Menu extends StatefulWidget {
  const Pop_Menu({super.key});

  @override
  State<Pop_Menu> createState() => _Pop_MenuState();
}

class _Pop_MenuState extends State<Pop_Menu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      surfaceTintColor: const Color.fromARGB(255, 140, 82, 255),
      color: Colors.white,
      icon: const Icon(Icons.menu),
      itemBuilder: (context) => [
        PopupMenuItem(
            value: 1,
            child: TextButton(
              child: const Text('Projects',
                style: TextStyle(
                    color: Colors.black
                ),),
              onPressed: () {
                Navigator.pushNamed(context, 'projects');
              },
            )),
        PopupMenuItem(
          value: 2,
          child: TextButton(
            child: const Text('About Me',
              style: TextStyle(
                  color: Colors.black
              ),),
            onPressed: () {
              Navigator.pushNamed(context, 'about');
            },
          ),
        )
      ],
    );
  }
}