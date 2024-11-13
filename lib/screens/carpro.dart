import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class cardproudct extends StatelessWidget {
  var nam;
  var des;
  var image;
  cardproudct({required this.image,required this.des,required this.nam});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Expanded(child:
          ListView(
      children: [
          Image.network(image,),
          Text(des),
          Text(image),
        ],
      )
          ),
],

    ),


    );
}}
