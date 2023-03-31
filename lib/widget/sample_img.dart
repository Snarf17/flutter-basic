import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleImage extends StatelessWidget {
  const SampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Image'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset('assets/img/gambar.jpg'),
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/img/gambar.jpg'),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/img/gambar.jpg',
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(12),
            height: 300,
            width: 400,
            child: Text(
                'Eu irure veniam laboris culpa laboris nostrud do ullamco tempor reprehenderit mollit. Quis officia ut culpa irure. Ullamco minim laborum cupidatat est. Veniam ad nisi enim aliquip deserunt ullamco consequat ut. Ad id elit adipisicing dolore non sint.'),
          ),
        ],
      ),
    );
  }
}
