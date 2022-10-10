import 'package:drawer/pages/about.dart';
import 'package:drawer/pages/home.dart';
import 'package:drawer/pages/profile.dart';
import 'package:drawer/pages/setting.dart';
import 'package:flutter/material.dart';

class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.lightBlue,
            alignment: Alignment.bottomLeft,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.white38,
                child: Center(
                    child: Icon(
                  Icons.person,
                  color: Colors.white,
                )),
              ),
              title: const Text(
                "Fahreza Ditya Alfandry",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,),
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: const Text(
                "latihan drawer flutter",
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              onTap: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const Profile())),
            ),
          ),
          Item(
              icon: const Icon(Icons.home),
              title: "Home",
              route: MaterialPageRoute(builder: (context) => const Home())),
          Item(
              icon: const Icon(Icons.settings),
              title: "Setting",
              route: MaterialPageRoute(builder: (context) => const Setting())),
          Item(
              icon: const Icon(Icons.contact_support),
              title: "About",
              route: MaterialPageRoute(builder: (context) => const About())),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final Icon icon;
  final String title;
  final MaterialPageRoute route;

  const Item(
      {Key? key, required this.icon, required this.title, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      ),
      style: ListTileStyle.drawer,
      onTap: () => Navigator.of(context).pushReplacement(route),
    );
  }
}
