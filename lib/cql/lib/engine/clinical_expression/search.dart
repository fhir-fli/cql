import '../../cql.dart';

class Search extends Property {
  Search({required super.path, super.source, super.scope});

  factory Search.fromJson(Map<String, dynamic> json) => Search(
        path: json['path'],
        source:
            json['source'] != null ? Expression.fromJson(json['source']) : null,
        scope: json['scope'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'path': path,
        if (source != null) 'source': source!.toJson(),
        if (scope != null) 'scope': scope,
      };

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'Search';
}
