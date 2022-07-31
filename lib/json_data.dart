import 'dart:convert';
import 'dart:io';
import 'data.dart';

class JSONData implements Data {
  dynamic jsondata = [];
  String contentJson = '';
  String contenttoSave = '';

  @override
  void load(jsonfile) {
    if(!jsonfile.contains('.json')) throw FormatException("Formato inválido");
    jsonfile = File(jsonfile).readAsStringSync();
    contenttoSave = jsonfile;
    data = jsonfile;
  }

  @override
  List<String> get fields => jsondata[0].keys.toList();

  @override
  set data(String data) {
    jsondata = jsonDecode(data);
    contentJson = jsondata.toString();
  }

  @override
  String get data {
    if (!hasData) return '';
    String strValues = '';
    for (int i = 0; i < jsondata.length; i++) {
      strValues += (jsondata[i]).toString();
      strValues += '\n';
    }
    return strValues;
  }

  @override
  bool get hasData => jsondata.isNotEmpty;

  @override
  void save(String fileName) {
    final outFile = File(fileName);
    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(contenttoSave);
  }

  @override
  void clear() {
    jsondata = "";
  }
}
