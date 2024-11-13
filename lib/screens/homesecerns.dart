import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retaj/screens/carpro.dart';

import '../providirr/providir_pro.dart';
import '../widgitt/home.dart';

class detils extends StatelessWidget {

 detils();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Consumer<providirprodcout>(builder: (BuildContext context, value, Widget? child) {
        final objec=value.modle?.data;
        if(objec==null){
          value.get();
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        else {
          return
             ListView.builder(

                itemCount: objec.length,itemBuilder: (context,index)
            {
              var u=objec[index];
              return GestureDetector(
                child: myhome(image: u[  "image"],) ,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cardproudct(image: u[ "image"], des:u[      "description"] , nam:u[  "name"])));
                },
              );

            }

          );

        }

      },),
    );
  }}

