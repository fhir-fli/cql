import '../../cql.dart';

/// The DateFilterElement type specifies a date-valued filter criteria for use
/// within a retrieve, specified as either a date-valued [property], a
/// date-value [lowProperty] and [highProperty] or a [search], and an expression
/// that evaluates to a date or time type, an interval of a date or time type,
/// or a time-valued Quantity.
class DateFilterElement extends Element {
  /// The highProperty attribute optionally specifies which property of the
  /// model contains the high component of the clinically relevant date for the
  /// clinical statement.
  /// Note that if the property is specified, the lowProperty and highProperty
  /// attributes must not be present. And conversely, if the lowProperty and
  /// highProperty attributes are specified, the property must not be present.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? highProperty;

  /// The lowProperty attribute optionally specifies which property of the model
  /// contains the low component of the clinically relevant date for the
  /// clinical statement.
  /// Note that if the property is specified, the lowProperty and highProperty
  /// attributes must not be present. And conversely, if the lowProperty and
  /// highProperty attributes are specified, the property must not be present.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? lowProperty;

  /// The dateProperty attribute optionally specifies which property of the
  /// model contains the clinically relevant date for the clinical statement.
  /// This property is expected to reference a property that is either a Date or
  /// DateTime, or an interval of Date or DateTime. In either case, the result
  /// set will only include instances where the value of the dateProperty is
  /// during the date range. For Date or DateTime values, this means the date is
  /// both the same or after the beginning of the range, and the same or before
  /// the end of the range. For Date- or DateTime-based interval values, this
  /// means that the entire interval is included in the date range.
  /// Instances with no value for the dateProperty will not be included in the
  /// result set if a date range is specified.
  /// Note that if the property is specified, the lowProperty and highProperty
  /// attributes must not be present. And conversely, if the lowProperty and
  /// highProperty attributes are specified, the dateProperty must not be
  /// present. If specified, the lowProperty and highProperty values will be
  /// used to construct an interval with inclusive boundaries for the date range.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? property;

  /// The search attribute specifies the name of the search path to use for
  /// searching for values in the date range specified by the dateRange element.
  String? search;

  /// An expression that provides the comparison value for the filter. The
  /// expression is expected to result in a date or time type, an interval of
  /// a date or time type, or a time-valued quantity. Only the clinical
  /// statements that match at least one of the specified codes will be
  /// returned.
  Expression value;

  DateFilterElement({
    required this.value,
    this.property,
    this.lowProperty,
    this.highProperty,
    this.search,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory DateFilterElement.fromJson(Map<String, dynamic> json) {
    final valueJson = json['value'];
    if (valueJson == null) {
      throw ArgumentError("JSON value cannot be null");
    }

    return DateFilterElement(
      value: Expression.fromJson(valueJson),
      property: json['property'],
      lowProperty: json['lowProperty'],
      highProperty: json['highProperty'],
      search: json['search'],
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifier.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() => {
        'value': value.toJson(),
        'property': property,
        'lowProperty': lowProperty,
        'highProperty': highProperty,
        'search': search,
      };
}
