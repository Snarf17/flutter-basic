import 'package:flutter/material.dart';
import 'package:learn_flutter/widget/sample_dialog.dart';
import 'package:learn_flutter/widget/sample_dismissible.dart';
import 'package:learn_flutter/widget/sample_drawer.dart';
import 'package:learn_flutter/widget/sample_grid_view.dart';
import 'package:learn_flutter/widget/sample_navigation.dart';
import 'package:learn_flutter/widget/sample_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: SampleDrawer(),
    );
  }
}
