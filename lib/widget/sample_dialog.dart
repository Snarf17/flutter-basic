import 'package:flutter/material.dart';

class SampleDialog extends StatefulWidget {
  const SampleDialog({super.key});

  @override
  State<SampleDialog> createState() => _SampleDialogState();
}

class _SampleDialogState extends State<SampleDialog> {
  String word = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(word),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Delete Data"),
                content: const Text("Are you sure?"),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          word = "No";
                        });
                        Navigator.of(context).pop(false);
                      },
                      child: const Text("No")),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          word = "Yes";
                        });
                        Navigator.of(context).pop(true);
                      },
                      child: const Text("Yes")),
                ],
              );
            },
          ).then((value) => print(value));
        },
        child: const Icon(Icons.delete),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
