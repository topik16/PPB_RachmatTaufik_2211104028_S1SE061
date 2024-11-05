
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/mypage.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mypage(),
    );
  }
}
