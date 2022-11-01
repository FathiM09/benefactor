import 'dart:async';

import 'package:flutter/material.dart';

import 'USerMainForm.dart';

class Splachcreen extends StatefulWidget {
  const Splachcreen({super.key});

  @override
  State<Splachcreen> createState() => _SplachcreenState();
}

class _SplachcreenState extends State<Splachcreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainForm())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(padding: EdgeInsets.all(20)),
            Image(
              image: AssetImage('lib/assets/f.jpg'),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Text(
              "  فاعل خير  ",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(padding: EdgeInsets.all(20)),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.cyan,
    );
  }
}
