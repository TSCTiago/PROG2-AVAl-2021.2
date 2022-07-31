import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/tsv_data.dart';
import 'package:prog2/json_data.dart';
import 'package:prog2/xml_data.dart';

void main() {
  //READ FILE JSON
  
  print('*'*43);
  print('ÁREA DE ARQUIVO json');
  print('*'*43);
  JSONData jsonfile = JSONData();
  jsonfile.load('./files/example.json');
  print('CAMPOS: ${jsonfile.fields}');
  print('TEM DADOS: ${jsonfile.hasData}');
  print('DADOS: \n${jsonfile.data}');
  jsonfile.clear();
  print('TEM DADOS: ${jsonfile.hasData}');
  //print(jsonfile.data);
  jsonfile.save('./files/outfiles/example.json');
  //print(jsonfile.data);
  print('*'*43);


  // READ FILE XML
  print('*'*43);
  print('AREA DE ARQUIVO XML');
  print('*'*43);
  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');
  print('TEM DADOS: ${xmlfile.hasData}');
  print('CAMPOS: ${xmlfile.fields}');
  print('CONTEÚDO: \n${xmlfile.data}');
  print('==== APOS O CLEAR ====');
  xmlfile.save('./files/outfiles/example.xml');
  xmlfile.clear();
  print('CONTEÚDO: \n${xmlfile.data}');
  print('TEM DADOS: ${xmlfile.hasData}');

  //print('*'*43);

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
