import '../cql.dart';

class Executor {
  dynamic library;
  TerminologyProvider? codeService;
  Parameter? parameters;
  MessageListener messageListener;

  Executor(
    this.library, {
    this.codeService,
    this.parameters,
    MessageListener? messageListener,
  }) : messageListener = messageListener ?? NullMessageListener();

  Executor withLibrary(dynamic lib) {
    library = lib;
    return this;
  }

  Executor withParameters(Parameter? params) {
    parameters = params ?? {};
    return this;
  }

  Executor withCodeService(TerminologyProvider cs) {
    codeService = cs;
    return this;
  }

  Executor withMessageListener(MessageListener ml) {
    messageListener = ml;
    return this;
  }

  Future<Results> execExpression(
    dynamic expression,
    DataProvider patientSource,
    DateTime executionDateTime,
  ) async {
    final r = Results();
    final expr = library.expressions[expression];
    if (expr != null) {
      var currentPatient = await patientSource.currentPatient();
      while (currentPatient != null) {
        final patientCtx = PatientContext(
          library,
          currentPatient,
          codeService,
          parameters,
          executionDateTime,
          messageListener,
        );
        r.recordPatientResults(
            patientCtx, {expression: expr.execute(patientCtx)});
        currentPatient = await patientSource.nextPatient();
      }
    }
    return r;
  }

  Future<Results> exec(
    DataProvider patientSource, [
    DateTime? executionDateTime,
  ]) async {
    final r = await execPatientContext(patientSource, executionDateTime);
    final unfilteredContext = UnfilteredContext(
      library,
      r,
      codeService,
      parameters,
      executionDateTime,
      messageListener,
    );
    final resultMap = <String, dynamic>{};
    for (final key in library.expressions.keys) {
      final expr = library.expressions[key]!;
      if (expr.context == 'Unfiltered') {
        resultMap[key] = await expr.exec(unfilteredContext);
      }
    }
    r.recordUnfilteredResults(resultMap);
    return r;
  }

  Future<Results> execPatientContext(
    DataProvider patientSource, [
    DateTime? executionDateTime,
  ]) async {
    final r = Results();
    var currentPatient = await patientSource.currentPatient();
    while (currentPatient != null) {
      final patientCtx = PatientContext(
        library,
        currentPatient,
        codeService,
        parameters,
        executionDateTime,
        messageListener,
      );
      final resultMap = <String, dynamic>{};
      for (final key in library.expressions.keys) {
        final expr = library.expressions[key]!;
        if (expr.context == 'Patient') {
          resultMap[key] = await expr.execute(patientCtx);
        }
      }
      r.recordPatientResults(patientCtx, resultMap);
      currentPatient = await patientSource.nextPatient();
    }
    return r;
  }
}
