import 'package:flutter/material.dart';

class ComForm extends StatefulWidget {
  final imei;

  const ComForm({Key key, this.imei}) : super(key: key);
  @override
  _ComFormState createState() => _ComFormState();
}

Color backgroundColor = Color.fromRGBO(130, 205, 113, 1);

class _ComFormState extends State<ComForm> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
    );
  }
}
