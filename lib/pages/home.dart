import 'package:drawer/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: const Center(
          child: Text(
        "HOME PAGE",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      )),
      drawer: const Drawers(),
    );
  }
}
