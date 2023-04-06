import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/sample_grid_view.dart';

class SampleRoutes extends StatelessWidget {
  const SampleRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Routes'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return SampleGridView();
              },
            ));
          },
          child: Icon(Icons.photo_album_outlined)),
    );
  }
}
