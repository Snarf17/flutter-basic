import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TapBar extends StatelessWidget {
  TapBar({super.key});

  List<Tab> myTab = [
    Tab(
      iconMargin: EdgeInsets.only(right: 20),
      child: Row(
        children: [const Text('Camera'), Icon(Icons.camera_alt_outlined)],
      ),
    ),
    Tab(
      text: 'Tab 2',
    ),
    Tab(
      text: 'Tab 3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.blueGrey,
            // labelColor: Colors.red,
            isScrollable: true,
            tabs: myTab,
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: const Text('Camera'),
          ),
          Center(
            child: const Text('Camera'),
          ),
          Center(
            child: const Text('Camera'),
          ),
        ]),
      ),
    ));
  }
}
