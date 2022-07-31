import 'dart:io';
import 'package:prog2/delimited_data.dart';

class TSVData extends DelimitedData {
  List<String> fieldsTSV = [];
  dynamic listofvalues = [];

  @override
  String get separator => '"\t"';

  @override
  void load(tsvfile) {
    if(!tsvfile.contains('.tsv')) throw FormatException("Formato inválido");
    tsvfile = File(tsvfile).readAsStringSync();
    data = tsvfile;
  }

  @override
  set data(String data) {
    final values = data.split('\n');
    for (var value in values) {
      listofvalues.add(value.split('\t'));
    }
    fieldsTSV = listofvalues[0];
  }

  @override
  String get data {
<<<<<<< HEAD
    if (!hasData) return '';
=======
          .replaceAll(' ', '\t')
          .replaceAll(',', ''));
      strValues += '\n';
<<<<<<< HEAD
    }

    final outFile = File(fileName);
    outFile.createSync(recursive: true);
    outFile.writeAsStringSync(strValues);
=======
      final outFile = File(fileName);
      outFile.createSync(recursive: true);
      outFile.writeAsStringSync(strValues);
    }
>>>>>>> e65043e8b6d3990b48807a67d12d0b8b229bae4f
  }

  @override
  void clear() {
    listofvalues = "";
  }

  @override
  bool get hasData => listofvalues.isNotEmpty;
}
