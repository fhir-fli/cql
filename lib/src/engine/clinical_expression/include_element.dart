import 'package:cql/src/internal.dart';

/// The IncludeElement type specifies include information for an include within
/// a retrieve.
class IncludeElement extends Element {
  IncludeElement({
    required this.relatedDataType,
    this.includeFrom,
    this.relatedProperty,
    this.relatedSearch,
    this.isReverse,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory IncludeElement.fromJson(Map<String, dynamic> json) => IncludeElement(
        includeFrom: json['includeFrom'] as String?,
        relatedDataType: QName.parse(json['relatedDataType'] as String),
        relatedProperty: json['relatedProperty'] as String?,
        relatedSearch: json['relatedSearch'] as String?,
        isReverse: json['isReverse'] as bool?,
        annotation: json['annotation'] != null
            ? (json['annotation'] as List)
                .map((e) => CqlToElmBase.fromJson(e as Map<String, dynamic>))
                .toList()
            : null,
        localId: json['localId'] as String?,
        locator: json['locator'] as String?,
        resultTypeName: json['resultTypeName'] as String?,
        resultTypeSpecifier: json['resultTypeSpecifier'] != null
            ? TypeSpecifierExpression.fromJson(
                json['resultTypeSpecifier'] as Map<String, dynamic>)
            : null,
      );

  /// The localId of another Retrieve that specifies the data to be included in
  /// this retrieve. The target Retrieve will have an includedIn attribute
  /// referencing this includeElement.
  String? includeFrom;

  /// The isReverse attribute indicates that the include is reverse, i.e. that
  /// the relatedDataType is referencing the data being retrieved, rather than
  /// the retrieved data referencing the relatedDataType.
  bool? isReverse;

  /// The relatedDataType attribute specifies the type of the related data
  /// being requested.
  QName relatedDataType;

  /// The relatedProperty attribute specifies which property of the
  /// relatedDataType contains the relatedId for the clinical statement.
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The &lt;simplePath&gt; production rule in the CQL
  /// grammar provides the formal semantics for this path.
  String? relatedProperty;

  /// The relatedSearch attribute specifies the name of the search path to use
  /// for searching for data of the relatedDataType.
  String? relatedSearch;

  @override
  Map<String, dynamic> toJson() {
    final val = <String, dynamic>{};

    void writeNotNull(String key, dynamic value) {
      if (value != null) {
        val[key] = value;
      }
    }

    writeNotNull('includeFrom', includeFrom);
    val['relatedDataType'] = relatedDataType.toJson();
    writeNotNull('relatedProperty', relatedProperty);
    writeNotNull('relatedSearch', relatedSearch);
    writeNotNull('isReverse', isReverse);
    writeNotNull('annotation', annotation?.map((e) => e.toJson()).toList());
    writeNotNull('localId', localId);
    writeNotNull('locator', locator);
    writeNotNull('resultTypeName', resultTypeName);
    writeNotNull('resultTypeSpecifier', resultTypeSpecifier?.toJson());
    return val;
  }
}
