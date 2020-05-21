
import 'package:xml/xml.dart' as xml;
import 'dart:io';

String readFile({ String filename }) {
  final file = new File(filename);
  return file.readAsStringSync();
}

void main(List<String> arguments) {
  final xmlStr = readFile(filename: 'srv-exp-osb-FulfillmentFinanciacionTCF_PPL.pipeline');
  final doc = xml.parse(xmlStr);
  print(doc.toXmlString(pretty: true, indent: '    '));
}
