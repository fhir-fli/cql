import '../cql.dart';

class InvalidRedeclarationException extends ArgumentError {
  InvalidRedeclarationException([String message = '']) : super(message);

  factory InvalidRedeclarationException.ofRedeclaration(
    ClassType classType,
    ClassTypeElement original,
    ClassTypeElement redeclared,
  ) {
    final originalType = original.type.toString();
    final redeclaredType = redeclared.type.toString();
    final message =
        '''$classType.${redeclared.name} cannot be redeclared with type $redeclaredType because it is not a subtype of the original element type $originalType''';
    return InvalidRedeclarationException(message);
  }
}
