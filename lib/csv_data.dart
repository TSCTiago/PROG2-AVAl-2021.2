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
    csvfile = File(csvfile).readAsStringSync();
    data = csvfile;
    
  }

  @override
  String get data => csvcontent.toString();

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