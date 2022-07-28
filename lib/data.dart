import 'dart:html';

abstract class Data{
  File file;
  Data(this.file);

  void load(String fileName)=>file  ;
  
  void save(String fileName);
  void clear();
  
  bool get hasData;

  String get data;
  //String set data();

  List<String> fields();

}