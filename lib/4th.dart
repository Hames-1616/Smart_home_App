

import 'package:flutter/material.dart';
import 'package:scaffold/dimensions.dart';
import 'package:scaffold/login.dart';

class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      margin: EdgeInsets.zero,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height/hei(context, 130),),
          Container(
            margin: const EdgeInsets.all(6),
            // alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / (wid(context, 120)),
            height: MediaQuery.of(context).size.height / (hei(context, 120)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                border: Border.all(color: Colors.white),
                color: Colors.white,
                image: const DecorationImage(
                    image: AssetImage("assets/images/plug.png"))),
          ),

          Container(
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/wid(context, 15),right: MediaQuery.of(context).size.width/wid(context, 250)),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/hei(context, 65),),
              
                  TextButton(onPressed: (){}, child: Row(children: [
                    Icon(Icons.home),
                    SizedBox(width: MediaQuery.of(context).size.width/wid(context, 15),),
                    Text("A C C O U N T"),
                ],)),
                  SizedBox(height: MediaQuery.of(context).size.height/hei(context, 25),),
                  TextButton(onPressed: (){}, child: Row(children: [
                    Icon(Icons.message),
                    SizedBox(width: MediaQuery.of(context).size.width/wid(context, 15),),
                    Text("M E S S A G E"),
                ],)),

                  SizedBox(height: MediaQuery.of(context).size.height/hei(context, 25),),
                  TextButton(onPressed: (){}, child: Row(children: [
                    Icon(Icons.info),
                    SizedBox(width: MediaQuery.of(context).size.width/wid(context, 15),),
                    Text("A B O U T  U S"),
                ],)),

                  SizedBox(height: MediaQuery.of(context).size.height/hei(context, 25),),
                  TextButton(onPressed: (){
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => First()));
                  }, child: Row(children: [
                    Icon(Icons.logout),
                    SizedBox(width: MediaQuery.of(context).size.width/wid(context, 15),),
                    Text("L O G O U T"),
                ],))
                  ],
            ),
          ),
              ],
            ),
      
    );
  }
}
