import 'dart:convert';
import 'dart:io';
import 'data.dart';

class JSONData implements Data {
  dynamic jsondata = [];

  @override
  void load(jsonfile) {
    jsonfile = File(jsonfile).readAsStringSync();
    jsondata = jsonDecode(jsonfile);
    
  }

  @override
  List<String> get fields => jsondata[0].keys.toList();

  
  @override
  String get data => jsondata.toString();
  set data(value) {
      jsondata = value;
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