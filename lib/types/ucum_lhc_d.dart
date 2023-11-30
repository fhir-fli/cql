// Structures based on the JSDoc comments in the ucum-lhc library
class Unit {
  String code;
  String name;
  String guidance;
  String csCode_;

  Unit(
      {required this.code,
      required this.name,
      required this.guidance,
      required this.csCode_});
}

class ValidationSuggestion {
  String msg;
  String invalidUnit;
  List<Unit> units;

  ValidationSuggestion(
      {required this.msg, required this.invalidUnit, required this.units});
}

class ConversionSuggestion {
  List<ValidationSuggestion> from;
  List<ValidationSuggestion> to;

  ConversionSuggestion({required this.from, required this.to});
}

class ValidationResponse {
  String status;
  String? ucumCode;
  List<String> msg;
  Unit? unit;
  List<ValidationSuggestion>? suggestions;

  ValidationResponse({
    required this.status,
    this.ucumCode,
    required this.msg,
    this.unit,
    this.suggestions,
  });
}

class ConversionResponse {
  String status;
  String toVal;
  List<String> msg;
  List<ConversionSuggestion>? suggestions;
  Unit fromUnit;
  Unit toUnit;

  ConversionResponse({
    required this.status,
    required this.toVal,
    required this.msg,
    this.suggestions,
    required this.fromUnit,
    required this.toUnit,
  });
}

class UcumLhcUtils {
  static UcumLhcUtils getInstance() {
    // Implement logic to get instance if required
    return UcumLhcUtils();
  }

  ValidationResponse validateUnitString(String uStr, {bool suggest = false}) {
    // Implement the logic for validating a unit string
    return ValidationResponse(
        status: 'valid', ucumCode: null, msg: [], unit: null);
  }

  ConversionResponse convertUnitTo(
      num fromVal, String fromUnit, String toUnit) {
    // Implement the logic for converting a unit
    return ConversionResponse(
      status: 'succeeded',
      toVal: 'convertedValue',
      msg: [],
      fromUnit: Unit(code: '', name: '', guidance: '', csCode_: ''),
      toUnit: Unit(code: '', name: '', guidance: '', csCode_: ''),
    );
  }

  List commensurablesList(String fromName) {
    // Implement the logic to get commensurables list
    return [null, []];
  }
}
