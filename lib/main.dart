import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child:
                Image.asset('assets/logo1.png', width: 100, height: 100),
              ),
              Container(
                child:
                Image.asset('assets/logo2.png', width: 200, height: 200),
              )
            ]
        )
    );
  }
}
