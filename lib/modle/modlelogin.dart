class  modlelog{

 bool stutus;
  modlelog({required this.stutus});
  factory modlelog.fromjson(Map<String,dynamic>json){
    return modlelog(
      stutus: json["status"],

    );
  }
}