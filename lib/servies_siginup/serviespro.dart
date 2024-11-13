import 'package:dio/dio.dart';
import 'package:retaj/modle/modle_prodouct.dart';



class serviesproudct{
  static Dio dio=Dio();
  static Future< modlproo >funget()async{
    var res= await dio.get("https://student.valuxapps.com/api/home");
    return modlproo.fromjson(res.data);
  }
}