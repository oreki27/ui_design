import 'package:flutter/material.dart';
import './front_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
          ),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        FrontPage.routeName: (ctx) => FrontPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digichum Skillhub Assignment"),
        centerTitle: true,
      ),
      body: Center(
          child: ElevatedButton(
              child: Text(
                  "Assignment Page",
              ),
              onPressed: () => Navigator.of(context).pushNamed(FrontPage.routeName)
          )
      ),
    );
  }
}

