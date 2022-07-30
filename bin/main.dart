import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/tsv_data.dart';
import 'package:prog2/json_data.dart';
import 'package:prog2/xml_data.dart';

void main() {
  //READ FILE JSON
  //JSONData jsonfile = JSONData();
  //jsonfile.load('./files/example.json');
  //print(jsonfile.hasData);
  //print(jsonfile.fields);
  //print(jsonfile.data);
  //jsonfile.clear();
  //print(jsonfile.data);
  ///jsonfile.save('./files/example.json');
  //print(jsonfile.data);


  // READ FILE XML
  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');
  //xmlfile.load('./files/example.xml');
  //print(xmlfile.hasData);
  //print(xmlfile.fields);
  //print(xmlfile.data);
  //xmlfile.clear();


  // READ FILE CSV
  CSVData csvfile = CSVData();
  csvfile.load('./files/example.csv');
  //print(csvfile.fields);
  //print(csvfile.data);
  //print(csvfile.hasData);
  //print(csvfile.separator);
  //csvfile.clear();
  //csvfile.save('./files/outfiles/exemple.csv');
  //print(csvfile.data);
  //csvfile.clear();
  ///print('csvfile.data');

  TSVData tsvfile = TSVData();
  tsvfile.load('./files/another_example.tsv');
  //print(tsvfile.fields);

  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');


  print(
      "\nIntegrantes do Grupo: Edilson Morais Brito, Francisco Mendes Magalhães Filho, Tiago da Silva Carvaho");
}
