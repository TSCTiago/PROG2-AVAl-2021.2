import 'dart:io';
import 'package:prog2/data.dart';
import 'package:xml/xml.dart';

class XMLData implements Data{

  @override
  void load(xmlfile){
    final document = XmlDocument.parse(xmlfile);
    final filesxml = document.rootElement.childElements;

    for (XmlElement row in filesxml){
      Map<String, dynamic> mapRow = {};
      for (XmlElement element in row.childElements){
        mapRow[element.name.toString()] = element.innerText;
      }

      print(mapRow);
    }
  }
  @override
  void save(String fileName) {
    // TODO: implement save
  }

  @override
  // TODO: implement hasData
  bool get hasData => throw UnimplementedError();

  @override
  void clear() {
    // TODO: implement clear
  }

  @override
  // TODO: implement data
  String get data => throw UnimplementedError();

  @override
  // TODO: implement fields
  List<String> get fields => throw UnimplementedError();
}

