import 'package:drawer/drawer/drawer.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: const Center(
          child: Text(
        "SETTING PAGE",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      )),
      drawer: const Drawers(),
    );
  }
}
