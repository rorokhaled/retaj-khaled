import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myhome extends StatelessWidget {
  String image;



 myhome({required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
children: [
Image.network(image),
],
    );
  }
}
