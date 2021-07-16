import 'package:flutter/material.dart';
import 'package:voidustries_ca/NavBar/Navbar.dart';
import 'package:voidustries_ca/components/Footer.dart';
import 'package:voidustries_ca/components/OverviewSection.dart';
import 'package:voidustries_ca/components/TechnologiesSection.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Column(
          //   children: <Widget>[
          SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(39, 34, 80, 1.0),
                      Color.fromRGBO(31, 24, 105, 1.0)
                    ]),
              ),
              child: Column(
                children: <Widget>[
                  Navbar(),
                  OverviewSection(),
                  TechnologiesSection(),
                  Footer()
                ],
              ),
            ),
          ],
        ),
      ),
      // ConstrainedBox(
      //   constraints: BoxConstraints(minWidth: double.infinity,),
      //   child: Container(
      //     child: Footer()
      //   ),
      // ),
      //   ],
      // ),
    );
  }
}
