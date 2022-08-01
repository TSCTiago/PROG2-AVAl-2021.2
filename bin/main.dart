import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/tsv_data.dart';
import 'package:prog2/json_data.dart';
import 'package:prog2/xml_data.dart';

void main() {

  //READ FILE JSON
  print('-'*50);
  print('                   JSON File Area');
  print('-'*50);
  JSONData jsonfile = JSONData();
  jsonfile.load('./files/example.json');
  print('Fields: ${jsonfile.fields}');
  print('Has data: ${jsonfile.hasData}');
  print('Data: \n${jsonfile.data}');
  jsonfile.save('./files/example.json');
  jsonfile.clear();
  print('after clear\n');
  print('Has data: ${jsonfile.hasData}');
  print('Data: \n${jsonfile.data}');
  print('='*50);
  print('');


  //READ FILE XML
  print('-'*50);
  print('                   XML File Area');
  print('-'*50);
  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');
  print('Fields: ${xmlfile.fields}');
  print('Has data: ${xmlfile.hasData}');
  print('Data: \n${xmlfile.data}');
  xmlfile.save('./files/example.xml');
  xmlfile.clear();
  print('after clear\n');
  print('Has data: ${xmlfile.hasData}');
  print('Data: \n${xmlfile.data}');
  print('='*50);
  print('');

  //READ FILE CSV
  print('-'*50);
  print('                   CSV File Area');
  print('-'*50);
  CSVData csvfile = CSVData();
  csvfile.load('./files/example.csv');
  print('Separator: ${csvfile.separator}');
  print('Fields: ${csvfile.fields}');
  print('Has data: ${csvfile.hasData}');
  print('Data: \n${csvfile.data}');
  csvfile.save('./files/example.csv');
  csvfile.clear();
  print('after clear\n');
  print('Has data: ${csvfile.hasData}');
  print('Data: \n${csvfile.data}');
  print('='*50);
  print('');


  //READ FILE TSV
  print('-'*50);
  print('                   TSV File Area');
  print('-'*50);
  TSVData tsvfile = TSVData();
  tsvfile.load('./files/example.tsv');
  print('Separator: ${tsvfile.separator}');
  print('Fields: ${tsvfile.fields}');
  print('Has data: ${tsvfile.hasData}');
  print('Data: \n${tsvfile.data}');
  tsvfile.save('./files/example.tsv');
  tsvfile.clear();
  print('after clear\n');
  print('Has data: ${tsvfile.hasData}');
  print('Data: \n${tsvfile.data}');
  print('='*50);
  print('');

  print("Integrantes do Grupo: Edilson Morais Brito, Francisco Mendes Magalhães Filho, Tiago da Silva Carvaho");
}
