// import 'dart:io';

import '../lib/json_data.dart';

void main() {
  JSONData jsonfile = JSONData();
  jsonfile.load('./files/example.json');

  print(jsonfile.hasData);
  print(jsonfile.fields);
  
}
