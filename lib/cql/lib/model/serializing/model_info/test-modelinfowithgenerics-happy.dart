import '../../../cql.dart';

final testmodelinfowithgenericshappy = ModelInfo.fromJson({
    "name": "GENTEST",
    "url": "http://example.com/gentest",
    "schemaLocation": "urn:hl7-org:elm-modelinfo:r1 ../../../../../../../../../../cql-lm/schema/model/modelinfo.xsd",
    "targetQualifier": "gentest",
    "typeInfo": [
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyGeneric",
            "baseType": "System.Any",
            "retrievable": false,
            "parameter": {
                "name": "T",
                "constraint": "TYPE",
                "constraintType": "System.Any"
            },
            "element": {
                "name": "field1",
                "elementTypeSpecifier": {
                    "parameterName": "T",
                    "type": "ParameterTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyQuantity",
            "baseType": "GENTEST.MyGeneric",
            "retrievable": false,
            "element": {
                "name": "field1",
                "elementTypeSpecifier": {
                    "parameterName": "T",
                    "boundType": "System.Quantity",
                    "type": "BoundParameterTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.Map<S,T extends System.Integer>",
            "baseType": "System.Any",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyInteger",
            "baseType": "GENTEST.MyGeneric<System.Integer>",
            "retrievable": false
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyOtherGeneric",
            "baseType": "System.Any",
            "retrievable": false,
            "parameter": [
                {
                    "name": "S",
                    "constraint": "TYPE",
                    "constraintType": "System.Any"
                },
                {
                    "name": "T",
                    "constraint": "TYPE",
                    "constraintType": "System.Any"
                }
            ],
            "element": [
                {
                    "name": "field1",
                    "elementTypeSpecifier": {
                        "parameterName": "S",
                        "type": "ParameterTypeSpecifier"
                    }
                },
                {
                    "name": "field2",
                    "elementTypeSpecifier": {
                        "parameterName": "T",
                        "type": "ParameterTypeSpecifier"
                    }
                }
            ]
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyOtherQuantity1",
            "baseType": "GENTEST.MyOtherGeneric",
            "retrievable": false,
            "parameter": {
                "name": "T",
                "constraint": "TYPE",
                "constraintType": "System.Any"
            },
            "element": {
                "name": "field1",
                "elementTypeSpecifier": {
                    "parameterName": "S",
                    "boundType": "System.Quantity",
                    "type": "BoundParameterTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyOtherQuantity2",
            "baseType": "GENTEST.MyOtherGeneric",
            "retrievable": false,
            "parameter": {
                "name": "S",
                "constraint": "TYPE",
                "constraintType": "System.Any"
            },
            "element": {
                "name": "field1",
                "elementTypeSpecifier": {
                    "parameterName": "T",
                    "boundType": "System.Quantity",
                    "type": "BoundParameterTypeSpecifier"
                }
            }
        },
        {
            "type": "ClassInfo",
            "name": "GENTEST.MyOtherQuantity3",
            "baseType": "GENTEST.MyOtherGeneric",
            "retrievable": false,
            "element": [
                {
                    "name": "field1",
                    "elementTypeSpecifier": {
                        "parameterName": "S",
                        "boundType": "System.Quantity",
                        "type": "BoundParameterTypeSpecifier"
                    }
                },
                {
                    "name": "field2",
                    "elementTypeSpecifier": {
                        "parameterName": "T",
                        "boundType": "System.Quantity",
                        "type": "BoundParameterTypeSpecifier"
                    }
                }
            ]
        }
    ]
});