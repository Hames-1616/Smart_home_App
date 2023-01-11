import 'package:flutter/material.dart';
import 'package:scaffold/dimensions.dart';
import 'package:app_settings/app_settings.dart';

class three extends StatelessWidget {
  const three({super.key});

  @override
  Widget build(BuildContext context) {
    final control = TextEditingController();
    final password = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Card(
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //  SizedBox(
            //  height: MediaQuery.of(context).size.height / 4,
            //),
            // Icon(Icons.network_wifi_sharp,size: 150,)
            Container(
              margin: const EdgeInsets.all(6),
              // alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / (wid(context, 150)),
              height: MediaQuery.of(context).size.height / (hei(context, 150)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  image: const DecorationImage(
                      image: AssetImage("assets/images/icon.png"))),
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
                      left: MediaQuery.of(context).size.width /
                          (wid(context, 15))),

                  // ignore: prefer_const_constructors
                  child: TextField(
                    controller: control,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "SSID",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: TextButton.styleFrom(elevation: 15),
                    onPressed: () {
                      control.clear();
                      password.clear();
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: const Text("Connect")),
                SizedBox(
                    width:
                        MediaQuery.of(context).size.width / hei(context, 30)),
                ElevatedButton(
                    style: TextButton.styleFrom(elevation: 15),
                    onPressed: () {
                      AppSettings.openWIFISettings();
                    },
                    child: const Text("Network Manager")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
