import 'dart:io';
import 'dart:convert';
import './data.dart';

class JsonData implements Data {
  //List<String> file = [];
  Map<String, dynamic> file = Map<String, dynamic>();

  @override
  String get data {
    return jsonEncode(file);
  
  }

  @override
  void set data(String fileName) {
      file = jsonDecode(fileName);
  }

  @override
  void load(jsonfile) {
    jsonfile = File(jsonfile).readAsStringSync();
  }

  @override
  bool get hasData => file.isEmpty;
}
