Map<Uri, Map<String, String>> getXmlToDartTypeMap() {
  final map = {
    Uri.parse('http://www.w3.org/2001/XMLSchema'): {
      'any': 'System.Any',
      'anySimpleType': 'System.Any',
      'anyType': 'System.Any',
      'anyURI': 'System.String',
      'base64Binary': 'System.String',
      'boolean': 'System.Boolean',
      'byte': 'System.Integer',
      'date': 'System.DateTime',
      'dateTime': 'System.DateTime',
      // 'gDay': 'System.DateTime', // Commented out as gDay is deprecated
      'decimal': 'System.Decimal',
      'double': 'System.Double', // Corrected from 'System.Boolean'
      'duration':
          'System.Quantity', // Custom class might be better than Quantity
      'ENTITIES': 'List<System.String>',
      'ENTITY': 'System.String',
      'float': 'System.Decimal', // Corrected from 'System.Double'
      // 'hexBinary': 'System.String', // Commented out as hexBinary is deprecated
      'ID': 'System.String',
      'IDREF': 'System.String',
      'IDREFS': 'List<System.String>',
      'int': 'System.Integer',
      'integer': 'System.Integer',
      'language': 'System.String',
      'long': 'System.Integer',
      // 'gMonth': 'System.DateTime', // Commented out as gMonth is deprecated
      // 'gMonthDay': 'System.DateTime', // Commented out as gMonthDay is deprecated
      'Name': 'System.String',
      'NCName': 'System.String',
      'negativeInteger': 'System.Integer',
      'NMTOKEN': 'System.String',
      'NMTOKENS': 'List<System.String>',
      'nonNegativeInteger': 'System.Integer',
      'nonPositiveInteger': 'System.Integer',
      'normalizedString': 'System.String',
      // 'NOTATION': 'System.String', // Commented out as NOTATION is deprecated
      'positiveInteger': 'System.Integer',
      'QName': 'System.String',
      'short': 'System.Integer',
      'string': 'System.String',
      'time': 'System.Time',
      'token': 'System.String',
      'unsignedByte': 'System.Integer',
      'unsignedInt': 'System.Integer',
      'unsignedLong': 'System.Integer',
      'unsignedShort': 'System.Integer',
      // 'gYear': 'System.DateTime', // Commented out as gYear is deprecated
      // 'gYearMonth': 'System.DateTime', // Commented out as gYearMonth is deprecated
    },
  };
  return map;
}
