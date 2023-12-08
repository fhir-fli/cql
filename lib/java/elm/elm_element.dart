import 'elm.dart';

/// The Element type defines the abstract base type for all library elements in ELM.
abstract mixin class ElmElement {
  String? localId;
  String? locator;
  QName? resultTypeName;
  List<CqlToElmBase>? annotation;
  TypeSpecifier? resultTypeSpecifier;
}
