import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/trending_this_week.dart';

class Newplant extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: TrendingThisWeek(),
      ),
    );
  }
}
