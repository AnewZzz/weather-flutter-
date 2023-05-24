import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 32,
          ),
          appBarTheme: AppBarTheme(
              centerTitle: true,
              titleTextStyle: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ))),
      home: HomePage(),
    );
  }
}
