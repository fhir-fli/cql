import 'package:cql/cql.dart';

void setup(
  Map<String, dynamic> test,
  Map<String, dynamic> data, {
  List<dynamic> patients = const [],
  Map<String, dynamic> valuesets = const {},
  Parameter parameters = const {},
  dynamic repository,
}) {
  try {
    test['lib'] = ElmLibrary(data[test['test']['parent']['title']], repository);
    final cservice = CodeService(valuesets);
    final psource = PatientSource(patients);
    test['ctx'] = PatientContext(
      library: test['lib'],
      patient: psource.currentPatient() ?? null,
      codeService: cservice,
      parameters: parameters,
    );
    test['executor'] = Executor(test['lib'],
        codeService: cservice,
        parameters: parameters,
        messageListener: NullMessageListener());
    test['patientSource'] = psource;
    test['lib'].valuesets.forEach((k, v) {
      test[k[0].toLowerCase() + k.substring(1)] = v;
    });
    test['lib'].expressions.forEach((k, v) {
      test[k[0].toLowerCase() + k.substring(1)] = v.expression;
    });
  } catch (e) {
    throw Exception('[${test['test']['parent']['title']}] ${e.toString()}');
  }
}
