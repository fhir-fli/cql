import '../elm.dart';

/// Structure of the information about an ELM retrieve
/// Passed back to DataProviders to allow for more advanced record filtering
class RetrieveDetails {
  final String datatype;
  final String? templateId;
  final String? codeProperty;
  final List<ElmCode>? codes;
  final CqlValueSet? valueSet;
  final String? dateProperty;
  final Interval? dateRange;

  RetrieveDetails(
    this.datatype, {
    this.templateId,
    this.codeProperty,
    this.codes,
    this.valueSet,
    this.dateProperty,
    this.dateRange,
  });
}
