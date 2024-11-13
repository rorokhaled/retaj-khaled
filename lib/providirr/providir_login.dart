import 'package:flutter/material.dart';
import 'package:retaj/modle/modlelogin.dart';
import 'package:retaj/servies_siginup/serviessigin.dart';

class providrsiginup extends ChangeNotifier{

  Future<void> siginup(String password,String name,String emil)async{

   await seriviessin.funsigin(name, password, emil, );
   notifyListeners();


}
}