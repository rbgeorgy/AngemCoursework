import 'package:determinants_evaluation/screens/fourth_order_screen.dart';
import 'package:determinants_evaluation/screens/second_order_screen.dart';
import 'package:flutter/material.dart';

import 'third_order_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Считаем определители"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondOrderScreen()));
                },
                child: Text("2-й порядок")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ThirdOrderScreen()));
                },
                child: Text("3-й порядок")),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FourthOrderScreen()));
                },
                child: Text("4-й порядок")),
          ],
        ),
      ),
    );
  }
}
