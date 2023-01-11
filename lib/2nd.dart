import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:get/get.dart';
import 'package:scaffold/design2.dart';
import 'package:scaffold/istpage.dart';
import 'package:scaffold/mainpage.dart';
import 'package:scaffold/time.dart';

class two extends StatefulWidget {
  const two({super.key});

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    //Navigator.of(context).push(true);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigator.pop(context);
            Get.back();
          },
        ),
      ),
      body: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  box(
                    message: "Socket 1",
                  ),
                  box(
                    message: "Socket 2",
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 17.34,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  box(
                    message: "Socket 3",
                  ),
                  box(
                    message: "Socket 4",
                  )
                ],
              ),
            ],
          )),
    );
  }
}
