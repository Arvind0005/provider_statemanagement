import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/homePage.dart';
import 'package:untitled/mycart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<MyCart>(
      create: (context) {
        return MyCart();
      },
      child: MaterialApp(
        title: 'Provider',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
