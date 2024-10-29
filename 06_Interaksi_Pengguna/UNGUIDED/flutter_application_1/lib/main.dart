import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_bottom.dart';
// import 'package:guided/my_tabbar.dart';
// import 'package:guided_pertemuan06/my_package.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottom(),
    );
  }
}
