import 'package:flutter/material.dart';
import 'package:newsapp/views/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeadlineHarbor',
      theme: ThemeData(
        
       primarySwatch: Colors.lightBlue,
      ),
      home: HomeScreen(),
    );
  }
}