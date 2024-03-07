import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseLayout extends StatelessWidget {
  Widget body;
  String navTitle;
  FloatingActionButton? floatingActionButton;

  BaseLayout(
      {required this.navTitle,
      required this.body,
      this.floatingActionButton,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title
      title: navTitle,
      // home
      home: Scaffold(
        // bg
        backgroundColor: const Color.fromARGB(255, 139, 225, 217),
        // Navbar
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.teal,
          title: Text(
            navTitle,
            style: const TextStyle(
              fontSize: 23.0,
            ),
          ),
          centerTitle: true,
        ),
        // body
        body: body,
      ),
    );
  }
}
