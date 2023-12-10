import '../../../../cql/cql-to-elm/elm/elm.dart';

class UnfilteredContext extends Context {
  ElmLibrary library;
  dynamic results;

  UnfilteredContext({
    required this.library,
    this.results,
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
  Future<dynamic> findRecords(String? profile,
      [RetrieveDetails? retrieveDetails]) {
    throw Exception(
        'Retrieves are not currently supported in Unfiltered Context');
  }

  @override
  Context getLibraryContext(_library) {
    throw Exception(
        'Library expressions are not currently supported in Unfiltered Context');
  }

  dynamic get(String? identifier) {
    if (identifier != null && contextValues[identifier] != null) {
      return contextValues[identifier];
    } else if (library.expressions.keys
            .toList()
            .indexWhere((element) => element == 'Unfiltered') !=
        -1) {
      return library.expressions.keys
          .toList()
          .firstWhere((element) => element == 'Unfiltered');
    } else if (identifier == null) {
      return null;
    } else {
      return results['patientResults']
          .values
          .map((pr) => pr[identifier])
          .toList();
    }
  }
}
