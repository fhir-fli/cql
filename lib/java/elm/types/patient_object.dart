import '../../../cql/cql-to-elm/elm/elm.dart';

/// Patient data object that implements logic for searching for records based on the Patient
abstract class PatientObject implements RecordObject {
  List<RecordObject> findRecords(String? profile,
      [RetrieveDetails? retrieveDetails]);
}
