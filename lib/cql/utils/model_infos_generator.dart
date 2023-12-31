import 'package:cql/cql.dart';

void main() {
  for (final model in models) {
    print("""case "${model.version}":
            return ModelInfoReaderFactory.getReader("application/xml")
                .read(${modelNames[models.indexOf(model)]});""");
  }
}

final models = [
  qdmmodelinfo53,
  qdmmodelinfo502,
  qdmmodelinfo50_withNegationTypes,
  fhirmodelinfo102,
  matfhirmodelinfo401,
  systemmodelinfo,
  fhirmodelinfo320,
  testmodelinfowithgenericshappy,
  fhirmodelinfo401,
  fhirmodelinfo400,
  cmodelinfo,
  qicoremodelinfo411,
  fhirmodelinfo401151,
  qdmmodelinfo,
  qdmmodelinfo54,
  qdmmodelinfo43,
  fhirmodelinfo16,
  simplemodelinfo,
  newfhirmodelinfo401,
  qdmmodelinfo42,
  uscoremodelinfo311,
  fhirmodelinfo401withmetadata,
  amodelinfo,
  qdmmodelinfo56,
  quickmodelinfo030,
  quickfhirmodelinfo301,
  quickmodelinfo300,
  fhirmodelinfo300,
  fhirmodelinfo301,
  qicoremodelinfo400,
  qicoremodelinfo500,
  fhirmodelinfo18,
  bmodelinfo,
  testmodelinfo,
  quickmodelinfoold,
  qdmmodelinfo55,
  fhirmodelinfo14,
  quickmodelinfo330,
  qdmmodelconfig42,
  quickmodelinfo,
  qdmmodelinfo50,
  uscoremodelinfo310,
  qicoremodelinfo410,
  testmodelinfowithgenericssad1,
  qdmmodelinfo501,
];

final modelNames = [
  'qdmmodelinfo53',
  'qdmmodelinfo502',
  'qdmmodelinfo50_withNegationTypes',
  'fhirmodelinfo102',
  'matfhirmodelinfo401',
  'systemmodelinfo',
  'fhirmodelinfo320',
  'testmodelinfowithgenericshappy',
  'fhirmodelinfo401',
  'fhirmodelinfo400',
  'cmodelinfo',
  'qicoremodelinfo411',
  'fhirmodelinfo401151',
  'qdmmodelinfo',
  'qdmmodelinfo54',
  'qdmmodelinfo43',
  'fhirmodelinfo16',
  'simplemodelinfo',
  'newfhirmodelinfo401',
  'qdmmodelinfo42',
  'uscoremodelinfo311',
  'fhirmodelinfo401withmetadata',
  'amodelinfo',
  'qdmmodelinfo56',
  'quickmodelinfo030',
  'quickfhirmodelinfo301',
  'quickmodelinfo300',
  'fhirmodelinfo300',
  'fhirmodelinfo301',
  'qicoremodelinfo400',
  'qicoremodelinfo500',
  'fhirmodelinfo18',
  'bmodelinfo',
  'testmodelinfo',
  'quickmodelinfoold',
  'qdmmodelinfo55',
  'fhirmodelinfo14',
  'quickmodelinfo330',
  'qdmmodelconfig42',
  'quickmodelinfo',
  'qdmmodelinfo50',
  'uscoremodelinfo310',
  'qicoremodelinfo410',
  'testmodelinfowithgenericssad1',
  'qdmmodelinfo501',
];
