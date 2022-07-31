import 'dart:convert';
import 'dart:io';
import 'data.dart';
import 'exceptions/custom_exception.dart';

class JSONData implements Data {
  dynamic jsondata = [];

  @override
  void load(jsonfile) {
    if(!jsonfile.contains('.json')) throw FormatException("Formato inválido");
    jsonfile = File(jsonfile).readAsStringSync();
    jsondata = jsonDecode(jsonfile);
    
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
  bool get hasData => jsondata.isNotEmpty;

   @override
   void save(String fileName){
    File(fileName).writeAsStringSync(
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
