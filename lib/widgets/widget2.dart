import 'package:flutter/material.dart';

class Widget2 extends StatelessWidget {
  final String text;
  final bool val;

  Widget2(
      this.text,
      this.val,
      );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Card(
          color: val ? Colors.lightBlue : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                color: val ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
