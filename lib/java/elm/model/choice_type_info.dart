import '../../../cql/cql-to-elm/elm/elm.dart';

class ChoiceTypeInfo extends TypeInfo {
  List<TypeSpecifier>? type;
  List<TypeSpecifier>? choice;

  ChoiceTypeInfo({this.type, this.choice});
}
