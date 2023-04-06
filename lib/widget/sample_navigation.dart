import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/sample_dismissible.dart';

class SampleNavigation extends StatelessWidget {
  const SampleNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SampleDismissible();
            },
          ));
        },
        child: const Icon(Icons.keyboard_arrow_right_sharp),
      ),
    );
  }
}
