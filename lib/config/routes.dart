import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:voidustries_ca/config/route_handlers.dart';

class Routes {
  static String root = "/";
  static String about = "/about";
  static String projects = "/projects";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      // TODO: Make a 404 page
      print("ROUTE NOT FOUND");
      return;
    });

    router.define(root, handler: rootHandler);
    // router.define(about, handler: aboutHandler);
    // router.define(projects, handler: projectsHandler);
  }
}
