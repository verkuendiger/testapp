import 'dart:convert';
import 'dart:io';
import 'package:recase/recase.dart';

// Gen enum with dart defines vars
Future<void> main(List<String> args) async {
  if (args.length != 2) {
    throw Exception('Usage: dart tool/define_gen.dart <input.json> <output.g.dart>');
  }

  final String inputFile = args[0];
  final String outputFile = args[1];

  final a = jsonDecode(
    await File(
      inputFile,
    ).readAsString(),
  ) as Map<String, dynamic>;

  final StringBuffer sb = StringBuffer()
    ..writeln('/// GENERATED CODE - DO NOT MODIFY BY HAND\n')
    // ..write('final class AppEnvironment {')
    ..write('class AppEnvironment {')
    ..write('\n')
    ..writeAll(
        a.keys.map(
            (e) => '  static const ${e.camelCase} = String.fromEnvironment(\'$e\', defaultValue: \'$e NOT FOUND\');'),
        '\n')
    ..writeln()
    ..write('}');

  File(
    outputFile,
  ).writeAsStringSync(
    sb.toString(),
  );
}
