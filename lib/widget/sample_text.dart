import 'package:flutter/material.dart';

class SampleText extends StatelessWidget {
  const SampleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Text'),
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple)),
            child: const Text(
                'Sit consequat consequat occaecat commodo eu fugiat consectetur ut. Elit anim do officia dolore ut in do. Adipisicing aute enim proident cupidatat cillum dolore commodo ea deserunt excepteur minim. Culpa cillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmod.'),
          ),
          Container(
            height: 200,
            width: 400,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.deepPurple)),
            child: const Text(
              'Sit consequat consequat occaecat commodo eu fugiat consectetur ut. Elit anim do officia dolore ut in do. Adipisicing aute enim proident cupidatat cillum dolore commodo ea deserunt excepteur minim. Culpa cillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmodcillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmodcillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmodcillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmodcillum commodo veniam incididunt pariatur exercitation enim sit nisi magna ex magna dolore. Sit nulla non duis eiusmod.',
              style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                  decorationColor: Colors.amber,
                  letterSpacing: 5,
                  wordSpacing: 20),
              textAlign: TextAlign.center,
              // overflow: TextOverflow.ellipsis, // Menampilkan ... ketika text keluar/melebihi dari parent
            ),
          ),
        ],
      ),
    );
  }
}
