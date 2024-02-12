import '../../cql.dart';

class CqlCompilerOptions {
  Set<Options> options = {};
  bool validateUnits = true;
  bool verifyOnly = false;
  bool enableCqlOnly = false;
  String compatibilityLevel = "1.5";
  ErrorSeverity errorLevel = ErrorSeverity.info;
  SignatureLevel signatureLevel = SignatureLevel.none;
  bool analyzeDataRequirements = false;
  bool collapseDataRequirements = false;

  CqlCompilerOptions({
    this.options = const {},
    this.validateUnits = true,
    this.verifyOnly = false,
    this.enableCqlOnly = false,
    this.compatibilityLevel = "1.5",
    this.errorLevel = ErrorSeverity.info,
    this.signatureLevel = SignatureLevel.none,
    this.analyzeDataRequirements = false,
    this.collapseDataRequirements = false,
  });

  factory CqlCompilerOptions.defaultOptions() {
    return CqlCompilerOptions(
      options: {
        Options.enableAnnotations,
        Options.enableLocators,
        Options.disableListDemotion,
        Options.disableListPromotion,
      },
    );
  }

  void setOptions(Set<Options> newOptions) {
    options = newOptions;
  }

  CqlCompilerOptions withOptions(Set<Options> newOptions) {
    setOptions(newOptions);
    return this;
  }

  void setCompatibilityLevel(String newCompatibilityLevel) {
    compatibilityLevel = newCompatibilityLevel;
  }

  CqlCompilerOptions withCompatibilityLevel(String newCompatibilityLevel) {
    setCompatibilityLevel(newCompatibilityLevel);
    return this;
  }

  void setVerifyOnly(bool newVerifyOnly) {
    verifyOnly = newVerifyOnly;
  }

  CqlCompilerOptions withVerifyOnly(bool newVerifyOnly) {
    setVerifyOnly(newVerifyOnly);
    return this;
  }

  void setErrorLevel(ErrorSeverity newErrorLevel) {
    errorLevel = newErrorLevel;
  }

  CqlCompilerOptions withErrorLevel(ErrorSeverity newErrorLevel) {
    setErrorLevel(newErrorLevel);
    return this;
  }

  void setSignatureLevel(SignatureLevel newSignatureLevel) {
    signatureLevel = newSignatureLevel;
  }

  CqlCompilerOptions withSignatureLevel(SignatureLevel newSignatureLevel) {
    setSignatureLevel(newSignatureLevel);
    return this;
  }

  void setAnalyzeDataRequirements(bool newAnalyzeDataRequirements) {
    analyzeDataRequirements = newAnalyzeDataRequirements;
  }

  CqlCompilerOptions withAnalyzeDataRequirements(
      bool newAnalyzeDataRequirements) {
    setAnalyzeDataRequirements(newAnalyzeDataRequirements);
    return this;
  }

  void setCollapseDataRequirements(bool newCollapseDataRequirements) {
    collapseDataRequirements = newCollapseDataRequirements;
  }

  CqlCompilerOptions withCollapseDataRequirements(
      bool newCollapseDataRequirements) {
    setCollapseDataRequirements(newCollapseDataRequirements);
    return this;
  }

  @override
  String toString() {
    return options.map((option) => option.toString()).join(', ');
  }
}
