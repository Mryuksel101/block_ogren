import '../lib5/counter/view/counter_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
 runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home:const CounterPage() ,
    );
  }
}



