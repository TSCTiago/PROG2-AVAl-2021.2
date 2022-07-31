import 'dart:io';
import 'package:csv/csv.dart';
import 'package:prog2/delimited_data.dart';

class CSVData extends DelimitedData {
  dynamic csvcontent = [];
  List<String> field = [];


  @override
  String get separator => ',';


  @override
  List<String> get fields => field;


  @override
  void load(csvfile) {
    if(!csvfile.contains('.csv')) throw FormatException("Formato inválido");
    csvfile = File(csvfile).readAsStringSync();
    data = csvfile;    
  }


  @override
  String get data{
    if (!hasData) return '';
    String strValues = '';
    for (int i = 0; i < csvcontent.length; i++) {
      strValues += (csvcontent[i]
          .toString()
          .replaceAll('[', '')
          .replaceAll(']', ''));

      strValues += '\n';
    }
    return strValues;
    }


  @override
  set data(String data) {
    csvcontent = const CsvToListConverter().convert(data, eol: '\n');
    final csvList = const CsvToListConverter().convert(data, eol: '\n');
    field = csvList[0].map((e) => e.toString()).toList();    
  }


  @override
  void save(String fileName) {
    String csv = const ListToCsvConverter().convert(csvcontent, textDelimiter:'',eol:'\n');
    final outFile = File(fileName);
    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(csv);
  }


  @override
  void clear() {
    csvcontent = "";
  }


  @override
  bool get hasData => !csvcontent.isEmpty;
}

