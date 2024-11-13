class modlproo{
  List<dynamic>data;
  modlproo({required this.data});
  factory modlproo.fromjson(Map<String,dynamic>json){
 
   return modlproo(data: json[ "data"]["products"]);
  
  
  }
    
}