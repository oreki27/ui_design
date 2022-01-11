import 'package:flutter/material.dart';
import 'package:counter/counter.dart';

class DailyWear extends StatelessWidget {
  const DailyWear({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.satellite_outlined),
          title: Text("Shirt"),
          subtitle: Text("Rs. 0000/piece"),
          trailing: Counter(
            min: 0,
            max: 10,
          ),
        ),
        ListTile(
          leading: Icon(Icons.satellite_outlined),
          title: Text("Jeans"),
          subtitle: Text("Rs. 0000/piece"),
          trailing: Counter(
            min: 0,
            max: 10,
          ),
        ),
        ListTile(
          leading: Icon(Icons.satellite_outlined),
          title: Text("Shorts"),
          subtitle: Text("Rs. 0000/piece"),
          trailing: Counter(
            min: 0,
            max: 10,
          ),
        ),
      ],
    );
  }
}
