import 'package:flutter/material.dart';

class SampleListview extends StatelessWidget {
  SampleListview({super.key});

  final codeColor = [900, 800, 700, 600, 500, 400, 300, 200, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
        backgroundColor: Colors.deepOrangeAccent,
        leading: Icon(Icons.camera_alt_outlined),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(
              Icons.message_outlined,
              size: 26,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Container(
        height: 100,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(8),
                child: CircleAvatar(
                  radius: 37,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        NetworkImage('https://i.pravatar.cc/300?img=$index'),
                  ),
                ),
              );
            },
            itemCount: codeColor.length),
      ),
    );
  }
}
