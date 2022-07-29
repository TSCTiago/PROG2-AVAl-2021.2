import 'dart:convert';
import 'dart:io';

import 'data.dart';

class JsonData implements Data {
  dynamic jsonData;

  @override
  void load(jsonfile) {
    jsonfile = File(jsonfile).readAsStringSync();
    jsonData = jsonDecode(jsonfile);
  }

  @override
  List<String> get fields => jsonData[0].keys.toList();

  @override
  bool get hasData => jsonData.isEmpty;

  @override
  String get data => jsonData ?? '';
  
  set data(value) {
      jsonData = value;
 
  }

}
