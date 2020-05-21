
import 'package:xml/xml.dart' as xml;
import 'dart:io';

String readFile({ String filename }) {
  final file = new File(filename);
  return file.readAsStringSync();
}

void main(List<String> arguments) {
  final xmlStr = readFile(filename: 'srv-exp-osb-FulfillmentFinanciacionTCF_PPL.pipeline');
  final doc = xml.parse(xmlStr);
  //print(doc.toXmlString(pretty: true, indent: '    '));

  for (var d in doc.descendants) {
    print(d.nodeType);
  }
  print('*' * 50);
  print(doc.descendants.length);

}
