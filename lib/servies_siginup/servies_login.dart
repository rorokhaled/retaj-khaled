import 'package:dio/dio.dart';
import 'package:retaj/modle/modlelogin.dart';

class serivielogin{
  static Dio dio=Dio();
  static Future<modlelog> funslogin(String password,String email, )async{
    var res =await dio.post("https://student.valuxapps.com/api/login",data:
    {

      "emial":email,
      "password":password,

    }
    );
    if(res.statusCode==200){
      print(res.data);
      return modlelog.fromjson(res.data);
    }
    else{
      throw("Not found");
    }
  }
}