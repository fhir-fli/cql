import '../../../../cql.dart';

/// Operator to return the indexth element in a string or list.
/// Indexes in strings and lists are defined to be 0-based.
/// If the index is less than 0 or greater than the length of the string or list being indexed, the result is null.
/// If either argument is null, the result is null.
class Indexer extends BinaryExpression {
  Indexer({required super.operands});

  factory Indexer.fromJson(Map<String, dynamic> json) => Indexer(
        operands: json['operands']!,
      );

  @override
  Map<String, dynamic> toJson() => {
        'operands': operands,
      };
}
