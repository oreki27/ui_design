import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  final String text;
  final bool val;

  Widget1(this.text,this.val);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: <Widget>[
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            child: SizedBox(
              height: height * 0.1,
              width: width * 0.2,
              child: val ? Image.asset("assets/29975420_1.jpeg") : Image.asset("assets/29975420.jpeg"),
            ),
          ),
        ),
        SizedBox(
            width: width * 0.2,
            child: Text(
              text,
              textAlign: TextAlign.center,
            )
        ),
      ],
    );
  }
}
