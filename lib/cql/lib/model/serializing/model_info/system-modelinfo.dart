import '../../../cql.dart';

final systemmodelinfo = ModelInfo.fromJson({
    "name": "System",
    "url": "urn:hl7-org:elm-types:r1",
    "targetQualifier": "system",
    "version": "1.0.0",
    "typeInfo": [
        {
            "type": "SimpleTypeInfo",
            "name": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Boolean",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Integer",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Long",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Decimal",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.String",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.DateTime",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Date",
            "baseType": "System.Any"
        },
        {
            "type": "SimpleTypeInfo",
            "name": "System.Time",
            "baseType": "System.Any"
        },
        {
            "type": "ClassInfo",
            "name": "System.Quantity",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "value",
                    "type": "System.Decimal"
                },
                {
                    "name": "unit",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.Ratio",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "numerator",
                    "type": "System.Quantity"
                },
                {
                    "name": "denominator",
                    "type": "System.Quantity"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.Code",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "code",
                    "type": "System.String"
                },
                {
                    "name": "system",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                },
                {
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.Concept",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "codes",
                    "typeSpecifier": {
                        "type": "ListTypeSpecifier"
                    }
                },
                {
                    "name": "display",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.Vocabulary",
            "baseType": "System.Any",
            "retrievable": false,
            "element": [
                {
                    "name": "id",
                    "type": "System.String"
                },
                {
                    "name": "version",
                    "type": "System.String"
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "System.ValueSet",
            "baseType": "System.Vocabulary",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "System.CodeSystem",
            "baseType": "System.Vocabulary",
            "retrievable": false
        }
    ]
});