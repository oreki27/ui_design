import 'package:counter/counter.dart';
import 'package:flutter/material.dart';

import './widgets/appbar_icon.dart';
import 'widgets/daily_wear.dart';
import 'widgets/widget1.dart';
import 'widgets/widget2.dart';

class FrontPage extends StatefulWidget {
  static const routeName = "/front-page";

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  List<bool> _isOpen = [false,false,false];
  @override
  Widget build(BuildContext context) {
    List<bool> selected1 = [false,true,false,false];
    List<bool> selected2 = [false,true,false,false];
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AppBarIcon(Icons.shopping_cart_outlined,() {}),
            AppBarIcon(Icons.storefront_outlined,() {}),
            AppBarIcon(Icons.checklist,() {}),
            AppBarIcon(Icons.payment_outlined,() {}),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/background.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 20,
                left: 10,
                right: 10,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Widget1("Laundry Wash & Iron", selected1[0],),
                  Widget1("Dry-Cleaning", selected1[1],),
                  Widget1("Steam Press", selected1[2],),
                  Widget1("Shoe & Leather Care", selected1[3],),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Widget2("WOMEN", selected2[0]),
                  Widget2("MEN", selected2[1]),
                  Widget2("KIDS", selected2[2]),
                  Widget2("HOUSEHOLD", selected2[3]),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.lightBlue,
                    padding: const EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        focusColor: Colors.white,
                        hintText: "Search your regular items here",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2000),
                        ),
                      ),
                    ),
                  ),
                  ExpansionPanelList(
                    children: <ExpansionPanel>[
                      ExpansionPanel(
                          headerBuilder: (context, isOpen) => const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                                "Daily Wear",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          body: DailyWear(),
                        isExpanded: _isOpen[0],
                      ),
                      ExpansionPanel(
                        headerBuilder: (context, isOpen) => const Text("Ethnic Wear"),
                        body: const Text("Ethnic Wear"),
                        isExpanded: _isOpen[1],
                      ),
                      ExpansionPanel(
                        headerBuilder: (context, isOpen) => const Text("Winter Wear"),
                        body: const Text("Winter Wear"),
                        isExpanded: _isOpen[2],
                      ),
                    ],
                    expansionCallback: (i,isOpen) =>
                        setState(() {
                          _isOpen[i] = isOpen;
                        }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

