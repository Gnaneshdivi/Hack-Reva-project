import 'package:PLANTIFY/Comform.dart';
import 'package:PLANTIFY/Indform.dart';
import 'package:flutter/material.dart';

class Comind extends StatefulWidget {
  final imei;

  const Comind({Key key, this.imei}) : super(key: key);
  @override
  _ComindState createState() => _ComindState();
}

Color backgroundColor = Color.fromRGBO(130, 205, 113, 1);

class _ComindState extends State<Comind> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            child: Column(
              children: [
                SizedBox(height: height * 0.06),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      '<- Back',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.shortestSide > 400
                            ? 18
                            : 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.08),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'CHOOSE CATEGORY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.shortestSide > 400
                            ? 25
                            : 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(height: height * 0.15),
                Card(
                  elevation: 20,
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ComForm(imei: widget.imei)),
                      );
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: Center(
                          child: Text(
                        "COMPANY",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.2),
                Card(
                  elevation: 20,
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Indform(
                                  imei: widget.imei,
                                )),
                      );
                    },
                    child: Container(
                      height: height * 0.07,
                      width: width * 0.7,
                      child: Center(
                          child: Text(
                        "INDIVIDUAL",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            width: 2,
                            color: Colors.deepOrange,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * 0.05,
            right: 0,
            child: Image.asset(
              'assets/p1.png',
              height: height * 0.3,
              width: width * 0.4,
            ),
          ),
          Positioned(
            bottom: -100,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/sand.png',
              height: height * 0.3,
              width: width * 0.4,
            ),
          )
        ],
      ),
    );
  }
}
