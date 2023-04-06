import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleDrawer extends StatelessWidget {
  const SampleDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drawer'),
        ),
        drawer: Drawer(
            width: 250,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 130,
                  color: Colors.orange,
                  child: const Text(
                    'Menu',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.home,
                          size: 30,
                        ),
                      ),
                      Text("Home")
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(
                          Icons.settings,
                          size: 30,
                        ),
                      ),
                      Text("Settings")
                    ],
                  ),
                ),
              ],
            )));
  }
}
