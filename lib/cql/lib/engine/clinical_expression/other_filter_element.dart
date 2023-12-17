import '../../cql.dart';

/// The OtherFilterElement type specifies an arbitrarily-typed filter criteria
/// for use within a retrieve, specified as either
/// [property] [comparator] [value] or [search] [comparator] [value].
class OtherFilterElement extends Expression {
  /// An expression that provides the comparison value for the filter.
  Expression value;

  /// The property attribute specifies which property the filter applies to.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? property;

  /// The search attribute specifies the name of a search path for the filter.
  String? search;

  /// The comparator attribute specifies the comparison operation for the filter.
  String comparator;

  OtherFilterElement({
    required this.value,
    this.property,
    this.search,
    required this.comparator,
  });

  factory OtherFilterElement.fromJson(Map<String, dynamic> json) {
    final valueJson = json['value'];
    if (valueJson == null) {
      throw ArgumentError("JSON value cannot be null");
    }

    return OtherFilterElement(
      value: Expression.fromJson(valueJson),
      property: json['property'],
      search: json['search'],
      comparator: json['comparator'],
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'value': value.toJson(),
        'property': property,
        'search': search,
        'comparator': comparator,
      };
}
