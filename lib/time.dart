import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';

class timep extends StatefulWidget {
  const timep({super.key});

  @override
  State<timep> createState() => _timepState();
}

class _timepState extends State<timep> {
  bool s = false;
  var time = TimeOfDay(hour: 0, minute: 0);
  @override
  Widget build(BuildContext context) {
    String ti = "00:00";
    final hours = time.hour.toString().padLeft(2, '0');
    final minutes = time.minute.toString().padRight(2, '0');
    if (s == true) {
      ti = time.format(context);
    }
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 15,
          ),
          Text(ti),
          SizedBox(
              height: MediaQuery.of(context).size.height / 20,
              width: MediaQuery.of(context).size.width / 7.47,
              child: IconButton(
                icon: Icon(Icons.arrow_drop_down),
                // style: TextButton.styleFrom(elevation: 5),
                onPressed: () {
                  showMaterialTimePicker(
                    context: context,
                    selectedTime: time,
                    onChanged: (value) => setState(() => time = value),
                  );
                  setState(() {
                    s = true;
                  });
                },
              )
              //child: Icon(Icons.arrow_drop_down)),
              )
        ],
      ),
    );
  }
}
