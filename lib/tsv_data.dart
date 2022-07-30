import 'dart:io';
import 'package:csv/csv.dart';
import 'package:grizzly_io/io_loader.dart';
import 'package:prog2/delimited_data.dart';

class TSVData extends DelimitedData {
  dynamic csvList1 = [];
  List<String> fieldTSV = [];

  @override
  String get separator => '\t';

  @override
  List<String> get fields => fieldTSV;

  @override
  void load(tsvfile) {
    Future<void> tsvRead() async {
      Table tsv = await readLTsv(tsvfile);
      // print(tsv);
      final out = encodeCsv(tsv.toList(), fieldSep: '\t');
      // print(out);
      tsv = parseLTsv(out);
      // print(tsv);
      // print(tsv.toMap());

      csvList1 = const CsvToListConverter().convert(out, eol: '\n');
     // print(csvList1);
      final csvList = const CsvToListConverter().convert(out, eol: '\n');
      fieldTSV = csvList[0].map((e) => e.toString()).toList();
     // print(fieldTSV);
    }

    tsvRead();
  }

  @override
  void save(String fileName) {
    // String csv = const ListToCsvConverter()
    //     .convert(csvList1, textDelimiter: '', eol: '\n');
    // //final inFile = csvList1;
    // final outFile = File(fileName);
    // outFile.createSync(recursive: true);
    // outFile.writeAsStringSync(csv);
  }

  @override
  String get data => csvList1.toString();
  set data(value) {
    csvList1 = value as List;
  }

  @override
  void clear() {
    csvList1 = "";
  }

  @override
  bool get hasData => !csvList1.isEmpty;
}
