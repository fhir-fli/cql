import '../cql.dart';

/// Iterator for the patients provided to the execution engine
abstract class DataProvider {
  PatientObject? currentPatient();
  PatientObject? nextPatient();
}

/// Structure of a Record
abstract class RecordObject {
  dynamic get(dynamic field);
  dynamic getId();
  dynamic getCode(dynamic field);
  dynamic getDate(dynamic field);
  dynamic getDateOrInterval(dynamic field);
  bool _is(TypeSpecifier typeSpecifier);
  List<TypeSpecifier>? _typeHierarchy();
}

/// Structure of the information about an ELM retrieve
/// Passed back to DataProviders to allow for more advanced record filtering
class RetrieveDetails {
  final String datatype;
  final String? templateId;
  final String? codeProperty;
  final List<ElmCode>? codes;
  final CqlValueSet? valueSet;
  final String? dateProperty;
  final Interval? dateRange;

  RetrieveDetails(
    this.datatype, {
    this.templateId,
    this.codeProperty,
    this.codes,
    this.valueSet,
    this.dateProperty,
    this.dateRange,
  });
}

/// Patient data object that implements logic for searching for records based on the Patient
abstract class PatientObject implements RecordObject {
  List<RecordObject> findRecords(String? profile,
      [RetrieveDetails? retrieveDetails]);
}
