import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_7/two.dart';

class Onewidget extends StatefulWidget {
  const Onewidget({Key? key}) : super(key: key);
  static const id = "one page";
  @override
  State<Onewidget> createState() => _OneWidget();
}

class _OneWidget extends State<Onewidget> {
  @override
  void didChangeDependencies() {
    Timer(Duration(seconds: 3), (){Navigator.pushNamed(context, MyWidget.id);});
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                height: 150,
                width: 150,
                decoration:const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/zur.png"),
                )))));
  }
}
