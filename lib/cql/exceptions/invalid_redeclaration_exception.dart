class InvalidRedeclarationException implements Exception {
  final String? message;

  InvalidRedeclarationException([this.message]);

  InvalidRedeclarationException.fromElements(
    String className,
    String redeclaredName,
    String redeclaredType,
    String originalType,
  ) : message = "$className.$redeclaredName cannot be redeclared with type $redeclaredType "
            "because it is not a subtype of the original element type $originalType";
}
