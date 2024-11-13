import 'package:flutter/cupertino.dart';
import 'package:retaj/modle/modle_prodouct.dart';
import 'package:retaj/servies_siginup/serviespro.dart';



class providirprodcout extends ChangeNotifier{
  modlproo? modle;
  Future<void>get()async{
    modle=await serviesproudct.funget();
    notifyListeners() ;
  }
}