class AnnotatedError implements Error {
  Error cause;
  String expressionName;
  String libraryName;
  String? localId;
  String? locator;
  StackTrace? stackTrace;

  AnnotatedError(
    this.cause,
    this.expressionName,
    this.libraryName, {
    this.localId,
    this.locator,
  }) {
    stackTrace = StackTrace.current;
  }

  @override
  String toString() {
    return 'Encountered unexpected error during execution.\n\n\tError Message:\t${cause.toString()}\n\tCQL Library:\t$libraryName\n\tExpression:\t$expressionName${localId != null ? '\n\tELM Local ID:\t$localId' : ''}${locator != null ? '\n\tCQL Locator:\t$locator' : ''}\n';
  }
}
