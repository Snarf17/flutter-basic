import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FiturTextField extends StatefulWidget {
  FiturTextField({super.key});
  @override
  State<FiturTextField> createState() => _FiturTextFieldState();
}

class _FiturTextFieldState extends State<FiturTextField> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Text Field'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Text Field'),

                // Textfield Email Or Password
                const TextField(
                  showCursor: true,
                  cursorColor: Colors.red,
                  textAlignVertical: TextAlignVertical.bottom,
                  // textCapitalization: TextCapitalization.characters,
                  // textCapitalization: TextCapitalization.words,
                  textCapitalization: TextCapitalization.sentences,
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    hintText: 'Masukan username/email', // Placeholder
                    labelText: 'Email/Username',
                  ),
                ),

                // TextField Password
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextField(
                    obscureText: pass,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock),
                      border: const OutlineInputBorder(),
                      hintText: 'Masukan Password',
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        icon: Icon(pass
                            ? Icons.remove_red_eye
                            : Icons.remove_red_eye_outlined),
                        onPressed: () {
                          if (true) {
                            setState(() {
                              pass = false;
                            });
                          } else {
                            setState(() {
                              pass = true;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
