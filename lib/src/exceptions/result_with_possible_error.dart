class ResultWithPossibleError<T> {
  ResultWithPossibleError(this.underlyingThingOrNull);
  final T? underlyingThingOrNull;

  static ResultWithPossibleError<T> withError<T>() {
    return ResultWithPossibleError<T>(null);
  }

  static ResultWithPossibleError<T> withTypeSpecifier<T>(
    T underlyingThingOrNull,
  ) {
    return ResultWithPossibleError<T>(underlyingThingOrNull);
  }

  bool hasError() {
    return (underlyingThingOrNull == null);
  }

  T getUnderlyingResultIfExists() {
    if (hasError()) {
      throw ArgumentError('Should have called hasError() first');
    }

    return underlyingThingOrNull!;
  }
}
