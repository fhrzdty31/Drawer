import 'package:drawer/drawer/drawer.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: const Center(
          child: Text(
        "ABOUT PAGE",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      )),
      drawer: const Drawers(),
    );
  }
}
