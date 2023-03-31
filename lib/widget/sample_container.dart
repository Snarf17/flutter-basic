import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleContainer extends StatelessWidget {
  const SampleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.fromLTRB(12, 0, 0, 0), //
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(50),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          border: Border.all(width: 1, color: Colors.white24),
          borderRadius: BorderRadius.circular(100)),
      child:
          const Text('Non officia do eu elit esse ea. Adipisicing est irure  '),
    );
  }
}
