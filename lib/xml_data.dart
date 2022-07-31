import 'dart:io';
import 'package:prog2/data.dart';
import 'package:xml/xml.dart';

class XMLData implements Data {
   Map<String, dynamic> mapcontentTag = {};
   List<String> field = [];
   dynamic content = [];
  @override
  void load(xmlfile) {
    final document = File(xmlfile).readAsStringSync();
    data = document;
  }

  set data(String data) {
    final document1 = XmlDocument.parse(data);
    final xmlFile = document1.rootElement.childElements;

    for (XmlElement tagContent in xmlFile) {
      for (XmlElement element in tagContent.childElements) {
        mapcontentTag[element.name.toString()] = element.innerText;
      }

      content.add(mapcontentTag.values.toString());
      field = mapcontentTag.keys.toList();
    
    }
  }

  @override
  // TODO: implement data
  String get data => content.toString();

  @override
  List<String> get fields => field;
  @override
  bool get hasData => content.isNotEmpty;


  @override
  void clear() {
    content = "";
  }


  @override
  void save(String fileName) {
    // TODO: implement save
  }
}
