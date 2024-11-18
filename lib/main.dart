import 'package:bookspace/pages/home_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Space App',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: false),
      home: HomePage(),
      //cek ssh
    );
  }
}
