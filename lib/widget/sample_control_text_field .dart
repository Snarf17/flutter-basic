import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ControlTextField extends StatefulWidget {
  const ControlTextField({super.key});

  @override
  State<ControlTextField> createState() => _ControlTextFieldState();
}

class _ControlTextFieldState extends State<ControlTextField> {
  String name = 'asdasdas';
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Control Text Field'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                TextField(
                  controller: myController,
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  onEditingComplete: () {
                    print('Edit success');
                  },
                ),
                Text(name)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
