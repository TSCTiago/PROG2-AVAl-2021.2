import 'dart:io';
import 'package:prog2/csv_data.dart';
import 'package:prog2/tsv_data.dart';
import 'package:prog2/json_data.dart';
import 'package:prog2/xml_data.dart';

void main() {
  //READ FILE JSON
  //JSONData jsonfile = JSONData();
  //jsonfile.load('./files/example.csv');
  //print(jsonfile.hasData);
  //print(jsonfile.fields);
  //print(jsonfile.data);
  //jsonfile.clear();
  //print(jsonfile.data);
  ///jsonfile.save('./files/example.json');
  //print(jsonfile.data);


  // READ FILE XML
  /*print('*'*43);
  print('AREA DE ARQUIVO XML');
  print('*'*43);
  XMLData xmlfile = XMLData();
  xmlfile.load('./files/example.xml');
  print('TEM DADOS: ${xmlfile.hasData}');
  print('CAMPOS: ${xmlfile.fields}');
  print('CONTEÚDO: \n${xmlfile.data}');
  print('==== APOS O CLEAR ====');
  xmlfile.clear();
  print('CONTEÚDO: \n${xmlfile.data}');
  print('TEM DADOS: ${xmlfile.hasData}');

  //print('*'*43);
*/

   //READ FILE CSV
  CSVData csvfile = CSVData();
  csvfile.load('./files/example.csv');
  print(csvfile.fields);
  print(csvfile.data);
  print(csvfile.hasData);
  print(csvfile.separator);
  //csvfile.clear();
  csvfile.save('./files/outfiles/exemple.csv');
  //print(csvfile.data);
  csvfile.clear();
  ///print('csvfile.data');

 /* print('*'*43);
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

*/
/*  print(
    "\nIntegrantes do Grupo: Edilson Morais Brito, Francisco Mendes Magalhães Filho, Tiago da Silva Carvaho");*/
}
