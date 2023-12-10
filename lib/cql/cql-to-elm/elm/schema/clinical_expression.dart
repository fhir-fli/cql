import '../elm.dart';
import 'schema.dart';

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

enum AccessModifier { Public, Private }

/// The ValueSetRef expression allows a previously defined named value set to be
/// referenced within an expression. Conceptually, referencing a value set
/// returns the expansion set for the value set as a list of codes.
class ValueSetRef extends Expression {
  /// The name of the value set.
  late String? name;

  /// The library name.
  late String? libraryName;

  ValueSetRef({this.name, this.libraryName});
}

/// The ConceptRef expression allows a previously defined concept to be
/// referenced within an expression.
class ConceptRef extends Expression {
  /// The name of the concept.
  late String? name;

  /// The library name.
  late String? libraryName;

  ConceptRef({this.name, this.libraryName});
}

/// The Code type represents a literal code selector.
class ExpCode extends Expression {
  /// The system of the code.
  late CodeSystemRef system;

  /// The code.
  late String code;

  /// An optional display string for the code.
  late String? display;

  ExpCode({required this.system, required this.code, this.display});
}

/// The Concept type represents a literal concept selector.
class ExpConcept extends Expression {
  /// The codes that constitute the concept.
  late List<Code> code;

  /// An optional display string for the concept.
  late String? display;

  ExpConcept({required this.code, this.display});
}

/// The InCodeSystem operator returns true if the given code is in the given
/// code system.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class InCodeSystem extends OperatorExpression {
  late Expression code;
  late CodeSystemRef codesystem;

  InCodeSystem({required this.code, required this.codesystem});
}

/// The AnyInCodeSystem operator returns true if any of the given codes are in
/// the given code system.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a CodeSystemRef as its codesystem
/// argument. This allows for both static analysis of the code system references
/// within an artifact, as well as the implementation of code system membership
/// by the target environment as a service call to a terminology server, if
/// desired.
class AnyInCodeSystem extends OperatorExpression {
  late Expression codes;
  late CodeSystemRef codesystem;

  AnyInCodeSystem({required this.codes, required this.codesystem});
}

/// The InValueSet operator returns true if the given code is in the given value
/// set.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class InValueSet extends OperatorExpression {
  late Expression code;
  late ValueSetRef valueset;

  InValueSet({required this.code, required this.valueset});
}

/// The AnyInValueSet operator returns true if any of the given codes are in the
/// given value set.
///
/// The first argument is expected to be a list of String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class AnyInValueSet extends OperatorExpression {
  late Expression codes;
  late ValueSetRef valueset;

  AnyInValueSet({required this.codes, required this.valueset});
}

/// The Subsumes operator returns true if the given codes are equivalent, or if
/// the first code subsumes the second (i.e. the first code is an ancestor of
/// the second in a subsumption hierarchy), and false otherwise.
///
/// For the Concept overload, this operator returns true if any code in the first
/// concept subsumes any code in the second.
///
/// If either or both arguments are null, the result is null.
class Subsumes extends BinaryExpression {
  Subsumes({required super.operands});
}

/// The SubsumedBy operator returns true if the given codes are equivalent, or
/// if the first code is subsumed by the second code (i.e. the first code is a
/// descendent of the second code in a subsumption hierarchy), and false
/// otherwise.
///
/// For the Concept overload, this operator returns true if any code in the first
/// concept is subsumed by any code in the second.
///
/// If either or both arguments are null, the result is null.
class SubsumedBy extends BinaryExpression {
  SubsumedBy({required super.operands});
}

/// The Quantity type defines a clinical quantity. For example, the quantity 10
/// days or 30 mmHg. The value is a decimal, while the unit is expected to be a
/// valid UCUM unit.
class ExpQuantity extends Expression {
  late double value;
  late String unit;

  ExpQuantity({required this.value, required this.unit});
}

/// The Ratio type defines a ratio between two quantities. For example, the
/// titre 1:128, or the concentration ratio 5 mg/10 mL. The numerator and
/// denominator are both quantities.
class ExpRatio extends Expression {
  late Quantity numerator;
  late Quantity denominator;

  ExpRatio({required this.numerator, required this.denominator});
}

/// Calculates the age in the specified precision of a person born on the given
/// date.
///
/// The CalculateAge operator is defined for Date and DateTime.
///
/// For the Date overload, the calculation is performed using Today(), the
/// precision must be one of year, month, week, or day, and the result is the
/// number of whole calendar periods that have elapsed between the given date and
/// today.
///
/// For the DateTime overload, the calculation is performed using Now(), and the
/// result is the number of whole calendar periods that have elapsed between the
/// given datetime and now.
class CalculateAge extends UnaryExpression {
  late DateTimePrecision precision;

  CalculateAge({required this.precision});
}

/// Calculates the age in the specified precision of a person born on a given
/// date, as of another given date.
///
/// The CalculateAgeAt operator has two signatures:
/// (Date, Date)
/// (DateTime, DateTime)
///
/// For the Date overload, precision must be one of year, month, week, or day,
/// and the result is the number of whole calendar periods that have elapsed
/// between the first date and the second date.
///
/// For the DateTime overload, the result is the number of whole calendar periods
/// that have elapsed between the first datetime and the second datetime.
class CalculateAgeAt extends BinaryExpression {
  late DateTimePrecision precision;

  CalculateAgeAt({required this.precision, required super.operands});
}
