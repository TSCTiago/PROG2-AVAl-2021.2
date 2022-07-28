import 'dart:io';

import './data.dart';

class JsonData implements Data{
  @override
  void load(jsonfile){
   final file = File(jsonfile).readAsStringSync();
   print(file);
  }

}