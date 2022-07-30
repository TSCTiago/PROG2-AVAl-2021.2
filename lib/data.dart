abstract class Data {
  void load(String fileName);

  List<String> get fields;

  bool get hasData;

  void save(String fileName);

  String get data;

  void clear();
}
