import 'package:flutter/material.dart';

class MyMobile extends StatelessWidget {
  const MyMobile({super.key});

  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 81, 167, 229),
    ),
  drawer: const NavigationDrawer(),
  );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer();
}