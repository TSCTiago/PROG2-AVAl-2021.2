import 'dart:convert';
import 'dart:io';

import 'data.dart';

class JsonData implements Data {
  dynamic data;

  
  @override
  void load(jsonfile) {
    jsonfile = File(jsonfile).readAsStringSync();
    data = jsonDecode(jsonfile);
  
  }


  @override
  List<String> get fields => data[0].keys.toList();
  

  @override
  bool get hasData => data.isEmpty;


}
