import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coustextfild extends StatelessWidget {
  String lable;
IconData icon;
 coustextfild({required this.icon,required this.lable});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
      label: Text("$lable"),
        icon:Icon( icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        )
      ),
    );
  }
}
