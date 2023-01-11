import 'package:flutter/material.dart';
import 'package:scaffold/design.dart';

class ist extends StatefulWidget {
  const ist({super.key});

  @override
  State<ist> createState() => _istState();
}

class _istState extends State<ist> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
            elevation: 10,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 1.096,
              height: MediaQuery.of(context).size.height / 5.78,
              child: Container(
                alignment: Alignment.center,
                child: Text("Image"),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              boxes(
                message: "Socket 1",
              ),
              boxes(message: "Socket 2")
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [boxes(message: "Socket 3"), boxes(message: "Socket 4")],
          ),
        ],
      ),
    );
  }
}
