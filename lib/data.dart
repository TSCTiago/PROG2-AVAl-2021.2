abstract class Data{
  void load(String fileName);
  void save(String fileName);
  void clear();
  
  bool get hasData;

  String get data;
  //String set data();

  List<String> fields();

}