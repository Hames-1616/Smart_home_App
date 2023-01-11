import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:scaffold/ist.dart';
import 'package:scaffold/istpage.dart';
import '2nd.dart';
import '3rd.dart';
import '4th.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  List<Widget> wid = [First1(),three(), four()];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(builder: (light, dark) {
      return MaterialApp(
        theme: ThemeData(useMaterial3: true, colorScheme: light),
        darkTheme: ThemeData(
          colorScheme: dark,
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Container(
            child: Center(child: wid[current]),
          ),
          bottomNavigationBar: NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          current = index;
        });
      },
      selectedIndex: current,
      destinations: const <Widget>[
        NavigationDestination(icon: Icon(Icons.home), label: "Home"),
       // NavigationDestination(icon: Icon(Icons.smart_button), label: 'Smart'),
        NavigationDestination(
            icon: Icon(Icons.connect_without_contact), label: "Connection"),
        NavigationDestination(
            icon: Icon(Icons.supervised_user_circle), label: "User")
      ],
    )
        ),
      );
    });
  }
}
