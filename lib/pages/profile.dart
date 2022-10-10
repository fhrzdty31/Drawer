import 'package:drawer/drawer/drawer.dart';
import 'package:drawer/pages/home.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const Home()))),
          )
        ],
      ),
      body: const Center(
          child: Text(
        "PROFILE PAGE",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      )),
      drawer: const Drawers(),
    );
  }
}
