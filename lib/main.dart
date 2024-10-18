import 'package:flutter/material.dart';
import 'package:energy_monitoring_app/sign_up_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Energy Monitoring App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        backgroundColor: Colors.white,
        textTheme: TextTheme(
          headline6: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14.0, color: Colors.black),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            textStyle: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
      ),
      home: SignUpPage(),
    );
  }
}
