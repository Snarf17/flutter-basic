import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});

  final codeColor = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 100,
            color: Colors.orange[codeColor[index]],
          );
        },
      ),
    );
  }
}
