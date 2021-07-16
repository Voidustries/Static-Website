import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const _githuburl = 'https://github.com/Voidustries';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopFooter();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return TabletFooter();
        } else {
          return MobileFooter();
        }
      },
    );
  }
}

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 350),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(56, 59, 75, 1.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width) / 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Voidustries",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                          "We are a community of developers learning from one another and helping on multiple projects and multiple stages. Our experience ranges from self taught to post secondary educated and we are always looking for new members."),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connect",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: MaterialButton(
                      color: Colors.purple[300],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () async {
                        await canLaunch(_githuburl)
                            ? await launch(_githuburl)
                            : throw 'Could not launch $_githuburl';
                      },
                      child: Text(
                        "GitHub",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(41, 44, 60, 1.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 350),
            child: Text(
              "Made by Stone-Monarch With Flutter",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

class TabletFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(56, 59, 75, 1.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width) / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Voidustries",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                          "We are a community of developers learning from one another and helping on multiple projects and multiple stages. Our experience ranges from self taught to post secondary educated and we are always looking for new members."),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connect",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: MaterialButton(
                      color: Colors.purple[300],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () async {
                        await canLaunch(_githuburl)
                            ? await launch(_githuburl)
                            : throw 'Could not launch $_githuburl';
                      },
                      child: Text(
                        "GitHub",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(41, 44, 60, 1.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 100),
            child: Text(
              "Made by Stone-Monarch With Flutter",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}

class MobileFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(56, 59, 75, 1.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Voidustries",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Text(
                          "We are a community of developers learning from one another and helping on multiple projects and multiple stages. Our experience ranges from self taught to post secondary educated and we are always looking for new members."),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Connect",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: MaterialButton(
                      color: Colors.purple[300],
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      onPressed: () async {
                        await canLaunch(_githuburl)
                            ? await launch(_githuburl)
                            : throw 'Could not launch $_githuburl';
                      },
                      child: Text(
                        "GitHub",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color.fromRGBO(41, 44, 60, 1.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Text(
              "Made by Stone-Monarch With Flutter",
              style: TextStyle(fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
