import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold/2nd.dart';
import 'package:scaffold/dimensions.dart';
import 'package:scaffold/twoo.dart';

class kard extends StatefulWidget {
  const kard({super.key});

  @override
  State<kard> createState() => _kardState();
}

class _kardState extends State<kard> {
  String result = "Socket";
  final List<bool> _selected = [false, true];
  @override
  Widget build(BuildContext context) {
    IconData c = const IconData(0xe37c, fontFamily: 'MaterialIcons');
    double ele = 3;
    String s = result;
    if (_selected[0] == true) {
      ele = 20;
      c = const IconData(0xe37b, fontFamily: 'MaterialIcons');
    }
    return InkResponse(
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) => two()));
        setState(() {
         nav(context, s);
        });
      },
      child: Card(
        // margin:
        //   EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
        elevation: ele,
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.3,
          height: MediaQuery.of(context).size.height / 7,
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / hei(context, 30),
                  //width: MediaQuery.of(context).size.width/wid(context, 10),
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width / wid(context, 8),
                      right:
                          MediaQuery.of(context).size.width / wid(context, 8)),
                  alignment: Alignment.topRight,
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
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / wid(context, 14)),
                //alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Text(
                      "$s",
                      style: GoogleFonts.poppins(fontSize: 14),
                    ),
                    SizedBox(
                      height:
                          MediaQuery.of(context).size.height / hei(context, 5),
                    ),
                    Icon(c)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  nav(BuildContext context, String s) async {
    result = await Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => twoo(message: s))); //twoo(message: s));
   
  }
}
