import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:scaffold/3rd.dart';
import 'package:scaffold/istpage.dart';
import 'package:scaffold/login.dart';
import 'package:scaffold/mainpage.dart';

void main() {
  runApp(scaff());
}

class scaff extends StatelessWidget {
  scaff({super.key});

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (light, dark) {
      return GetMaterialApp(
        theme: ThemeData(
          primaryColor: Theme.of(context).primaryColor,
          colorScheme: light,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          primaryColor: Theme.of(context).primaryColor,
          colorScheme: dark,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => First(),
        },
      );
    });
  }
}
