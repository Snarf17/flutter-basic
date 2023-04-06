import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SampleTextField extends StatelessWidget {
  const SampleTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const Text('Text Field'),
              TextField(
                autofocus: true,
                enableSuggestions: true,
                enableInteractiveSelection: true,
                // obscureText: true,
                // obscuringCharacter: '+',
                keyboardType: TextInputType.phone,
                readOnly: true,
              ),
              TextField()
            ],
          ),
        ),
      ),
    );
  }
}
