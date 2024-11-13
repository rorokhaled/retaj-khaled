import 'package:flutter/material.dart';
import 'package:retaj/modle/modlelogin.dart';
import 'package:retaj/servies_siginup/servies_login.dart';


class providlogin extends ChangeNotifier{
  modlelog? modle;

  Future<void> login(String password,String emil)async{

   modle=   await serivielogin.funslogin( password, emil, );
      notifyListeners();

  }
}