import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:voidustries_ca/pages/HomePage.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomePage();
});
