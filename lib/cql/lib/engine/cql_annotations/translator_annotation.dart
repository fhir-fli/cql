import '../../cql.dart';

class TranslatorAnnotation extends Annotation {
  final String translatorOptions;
  final String translatorVersion;
  final String type;

  TranslatorAnnotation(
      {this.translatorVersion = '2.11.0', //'0.0.0-dev1',
      this.translatorOptions = '',
      this.type = 'CqlToElmInfo'});

  factory TranslatorAnnotation.fromJson(Map<String, dynamic> json) =>
      TranslatorAnnotation(
        translatorVersion: json['translatorVersion'],
        translatorOptions: json['translatorOptions'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'translatorVersion': translatorVersion,
        'translatorOptions': translatorOptions,
        'type': type,
      };
}
