import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class boxes extends StatefulWidget {
  final String message;
  boxes({super.key, required this.message});

  @override
  State<boxes> createState() => _boxesState();
}

class _boxesState extends State<boxes> {
  final List<bool> _selected = [false, true];
  @override
  Widget build(BuildContext context) {
    double ele = 3;
    String s = widget.message;
    String t = "OFF";
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    if (_selected[0] == true) {
      ele = 20;
      t = "ON";
    }
    return Card(
      //  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      elevation: ele,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 4.95,
        width: MediaQuery.of(context).size.width / 2.34,
        child: Column(
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.topCenter,
                  child: ToggleButtons(
                      borderRadius: BorderRadius.circular(20),
                      children: <Widget>[const Text("ON"), const Text("OFF")],
                      onPressed: ((int index) {
                        setState(() {
                          for (int i = 0; i < _selected.length; i++) {
                            _selected[i] = i == index;
                          }

                          if (_selected[0] == true) {
                            Fluttertoast.showToast(
                              msg: "$s turned on",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                          } else if (_selected[1] == true) {
                            Fluttertoast.showToast(
                              msg: "$s turned off",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                            );
                          }
                        });
                      }),
                      isSelected: _selected)),
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Text("$s",
                      style: TextStyle(fontSize: 14, fontFamily: "Oswald"))),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                child: Text("Status : $t"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
