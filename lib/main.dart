import 'package:flutter/material.dart';
import 'package:pract2/core/db/data_base_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DataBaseHelper().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text('Круто!'),
    ));
  }
}
