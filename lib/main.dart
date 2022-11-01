import 'package:benefactor/splach/USerMainForm.dart';
import 'package:benefactor/splach/splachcreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Splachcreen(),
      home: MainForm(),
    ); 
  }
}
