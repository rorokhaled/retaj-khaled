import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retaj/providirr/providir_login.dart';
import 'package:retaj/providirr/providir_sigin.dart';
import 'package:retaj/screens/carpro.dart';
import 'package:retaj/widgitt/home.dart';
import 'package:retaj/widgitt/coustum%20Text.dart';

import 'homesecerns.dart';

class login extends StatelessWidget {
login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emile=TextEditingController();
    TextEditingController pass=TextEditingController();
    TextEditingController name=TextEditingController();
    var fromkey=GlobalKey <FormState>();

    return Scaffold(
      appBar: AppBar(leading:  Icon(Icons.menu),
        title: Text("login"),
        centerTitle: true,
      ),
      body: Consumer<providlogin>(builder: (BuildContext context, value, Widget? child) {
        var objec=value.modle?.stutus;
        return  Form(
          key: fromkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
CircleAvatar(backgroundImage:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJxo2NFiYcR35GzCk5T3nxA7rGlSsXvIfJwg&s") ),
              TextFormField(
                controller: name,
                validator: (value)
                {
                  if(value==null||value.isEmpty){
                    return "enter name";
                  }
                  return null;
                },

                decoration: InputDecoration(
                    label: Text("your name"),
                    icon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),

              TextFormField(
                validator: (value)
                {
                  if(value==null||value.isEmpty){
                    return "enter name";
                  }
                  return null;
                },

                decoration: InputDecoration(
                    label: Text("Email"),
                    icon: Icon(Icons.email),

                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(20),

                    )

                ),

              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (value)
                {
                  if(value==null||value.isEmpty){
                    return "enter name";
                  }
                  return null;
                },

                decoration: InputDecoration(
                    label: Text("password"),
                    icon: Icon(Icons.password),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              )
              ,
              ElevatedButton(onPressed: () async{
               if( fromkey.currentState!.validate()) {
                 if (value.modle == null) {
                   await value.login(pass.text, emile.text);
                 }
                 else if (objec == true) {
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context) =>
                           detils()));
                   //reta
                 }
               }
              }, child: Text("login")),


            ],
          ),
        );




      },

      ),
    );
  }
}
