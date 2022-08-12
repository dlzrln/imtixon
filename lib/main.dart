import 'package:flutter/material.dart';
import 'package:flutter_application_7/one.dart';
import 'package:flutter_application_7/three.dart';
import 'package:flutter_application_7/two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
   ),
      routes: {
       
        Onewidget.id: (context) => const Onewidget(),
        MyWidget.id:(context) => const MyWidget(),
 Three.id:(context) => const Three()
      },
      home: Onewidget(),
    );
  }
}