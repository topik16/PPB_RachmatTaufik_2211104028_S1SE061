import 'package:flutter/material.dart';

class MyTabbar extends StatefulWidget {
  const MyTabbar({super.key});

  @override
  State<MyTabbar> createState() => _MyTabbarState();
}

class _MyTabbarState extends State<MyTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.food_bank),
              ),
              Tab(
                icon: Icon(Icons.calendar_month),
              ),
              Tab(
                text: 'Apa aja',
                icon: Icon(Icons.food_bank),
              )
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text('iki konten 1'),
            ),
            Center(
              child: Text('iki konten 2'),
            ),
            Center(
              child: Text('iki konten 3'),
            ),
          ])),
    );
  }
}
