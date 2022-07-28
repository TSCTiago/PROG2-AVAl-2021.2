import 'dart:io';

import './data.dart';

class JsonData implements Data{

  @override
  void load(String jsonfile){
    print(jsonfile.readAsStringSync());
  };

}