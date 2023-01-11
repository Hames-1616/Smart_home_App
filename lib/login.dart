import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:scaffold/mainpage.dart';
import 'package:scaffold/dimensions.dart';

class First extends StatelessWidget {
  First({super.key});
  final control = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        elevation: 0,
        // color:,
        margin: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width / (wid(context, 150)),
                height:
                    MediaQuery.of(context).size.height / (hei(context, 150)),
                child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80)),
                    child: //Image.asset("assets/images/user.png")
                        Container(
                      margin: const EdgeInsets.all(6),
                      // alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width /
                          (wid(context, 350)),
                      height: MediaQuery.of(context).size.height /
                          (hei(context, 150)),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90),
                          border: Border.all(color: Colors.black),
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/user.png"))),
                    )),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / (wid(context, 350)),
              height: MediaQuery.of(context).size.height / (hei(context, 60)),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width /
                          (wid(context, 15))),

                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: control,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / hei(context, 25)),
            SizedBox(
              width: MediaQuery.of(context).size.width / (wid(context, 350)),
              height: MediaQuery.of(context).size.height / (hei(context, 60)),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                      left:
                          MediaQuery.of(context).size.width / wid(context, 15),
                      right:
                          MediaQuery.of(context).size.width / wid(context, 15)),
                  child: TextField(
                    controller: password,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
                height: MediaQuery.of(context).size.height / hei(context, 25)),
            OutlinedButton(
                onPressed: () {
                  control.clear();
                  password.clear();
                  FocusManager.instance.primaryFocus?.unfocus();

                  Fluttertoast.showToast(
                    msg: "Login Successful",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                  );
                  // Navigator.push(context,
                  //   MaterialPageRoute(builder: (context) => startPage()));
                  Get.to(startPage());
                },
                child: const Text("Log in")),
          ],
        ),
      ),
    );
  }
}
