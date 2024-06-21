import "package:mobiledesign/pages/home.dart";
import 'package:flutter/material.dart';
import "package:mobiledesign/pages/tansection/tansection.dart";

void main() => runApp(MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/tansection": (context) => const TanSection()
      },
    ));
 