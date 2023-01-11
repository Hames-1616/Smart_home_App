import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scaffold/designmod.dart';
import 'package:scaffold/dimensions.dart';

class First1 extends StatefulWidget {
  const First1({super.key});

  @override
  State<First1> createState() => _First1State();
}

class _First1State extends State<First1> {
  @override
  Widget build(BuildContext context) {
    double ele = 3;
    return  SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Card(
          margin: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / hei(context, 80),
              ),
              kard(),
              SizedBox(
                height: MediaQuery.of(context).size.height / wid(context, 13),
              ),
              kard(
              
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / wid(context, 13),
              ),
              kard(
                
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / wid(context, 13),
              ),
              kard(
                
              ),
            ],
          ),
        ),

    );
  }
}
