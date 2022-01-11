import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final icon;
  VoidCallback onPress;

  AppBarIcon(this.icon,this.onPress);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          shape: MaterialStateProperty.all<CircleBorder>(
              CircleBorder(
                  side: BorderSide(color: Colors.blue),
              ),
          ),
        ),
        child: Icon(
          icon,
        )
    );
  }
}