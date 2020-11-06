import 'package:flutter/material.dart';

class MainWidget extends StatefulWidget {
  @override
  _MainWidgetState createState() => _MainWidgetState();
}

Color backgroundColor = Color.fromRGBO(130, 205, 113, 1);

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
    );
  }
}
