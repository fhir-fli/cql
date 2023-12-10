import '../../../cql/cql-to-elm/elm/elm.dart';

class TypeParameterInfo {
  TypeParameterInfo(
      {this.typeSpecifier,
      required this.name,
      required this.constraint,
      this.constraintType});

  TypeSpecifier? typeSpecifier;
  String name;
  String constraint;
  String? constraintType;
}
