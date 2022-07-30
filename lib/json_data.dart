import 'dart:convert';
import 'dart:io';
import 'data.dart';
import 'exceptions/custom_exception.dart';

class JSONData implements Data {
  dynamic jsondata = [];

  @override
  void load(jsonfile) {
    try{
    jsonfile = File(jsonfile).readAsStringSync();
    jsondata = jsonDecode(jsonfile);} on TypeError{
      throw 'Não foi possível ler';
    }
    
  }

  @override
  List<String> get fields => jsondata[0].keys.toList();

  
  @override
  String get data => jsondata.toString();
  set data(value) {
      try{
      jsondata = value;
    } on TypeError {
      throw CustomException(message: 'Erro de tipo');
    }
 
  }
  @override
  bool get hasData => !jsondata.isEmpty;

   @override
   void save(String fileName){
    File(fileName).writeAsString(
      '''
    [
      {
      "name": "Rony Weslley",
      "species": "human",
      "house": "Gryffindor"
      }
    ]
    ''',
    );
  }
  @override
  void clear(){
     jsondata = null;
  }
}
