import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class TechnologiesSection extends StatelessWidget {
  Map<String, IconData> technologies = {
    "Dart": SimpleIcons.dart,
    "Flutter": SimpleIcons.flutter,
    "MongoDB": SimpleIcons.mongodb,
    "Node.JS": SimpleIcons.nodedotjs,
    "GitHub": SimpleIcons.github,
    "GitHub Actions": SimpleIcons.githubactions
  };

  List<Widget> sectionChildren() {
    List<Widget> cards = [];

    technologies.forEach((key, value) {
      cards.add(ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    key,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    value,
                    size: 250,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ),
      ));
    });

    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constarints) {
      return Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Technologies We Use!",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 40),
              textAlign: TextAlign.center,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: constarints.maxWidth - 100),
              child: Wrap(
                children: sectionChildren(),
                alignment: WrapAlignment.center,
              ),
            ),
          ],
        ),
      );
    });
  }
}
