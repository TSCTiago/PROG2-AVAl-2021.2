import 'dart:io';
import 'package:prog2/delimited_data.dart';

class TSVData extends DelimitedData {
  dynamic csvList1 = [];
  List<String> fieldTSV = [];
  dynamic as = [];

  @override
  String get separator => '\t';

  @override
  void load(tsvfile) {
    tsvfile = File(tsvfile).readAsStringSync();
    final b = tsvfile.split('\n');
    for (var c in b) {
      as.add(c.split('\t'));
    }

    fieldTSV = as[0];
  }

  /*set data(data) {
    print(data);
    //print(fieldTSV);
    for (int i = 0; i < data.length; i++) {
      print(data[i]
          .toString()
          .replaceAll(' ', '\t')
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll(',', ''));
    }
    fieldTSV.add(data);
  }
*/

  @override
  String get data {
    String strValues = '';
    for (int i = 0; i < as.length; i++) {
      strValues += (as[i]
          .toString()
          .replaceAll(' ', '\t')
          .replaceAll('[', '')
          .replaceAll(']', '')
          .replaceAll(',', ''));

      strValues += '\n';
    }
    return strValues;
  }

  @override
  List<String> get fields {
    return fieldTSV;
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
  void clear() {
    as = "";
  }

  @override
  bool get hasData => as.isNotEmpty;
}
