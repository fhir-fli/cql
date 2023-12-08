class Results {
  late Map<String, dynamic> patientResults;
  late Map<String, dynamic> unfilteredResults;
  late Map<String, dynamic> localIdPatientResultsMap;
  late Map<String, dynamic> patientEvaluatedRecords;

  Results() {
    patientResults = {};
    unfilteredResults = {};
    localIdPatientResultsMap = {};
    patientEvaluatedRecords = {};
  }

  List<dynamic> get evaluatedRecords {
    return [
      ...((patientEvaluatedRecords.values.toList())
          .expand((records) => records as List<dynamic>))
    ];
  }

  void recordPatientResults(dynamic patient_ctx, dynamic resultMap) {
    final p = patient_ctx.patient;
    final patientId = p.getId != null ? p.getId() : p.id();

    patientResults[patientId] = resultMap;
    localIdPatientResultsMap[patientId] = patient_ctx.getAllLocalIds();

    patientEvaluatedRecords[patientId] = [...patient_ctx.evaluatedRecords];
    patient_ctx.library_context.values.forEach((ctx) {
      patientEvaluatedRecords[patientId].addAll(ctx.evaluatedRecords);
    });
  }

  void recordUnfilteredResults(dynamic resultMap) {
    unfilteredResults = resultMap;
  }
}
