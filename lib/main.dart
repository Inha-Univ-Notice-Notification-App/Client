import 'package:flutter/material.dart';
import 'package:inha_notice_igrus/root_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "inha_today",
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: RootPage(),
    );
  }
}

