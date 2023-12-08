import '../elm.dart';

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

  Results execExpression(
    dynamic expression,
    DataProvider patientSource,
    DateTime executionDateTime,
  ) {
    final r = Results();
    final expr = library.expressions[expression];
    if (expr != null) {
      var currentPatient = patientSource.currentPatient();
      while (currentPatient != null) {
        final patientCtx = PatientContext(
          library: library,
          patient: currentPatient,
          codeService: codeService,
          parameters: parameters,
          executionDateTime: CqlDateTime.fromDateTime(executionDateTime),
          messageListener: messageListener,
        );
        r.recordPatientResults(
            patientCtx, {expression: expr.execute(patientCtx)});
        currentPatient = patientSource.nextPatient();
      }
    }
    return r;
  }

  Results exec(
    DataProvider patientSource, [
    DateTime? executionDateTime,
  ]) {
    final r = execPatientContext(patientSource, executionDateTime);
    final unfilteredContext = UnfilteredContext(
      library: library,
      results: r,
      codeService: codeService,
      parameters: parameters,
      executionDateTime: executionDateTime == null
          ? null
          : CqlDateTime.fromDateTime(executionDateTime),
      messageListener: messageListener,
    );
    final resultMap = <String, dynamic>{};
    for (final key in library.expressions.keys) {
      final expr = library.expressions[key]!;
      if (expr.context == 'Unfiltered') {
        resultMap[key] = expr.exec(unfilteredContext);
      }
    }
    r.recordUnfilteredResults(resultMap);
    return r;
  }

  Results execPatientContext(
    DataProvider patientSource, [
    DateTime? executionDateTime,
  ]) {
    final r = Results();
    var currentPatient = patientSource.currentPatient();
    while (currentPatient != null) {
      final patientCtx = PatientContext(
        library: library,
        patient: currentPatient,
        codeService: codeService,
        parameters: parameters,
        executionDateTime: executionDateTime == null
            ? null
            : CqlDateTime.fromDateTime(executionDateTime),
        messageListener: messageListener,
      );
      final resultMap = <String, dynamic>{};
      for (final key in library.expressions.keys) {
        final expr = library.expressions[key]!;
        if (expr.context == 'Patient') {
          resultMap[key] = expr.execute(patientCtx);
        }
      }
      r.recordPatientResults(patientCtx, resultMap);
      currentPatient = patientSource.nextPatient();
    }
    return r;
  }
}
