import '../cql.dart';

abstract class BaseModelResolver implements ModelResolver {
  bool isType<T>(Object? value) {
    if (value == null) return false;
    return value is T;
  }

  T? asType<T>(Object? value, {bool isStrict = false}) {
    if (value == null) return null;

    if (value is T) {
      return value as T;
    }

    if (isStrict) {
      throw InvalidCastException(
          'Cannot cast a value of type ${value.runtimeType} as $T.');
    }

    return null;
  }
}

class InvalidCastException implements Exception {
  final String message;

  InvalidCastException(this.message);

  @override
  String toString() => 'InvalidCastException: $message';
}
