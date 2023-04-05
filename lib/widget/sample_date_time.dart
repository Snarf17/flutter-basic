import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SampleDate extends StatefulWidget {
  const SampleDate({super.key});

  @override
  State<SampleDate> createState() => _SampleDateState();
}

class _SampleDateState extends State<SampleDate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Date Time'),
        ),
        body: Center(
            child:
                Text(DateFormat.yMMMMEEEEd().add_Hms().format(DateTime.now()))),
      ),
    );
  }
}
