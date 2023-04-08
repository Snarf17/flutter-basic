import 'package:flutter/material.dart';

class SampleDatePicker extends StatefulWidget {
  SampleDatePicker({super.key});

  @override
  State<SampleDatePicker> createState() => _SampleDatePickerState();
}

class _SampleDatePickerState extends State<SampleDatePicker> {
  DateTime selectDate = DateTime.now();
  changeDate(num) {
    setState(() {
      selectDate = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Data Picker'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(selectDate.toString()),
              const Text('Tanggal'),
              OutlinedButton(
                onPressed: () {
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1800),
                    lastDate: DateTime(2025),
                    builder: (context, child) => Theme(
                      data: ThemeData.dark(),
                      child: Center(child: child),
                    ),
                  ).then((value) => changeDate(value));
                },
                child: const Text('Date Picker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
