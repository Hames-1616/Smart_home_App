import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scaffold/dimensions.dart';
import 'package:scaffold/time.dart';

class twoo extends StatefulWidget {
  final String message;
  const twoo({required this.message, super.key});

  @override
  State<twoo> createState() => _twooState();
}

class _twooState extends State<twoo> {
  String p="";
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    // super.initState();
    name.text = widget.message;
    name.addListener((_save));
    myFocusNode = FocusNode();
  }

  void _save() {
    p = name.text;
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    super.dispose();
  }

  TextEditingController name = new TextEditingController();
  bool exp = true;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height / hei(context, 250);
    //if (exp == true) {
    // h=MediaQuery.of(context).size.height / hei(context, 350);
    // }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: //Text(
            //widget.message,
            //style: TextStyle(fontFamily: 'Poppins'),
            TextField(
          focusNode: myFocusNode,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          controller: name,
        ),
        // ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context,p);
          },
        ),
      ),
      body: Card(
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(
                      right:
                          MediaQuery.of(context).size.width / wid(context, 50),
                      left:
                          MediaQuery.of(context).size.width / wid(context, 50),
                      top: MediaQuery.of(context).size.height /
                          hei(context, 100)),
                  width: MediaQuery.of(context).size.width,
                  child: SizedBox(
                    height: h,
                    //MediaQuery.of(context).size.height / hei(context, 250),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          wid(context, 15),
                                      top: MediaQuery.of(context).size.height /
                                          hei(context, 10)),
                                  alignment: Alignment.topLeft,
                                  child: Text("Schedule",
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16))),
                              SizedBox(
                                width: MediaQuery.of(context).size.width /
                                    wid(context, 160),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Card(
                                  elevation: 1,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height /
                                        hei(context, 40),
                                    width: MediaQuery.of(context).size.width /
                                        wid(context, 40),
                                    child: IconButton(
                                        icon: Icon(Icons.edit),
                                        onPressed: () {
                                          myFocusNode.requestFocus();
                                          setState(() {});
                                        }),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                hei(context, 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Text("From"), Text("To")],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                hei(context, 15),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [timep(), timep()],
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height /
                                hei(context, 25),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width /
                                    wid(context, 55),
                                right: MediaQuery.of(context).size.width /
                                    wid(context, 55)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Set")),
                                ElevatedButton(
                                    onPressed: () {}, child: Text("Reset"))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
