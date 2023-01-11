import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:scaffold/time.dart';

class box extends StatefulWidget {
  final String message;
  const box({super.key, required this.message});

  @override
  State<box> createState() => _boxState();
}

class _boxState extends State<box> {
  var time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    String s = widget.message;
    return Card(
      elevation: 10,
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 3.8,
        width: MediaQuery.of(context).size.width / 2.34,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 210.75,
            ),
            Expanded(
                child: Text(
              "$s",
              style: TextStyle(fontFamily: "Oswald", fontSize: 14),
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/30.1), child: Text("ON Time:",style: TextStyle(fontSize: 13))),
                timep(),
            SizedBox(height: MediaQuery.of(context).size.height/60),
            Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/30.1), child: Text("OFF Time:",style: TextStyle(fontSize: 13),)),
            timep()]),
             ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/76),
            Row(
              children: [Expanded(child: Container(
                margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/173.4,bottom:MediaQuery.of(context).size.height/123.85 ),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height/24.771,
                  width: MediaQuery.of(context).size.width/6.75,
                  child: ElevatedButton(style:ButtonStyle(),onPressed: () {}, child:Text("Set"))),
                SizedBox(
                  height: MediaQuery.of(context).size.height/24.771,
                  width: MediaQuery.of(context).size.width/5.96,
                  child: ElevatedButton(onPressed: (){}, child: Text("Reset"))),
              ]),))],
            )
            
    
          ],
        ),
      ),
    );
  }
}
