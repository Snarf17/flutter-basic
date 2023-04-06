import 'dart:math';

import 'package:flutter/material.dart';

class SampleGridView extends StatelessWidget {
  SampleGridView({super.key});
  final List<Container> myGrid = List.generate(10, (index) {
    return Container(
      child: Image.network(
        'https://i.pravatar.cc/150?img=$index+1',
        fit: BoxFit.cover,
      ),
    );
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View'),
          centerTitle: true,
        ),
        body: GridView(
            padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio: 30 / 40,
              // mainAxisExtent: 130
            ),
            children: myGrid),
      ),
    );
  }
}
