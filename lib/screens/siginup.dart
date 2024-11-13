import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:retaj/providirr/providir_login.dart';
import 'package:retaj/screens/loginpage.dart';


class sigin extends StatelessWidget {
  const sigin({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emile=TextEditingController();
    TextEditingController pass=TextEditingController();
    TextEditingController name=TextEditingController();
    var fromkey=GlobalKey <FormState>();

    return Scaffold(
     appBar: AppBar(leading:  Icon(Icons.menu),
     title: Text("signup"),
       centerTitle: true,
     ),
      body: Consumer<providrsiginup>(builder: (BuildContext context, value, Widget? child) {
return  Form(
  key: fromkey,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
  children: [

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
     if( fromkey.currentState!.validate()){
     await value.siginup(name.text,pass.text,emile.text);

        Navigator.push(context, MaterialPageRoute(builder: (context) =>
            login()));
      }

    }, child: Text("signup")),


      ],
      ),
);




    },

    ),
    );
  }
}
