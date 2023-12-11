import '../../cql.dart';

/// This file defines the expression extensions that introduce clinically
/// relevant dependencies such as clinical data access, terminology, and value
/// set considerations.
class Retrieve extends Expression {
  /// The retrieve expression defines clinical data that will be used by the
  /// artifact. This expression allows clinically relevant filtering criteria to
  /// be provided in a well-defined and computable way. This operation defines
  /// the integration boundary for artifacts. The result of a retrieve is
  /// defined to return the same data for subsequent invocations within the same
  /// evaluation request. This means in particular that patient data updates
  /// made during the evaluation request are not visible to the artifact. In
  /// effect, the patient data is a snapshot of the data as of the start of the
  /// evaluation. This ensures strict deterministic and functional behavior of
  /// the artifact, and allows the implementation engine freedom to cache
  /// intermediate results in order to improve performance.
  late Expression? codes;

  /// The codes element optionally specifies an expression that results in a
  /// List<Code> to match against. Only the clinical statements that match at
  /// least one of the specified codes will be returned.
  late Expression? dateRange;

  /// The dateRange element optionally specifies an expression that results in
  /// an Interval<DateTime> to match against. Only those clinical statements
  /// whose date falls within the specified date range will be returned.
  late Expression? context;

  /// The dataType attribute specifies the type of data being requested.
  late QName dataType;

  /// The templateId attribute specifies an optional template to be used. If
  /// specified, the retrieve is defined to return only objects that conform to
  /// the template.
  late String? templateId;

  /// The idProperty attribute specifies which property of the model contains
  /// the Id for the clinical statement.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? idProperty;

  /// The codeProperty attribute optionally specifies which property of the
  /// model contains the Code or Codes for the clinical statement.
  ///
  /// Note that implementers could also specify this information elsewhere as
  /// part of an implementation catalog, rather than on each Retrieve expression,
  /// but allowing it to be specified in the retrieve expression gives the most
  /// flexibility. Note also that even in the case of an implementation catalog,
  /// implementations would still need to respect codeProperty values in the ELM
  /// due to the possibility of the retrieve specifying alternate code filters.
  /// From the perspective of ELM, the specification ensures that ELM can be
  /// processed without reference to the model information.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? codeProperty;

  /// The valueSetProperty attribute optionally specifies which property of the
  /// model contains a value set identifier that can be used as an alternative
  /// mechanism for matching the value set of the retrieve, in the case when no
  /// code is specified in the source data.
  ///
  /// This attribute is intended to address the case where systems representing
  /// negation rationale for an activity not performed do so by indicating a
  /// valueset identifier rather than a code. For example, when indicating that
  /// a medication was not administered, the value set identifier for the
  /// expected medication is used, rather than indicating a specific medication
  /// that was not administered. In this case, the valueSetProperty attribute
  /// allows the retrieve to specify where to look for the value set identifier
  /// without needing to change the conceptual data model or the CQL logic
  /// describing the negated activity.
  ///
  /// Note that implementers could also specify this information elsewhere as
  /// part of an implementation catalog, rather than on each Retrieve expression,
  /// but allowing it to be specified in the retrieve expression gives the most
  /// flexibility. From the perspective of ELM, the specification ensures that
  /// ELM can be processed without reference to the model information.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? valueSetProperty;

  /// The dateProperty attribute optionally specifies which property of the
  /// model contains the clinically relevant date for the clinical statement.
  ///
  /// This property is expected to reference a property that is either a Date
  /// or DateTime, or an interval of Date or DateTime. In either case, the
  /// result set will only include instances where the value of the dateProperty
  /// is during the date range. For Date or DateTime values, this means the date
  /// is both the same or after the beginning of the range, and the same or
  /// before the end of the range. For Date- or DateTime-based interval values,
  /// this means that the entire interval is included in the date range.
  ///
  /// Instances with no value for the dateProperty will not be included in the
  /// result set if a date range is specified.
  ///
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if the
  /// dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present. If specified, the dateLowProperty and
  /// dateHighProperty values will be used to construct an interval with
  /// inclusive boundaries for the date range.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? dateProperty;

  /// The dateLowProperty attribute optionally specifies which property of the
  /// model contains the low component of the clinically relevant date for the
  /// clinical statement.
  ///
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if the
  /// dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? dateLowProperty;

  /// The dateHighProperty attribute optionally specifies which property of the
  /// model contains the high component of the clinically relevant date for the
  /// clinical statement.
  ///
  /// Note that if the dateProperty is specified, the dateLowProperty and
  /// dateHighProperty attributes must not be present. And conversely, if the
  /// dateLowProperty and dateHighProperty attributes are specified, the
  /// dateProperty must not be present.
  ///
  /// This property may be specified as a path, including qualifiers and
  /// constant indexers. The <simplePath> production rule in the CQL grammar
  /// provides the formal semantics for this path.
  late String? dateHighProperty;

  Retrieve({
    this.codes,
    this.dateRange,
    this.context,
    required this.dataType,
    this.templateId,
    this.idProperty,
    this.codeProperty,
    this.valueSetProperty,
    this.dateProperty,
    this.dateLowProperty,
    this.dateHighProperty,
  });
}
