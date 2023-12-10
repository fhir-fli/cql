import '../../../cql/cql-to-elm/elm/elm.dart';

class TypeSpecifier extends ElmElement {
  String? localId;
  String? locator;
  QName? resultTypeName;
  List<CqlToElmBase>? annotation;
  TypeSpecifier? resultTypeSpecifier;

  TypeSpecifier({
    this.localId,
    this.locator,
    this.resultTypeName,
    this.annotation,
    this.resultTypeSpecifier,
  });
}
