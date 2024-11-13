import 'package:dio/dio.dart';
import 'package:retaj/modle/modlelogin.dart';

class seriviessin{
static Dio dio=Dio();
static Future<void> funsigin(String name,String password,String email )async{
  var res =await dio.post("https://student.valuxapps.com/api/register",data:
 {
   "name":name,
   "password":password,
   "emial":email,


 }
  );
  if(res.statusCode==200){
    print(res.data);


  }
  else{
    throw("Not found");
  }
}
}