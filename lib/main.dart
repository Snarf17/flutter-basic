import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/sample_date_time.dart';
import 'package:learn_flutter/widget/sample_fitur_text_field.dart';
import 'package:learn_flutter/widget/sample_tapbar.dart';
import 'package:learn_flutter/widget/sample_text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FiturTextField(),
    );
  }
}
