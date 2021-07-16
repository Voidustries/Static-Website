import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _githuburl = 'https://github.com/Voidustries';

class OverviewSection extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "We make stuff.\nFrom time to time.",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 40.0,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'From time to time we do end up making things. Apps, websites, server applications and so on. Most of it is done as a learning exsperiance and for a reason to play around in the realm of unknown. None of these apps neccesarily fint into an "Untapped" market, nor do they need to exsist for that matter, but science isn\'t about why. It\'s about WHY NOT. If I want to make an application similar to Statuspage using technologies like Flutter, Express, GraphQL and so on, Why not.',
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () async {
                await canLaunch(_githuburl)
                    ? await launch(_githuburl)
                    : throw 'Could not launch $_githuburl';
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Github",
                  style: TextStyle(color: Colors.purple[300]),
                ),
              ),
            )
          ],
        ),
      ),
      ConstrainedBox(
        constraints: BoxConstraints(maxWidth: width - 80),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
          child: Image.asset("assets/images/Lp_image.png"),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pageChildren((constraints.biggest.width) / 2),
            ),
          );
        } else {
          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
            child: Column(
              children: pageChildren(constraints.biggest.width),
            ),
          );
        }
      },
    );
  }
}
