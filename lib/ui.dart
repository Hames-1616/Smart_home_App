import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ui extends StatelessWidget {
  const ui({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(alignment: Alignment.bottomLeft,
      child: Text("Enter your email id"),
      ),
    );
  }
}