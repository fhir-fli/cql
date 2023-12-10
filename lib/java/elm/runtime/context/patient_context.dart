import '../../../../cql/cql-to-elm/elm/elm.dart';

class PatientContext extends Context {
  ElmLibrary library;
  PatientObject? patient;

  PatientContext({
    required this.library,
    this.patient,
    TerminologyProvider? codeService,
    Parameter? parameters,
    CqlDateTime? executionDateTime,
    MessageListener? messageListener,
  }) : super(
          library,
          codeService,
          parameters,
          executionDateTime ??= CqlDateTime(
              dateTime: DateTime.now(), precision: DateTimePrecision.full),
          messageListener ??= NullMessageListener(),
        );

  @override
  Context rootContext() {
    return this;
  }

  @override
  Context getLibraryContext(library) {
    if (libraryContext[library] == null) {
      libraryContext[library] = PatientContext(
        library: get(library) as ElmLibrary,
        patient: patient,
        codeService: codeService,
        parameters: parameters,
        executionDateTime: executionDateTime,
      );
    }
    return libraryContext[library]!;
  }

  @override
  Context getLocalIdContext(String localId) {
    if (localIdContext[localId] == null) {
      localIdContext[localId] = PatientContext(
        library: get(localId) as ElmLibrary,
        patient: patient,
        codeService: codeService,
        parameters: parameters,
        executionDateTime: executionDateTime,
      );
    }
    return localIdContext[localId]!;
  }

  List<RecordObject>? findRecords(profile, [RetrieveDetails? retrieveDetails]) {
    return patient != null
        ? patient!.findRecords(profile, retrieveDetails)
        : null;
  }
}
