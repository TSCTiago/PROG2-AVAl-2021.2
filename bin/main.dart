// import 'dart:io';

import '../lib/json_data.dart';

void main() {
  JsonData jsonfile = JsonData();
  jsonfile.load('./files/example.json');

  print(jsonfile.hasData);
  print(jsonfile.fields);
  
}
