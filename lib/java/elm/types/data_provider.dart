import '../elm.dart';

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
