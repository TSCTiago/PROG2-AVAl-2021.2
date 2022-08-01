import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/tsv_data.dart';
import 'package:prog2/json_data.dart';
import 'package:prog2/xml_data.dart';

void main() {

  //READ FILE JSON
  print('-'*50);
  print('JSON File Area');
  print('-'*50);
  JSONData jsonfile = JSONData();
  jsonfile.load('./files/example.json');
  print('Fields: ${jsonfile.fields}');
  print('Has data: ${jsonfile.hasData}');
  print('Data: \n${jsonfile.data}');
  jsonfile.clear();
  //print after clear
  print('HAS DATA: ${jsonfile.hasData}');
  //print(jsonfile.data);
  jsonfile.save('./files/example.json');
  //print(jsonfile.data);
  print('-'*50);
  print('');

  //READ FILE XML
  print('-'*50);
  print('XML File Area');
  print('-'*50);
  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');
  print('Fields: ${xmlfile.fields}');
  print('Has data: ${xmlfile.hasData}');
  print('Data: \n${xmlfile.data}');
  xmlfile.clear();
  //print after clear
  print('HAS DATA: ${xmlfile.hasData}');
  //print(xmlfile.data);
  xmlfile.save('./files/example.xml');
  //print(xmlfile.data);
  print('-'*50);


   //READ FILE CSV
  print('*'*43);
  print('ÁREA DE ARQUIVO TSV');
  print('*'*43);
  CSVData csvfile = CSVData();
  csvfile.load('./files/example.csv');
  print('CAMPOS: ${csvfile.fields}');
  print('SEPARADOR:${csvfile.separator}');
  print('TEM DADOS: ${csvfile.hasData}');
  print('DADOS: \n${csvfile.data}');
  csvfile.save('./files/outfiles/exemple.csv');
  csvfile.clear();
  print('DADOS: \n${csvfile.data}');
  print('*'*43);

  print('*'*43);
  print('ÁREA DE ARQUIVO TSV');
  print('*'*43);
  TSVData tsvfile = TSVData();
  tsvfile.load('./files/example.tsv');
  print('SEPARADOR: ${tsvfile.separator}');
  print('CAMPOS: ${tsvfile.fields}');
  print('TEM DADOS: ${tsvfile.hasData}');
  print('DADOS: \n${tsvfile.data}');
  //tsvfile.clear();
  print('TEM DADOS: ${tsvfile.hasData}');
  print('DADOS: \n${tsvfile.data}');
  tsvfile.save('./example.tsv');
  print('*'*43);


  print(
    "\nIntegrantes do Grupo: Edilson Morais Brito, Francisco Mendes Magalhães Filho, Tiago da Silva Carvaho");
}
