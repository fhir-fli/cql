/// A lightweight result wrapper that carries either a successful value of type
/// [T] or, by holding null, signals that an error occurred.
///
/// Callers should check [hasError] before reading the value with
/// [getUnderlyingResultIfExists]. This is used within the engine to return a
/// computed value while allowing the "no value / error" case to be represented
/// without throwing.
class ResultWithPossibleError<T> {
  /// Creates a result wrapping [underlyingThingOrNull]; a null value denotes
  /// the error case.
  ResultWithPossibleError(this.underlyingThingOrNull);

  /// The wrapped value, or null when this result represents an error.
  final T? underlyingThingOrNull;

  /// Creates a result in the error state (holding no value).
  static ResultWithPossibleError<T> withError<T>() {
    return ResultWithPossibleError<T>(null);
  }

  /// Creates a successful result wrapping [underlyingThingOrNull].
  static ResultWithPossibleError<T> withTypeSpecifier<T>(
    T underlyingThingOrNull,
  ) {
    return ResultWithPossibleError<T>(underlyingThingOrNull);
  }

  /// Whether this result represents an error (i.e. holds no value).
  bool hasError() {
    return (underlyingThingOrNull == null);
  }

  /// Returns the wrapped value.
  ///
  /// Throws an [ArgumentError] if this result is in the error state; call
  /// [hasError] first to guard against that.
  T getUnderlyingResultIfExists() {
    if (hasError()) {
      throw ArgumentError('Should have called hasError() first');
    }

    return underlyingThingOrNull!;
  }
}
