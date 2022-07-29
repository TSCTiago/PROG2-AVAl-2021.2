import 'dart:io';

import 'package:prog2/json_data.dart';

void main() {
  JsonData jsonfile = JsonData();
  jsonfile.load('./files/example.json');

  print(jsonfile.hasData);
  print(jsonfile.fields);
}
