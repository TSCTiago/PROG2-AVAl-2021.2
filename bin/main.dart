import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/json_data.dart';

void main() {
  //READ FILE JSON
  JSONData jsonfile = JSONData();
  jsonfile.load('./files/example.json');
  //print(jsonfile.hasData);
  //print(jsonfile.fields);
  //print(jsonfile.data);
  //jsonfile.clear();
  //print(jsonfile.data);
  ///jsonfile.save('./files/example.json');
  //print(jsonfile.data);

  // READ FILE CSV
  CSVData csvfile = CSVData();
  csvfile.load('./files/example.csv');
  print(csvfile.fields);
  //print(csvfile.data);
  //print(csvfile.hasData);
  //print(csvfile.separator);
  //csvfile.clear();
  csvfile.save('./files/example.csv');
  //print(csvfile.data);
  //csvfile.clear();
  ///print('csvfile.data');
  print(
      "\n Integrantes do Grupo: Edilson Morais Brito, Francisco Mendes Magalhães Filho, Tiago da Silva Carvaho");
}
