const quickmodelinfo330 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QUICK" version="3.3.0" url="http://hl7.org/fhir/us/qicore" targetQualifier="quick" patientClassName="QUICK.Patient" patientBirthDatePropertyName="birthDate" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ns4:requiredModelInfo name="System" version="1.0.0"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Address" identifier="http://hl7.org/fhir/StructureDefinition/Address" label="Address" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="use" elementType="QUICK.AddressUse"/>
        <ns4:element name="type" elementType="QUICK.AddressType"/>
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="line">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="city" elementType="System.String"/>
        <ns4:element name="district" elementType="System.String"/>
        <ns4:element name="state" elementType="System.String"/>
        <ns4:element name="postalCode" elementType="System.String"/>
        <ns4:element name="country" elementType="System.String"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AddressType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AddressUse" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AdministrativeGender" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AdverseEvent" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-adverseevent" label="AdverseEvent" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" elementType="QUICK.Identifier"/>
        <ns4:element name="actuality" elementType="QUICK.AdverseEventActuality"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="event" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="detected" elementType="System.DateTime"/>
        <ns4:element name="recordedDate" elementType="System.DateTime"/>
        <ns4:element name="resultingCondition">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="seriousness" elementType="System.Concept"/>
        <ns4:element name="severity" elementType="System.Concept"/>
        <ns4:element name="outcome" elementType="System.Concept"/>
        <ns4:element name="recorder" elementType="QUICK.Reference"/>
        <ns4:element name="contributor">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="suspectEntity">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.AdverseEvent.SuspectEntity"/>
        </ns4:element>
        <ns4:element name="subjectMedicalHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="referenceDocument">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="study">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AdverseEvent.SuspectEntity" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="instance" elementType="QUICK.Reference"/>
        <ns4:element name="causality" elementType="QUICK.AdverseEvent.SuspectEntity.Causality"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AdverseEvent.SuspectEntity.Causality" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="assessment" elementType="System.Concept"/>
        <ns4:element name="productRelatedness" elementType="System.String"/>
        <ns4:element name="author" elementType="QUICK.Reference"/>
        <ns4:element name="method" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AdverseEventActuality" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntolerance" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-allergyintolerance" label="AllergyIntolerance" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="resolutionAge" elementType="QUICK.resolutionAge"/>
        <ns4:element name="reasonRefuted" elementType="QUICK.reasonRefuted"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="clinicalStatus" elementType="System.Concept"/>
        <ns4:element name="verificationStatus" elementType="System.Concept"/>
        <ns4:element name="type" elementType="QUICK.AllergyIntoleranceType"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.AllergyIntoleranceCategory"/>
        </ns4:element>
        <ns4:element name="criticality" elementType="QUICK.AllergyIntoleranceCriticality"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="onset">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recordedDate" elementType="System.DateTime"/>
        <ns4:element name="recorder" elementType="QUICK.Reference"/>
        <ns4:element name="asserter" elementType="QUICK.Reference"/>
        <ns4:element name="lastOccurrence" elementType="System.DateTime"/>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="reaction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.AllergyIntolerance.Reaction"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntolerance.Reaction" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="substance" elementType="System.Concept"/>
        <ns4:element name="manifestation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="onset" elementType="System.DateTime"/>
        <ns4:element name="severity" elementType="QUICK.AllergyIntoleranceSeverity"/>
        <ns4:element name="exposureRoute" elementType="System.Concept"/>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntoleranceCategory" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntoleranceCriticality" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntoleranceSeverity" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="AllergyIntoleranceType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Annotation" identifier="http://hl7.org/fhir/StructureDefinition/Annotation" label="Annotation" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="author">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="time" elementType="System.DateTime"/>
        <ns4:element name="text" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Attachment" identifier="http://hl7.org/fhir/StructureDefinition/Attachment" label="Attachment" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="contentType" elementType="QUICK.MimeType"/>
        <ns4:element name="language" elementType="System.String"/>
        <ns4:element name="data" elementType="System.String"/>
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="size" elementType="System.Integer"/>
        <ns4:element name="hash" elementType="System.String"/>
        <ns4:element name="title" elementType="System.String"/>
        <ns4:element name="creation" elementType="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="BackboneElement" identifier="http://hl7.org/fhir/StructureDefinition/BackboneElement" label="BackboneElement" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="modifierExtension">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="BodyLengthUnits" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="BodyStructure" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-bodystructure" label="BodyStructure" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="morphology" elementType="System.Concept"/>
        <ns4:element name="location" elementType="System.Concept"/>
        <ns4:element name="locationQualifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="image">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="BodyTempUnits" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="BodyWeightUnits" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-claim" label="Claim" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.ClaimStatus"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="subType" elementType="System.Concept"/>
        <ns4:element name="use" elementType="QUICK.Use"/>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="billablePeriod">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="created" elementType="System.DateTime"/>
        <ns4:element name="enterer" elementType="QUICK.Reference"/>
        <ns4:element name="insurer" elementType="QUICK.Reference"/>
        <ns4:element name="provider" elementType="QUICK.Reference"/>
        <ns4:element name="priority" elementType="System.Concept"/>
        <ns4:element name="fundsReserve" elementType="System.Concept"/>
        <ns4:element name="related">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Related"/>
        </ns4:element>
        <ns4:element name="prescription" elementType="QUICK.Reference"/>
        <ns4:element name="originalPrescription" elementType="QUICK.Reference"/>
        <ns4:element name="payee" elementType="QUICK.Claim.Payee"/>
        <ns4:element name="referral" elementType="QUICK.Reference"/>
        <ns4:element name="facility" elementType="QUICK.Reference"/>
        <ns4:element name="careTeam">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.CareTeam"/>
        </ns4:element>
        <ns4:element name="supportingInfo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.SupportingInfo"/>
        </ns4:element>
        <ns4:element name="diagnosis">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Diagnosis"/>
        </ns4:element>
        <ns4:element name="procedure">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Procedure"/>
        </ns4:element>
        <ns4:element name="insurance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Insurance"/>
        </ns4:element>
        <ns4:element name="accident" elementType="QUICK.Claim.Accident"/>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Item"/>
        </ns4:element>
        <ns4:element name="total" elementType="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Accident" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="date" elementType="System.Date"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="location">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Address"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.CareTeam" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="provider" elementType="QUICK.Reference"/>
        <ns4:element name="responsible" elementType="System.Boolean"/>
        <ns4:element name="role" elementType="System.Concept"/>
        <ns4:element name="qualification" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Diagnosis" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="diagnosis">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="onAdmission" elementType="System.Concept"/>
        <ns4:element name="packageCode" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Insurance" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="focal" elementType="System.Boolean"/>
        <ns4:element name="identifier" elementType="QUICK.Identifier"/>
        <ns4:element name="coverage" elementType="QUICK.Reference"/>
        <ns4:element name="businessArrangement" elementType="System.String"/>
        <ns4:element name="preAuthRef">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="claimResponse" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Item" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="careTeamSequence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Integer"/>
        </ns4:element>
        <ns4:element name="diagnosisSequence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Integer"/>
        </ns4:element>
        <ns4:element name="procedureSequence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Integer"/>
        </ns4:element>
        <ns4:element name="informationSequence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Integer"/>
        </ns4:element>
        <ns4:element name="revenue" elementType="System.Concept"/>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="productOrService" elementType="System.Concept"/>
        <ns4:element name="modifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="programCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="serviced">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="location">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Address"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="unitPrice" elementType="System.Decimal"/>
        <ns4:element name="factor" elementType="System.Decimal"/>
        <ns4:element name="net" elementType="System.Decimal"/>
        <ns4:element name="udi">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="subSite">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="encounter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="detail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Item.Detail"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Item.Detail" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="revenue" elementType="System.Concept"/>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="productOrService" elementType="System.Concept"/>
        <ns4:element name="modifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="programCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="unitPrice" elementType="System.Decimal"/>
        <ns4:element name="factor" elementType="System.Decimal"/>
        <ns4:element name="net" elementType="System.Decimal"/>
        <ns4:element name="udi">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="subDetail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Claim.Item.Detail.SubDetail"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Item.Detail.SubDetail" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="revenue" elementType="System.Concept"/>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="productOrService" elementType="System.Concept"/>
        <ns4:element name="modifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="programCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="unitPrice" elementType="System.Decimal"/>
        <ns4:element name="factor" elementType="System.Decimal"/>
        <ns4:element name="net" elementType="System.Decimal"/>
        <ns4:element name="udi">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Payee" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="party" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Procedure" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="procedure">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="udi">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.Related" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="claim" elementType="QUICK.Reference"/>
        <ns4:element name="relationship" elementType="System.Concept"/>
        <ns4:element name="reference" elementType="QUICK.Identifier"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Claim.SupportingInfo" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="timing">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="reason" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ClaimStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Communication" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communication" label="Communication" retrievable="true" primaryCodePath="reasonCode" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="instantiatesUri">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="inResponseTo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.CommunicationStatus"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="priority" elementType="QUICK.CommunicationPriority"/>
        <ns4:element name="medium">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="topic" elementType="System.Concept"/>
        <ns4:element name="about">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="sent" elementType="System.DateTime"/>
        <ns4:element name="received" elementType="System.DateTime"/>
        <ns4:element name="recipient">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="sender" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="payload">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Communication.Payload"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Communication.Payload" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="content">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CommunicationPriority" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CommunicationRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationrequest" label="CommunicationRequest" retrievable="true" primaryCodePath="category" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="replaces">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="groupIdentifier" elementType="QUICK.Identifier"/>
        <ns4:element name="status" elementType="QUICK.CommunicationRequestStatus"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="priority" elementType="QUICK.CommunicationPriority"/>
        <ns4:element name="doNotPerform" elementType="System.Boolean"/>
        <ns4:element name="medium">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="about">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="payload">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.CommunicationRequest.Payload"/>
        </ns4:element>
        <ns4:element name="occurrence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="authoredOn" elementType="System.DateTime"/>
        <ns4:element name="requester" elementType="QUICK.Reference"/>
        <ns4:element name="recipient">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="sender" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CommunicationRequest.Payload" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="content">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CommunicationRequestStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CommunicationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Condition" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-condition" label="Condition" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="dueTo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.dueTo"/>
        </ns4:element>
        <ns4:element name="occurredFollowing">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.occurredFollowing"/>
        </ns4:element>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="clinicalStatus" elementType="System.Concept"/>
        <ns4:element name="verificationStatus" elementType="System.Concept"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="severity" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="bodySite">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="onset">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="abatement">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recordedDate" elementType="System.DateTime"/>
        <ns4:element name="recorder" elementType="QUICK.Reference"/>
        <ns4:element name="asserter" elementType="QUICK.Reference"/>
        <ns4:element name="stage">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Condition.Stage"/>
        </ns4:element>
        <ns4:element name="evidence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Condition.Evidence"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Condition.Evidence" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="code">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="detail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Condition.Stage" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="summary" elementType="System.Concept"/>
        <ns4:element name="assessment">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="type" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ContactDetail" identifier="http://hl7.org/fhir/StructureDefinition/ContactDetail" label="ContactDetail" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ContactPoint" identifier="http://hl7.org/fhir/StructureDefinition/ContactPoint" label="ContactPoint" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="system" elementType="QUICK.ContactPointSystem"/>
        <ns4:element name="value" elementType="System.String"/>
        <ns4:element name="use" elementType="QUICK.ContactPointUse"/>
        <ns4:element name="rank" elementType="System.Integer"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ContactPointSystem" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ContactPointUse" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Contributor" identifier="http://hl7.org/fhir/StructureDefinition/Contributor" label="Contributor" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="type" elementType="QUICK.ContributorType"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="contact">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactDetail"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ContributorType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Coverage" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-coverage" label="Coverage" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.CoverageStatus"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="policyHolder" elementType="QUICK.Reference"/>
        <ns4:element name="subscriber" elementType="QUICK.Reference"/>
        <ns4:element name="subscriberId" elementType="System.String"/>
        <ns4:element name="beneficiary" elementType="QUICK.Reference"/>
        <ns4:element name="dependent" elementType="System.String"/>
        <ns4:element name="relationship" elementType="System.Concept"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="payor">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="class">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Coverage.Class"/>
        </ns4:element>
        <ns4:element name="order" elementType="System.Integer"/>
        <ns4:element name="network" elementType="System.String"/>
        <ns4:element name="costToBeneficiary">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Coverage.CostToBeneficiary"/>
        </ns4:element>
        <ns4:element name="subrogation" elementType="System.Boolean"/>
        <ns4:element name="contract">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Coverage.Class" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="value" elementType="System.String"/>
        <ns4:element name="name" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Coverage.CostToBeneficiary" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="exception">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Coverage.CostToBeneficiary.Exception"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Coverage.CostToBeneficiary.Exception" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="CoverageStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DataRequirement" identifier="http://hl7.org/fhir/StructureDefinition/DataRequirement" label="DataRequirement" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="type" elementType="QUICK.FHIRAllTypes"/>
        <ns4:element name="profile">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="subject">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="mustSupport">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="codeFilter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Element"/>
        </ns4:element>
        <ns4:element name="path" elementType="System.String"/>
        <ns4:element name="searchParam" elementType="System.String"/>
        <ns4:element name="valueSet" elementType="System.String"/>
        <ns4:element name="code">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="dateFilter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Element"/>
        </ns4:element>
        <ns4:element name="path" elementType="System.String"/>
        <ns4:element name="searchParam" elementType="System.String"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="limit" elementType="System.Integer"/>
        <ns4:element name="sort">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Element"/>
        </ns4:element>
        <ns4:element name="path" elementType="System.String"/>
        <ns4:element name="direction" elementType="QUICK.SortDirection"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DayOfWeek" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DaysOfWeek" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-device" label="Device" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="definition" elementType="QUICK.Reference"/>
        <ns4:element name="udiCarrier" elementType="QUICK.Device.UdiCarrier"/>
        <ns4:element name="status" elementType="QUICK.FHIRDeviceStatus"/>
        <ns4:element name="statusReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="distinctIdentifier" elementType="System.String"/>
        <ns4:element name="manufacturer" elementType="System.String"/>
        <ns4:element name="manufactureDate" elementType="System.DateTime"/>
        <ns4:element name="expirationDate" elementType="System.DateTime"/>
        <ns4:element name="lotNumber" elementType="System.String"/>
        <ns4:element name="serialNumber" elementType="System.String"/>
        <ns4:element name="deviceName">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Device.DeviceName"/>
        </ns4:element>
        <ns4:element name="modelNumber" elementType="System.String"/>
        <ns4:element name="partNumber" elementType="System.String"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="specialization">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Device.Specialization"/>
        </ns4:element>
        <ns4:element name="version">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Device.Version"/>
        </ns4:element>
        <ns4:element name="property">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Device.Property"/>
        </ns4:element>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="owner" elementType="QUICK.Reference"/>
        <ns4:element name="contact">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="safety">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="parent" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device.DeviceName" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="type" elementType="QUICK.DeviceNameType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device.Property" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="valueQuantity">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Quantity"/>
        </ns4:element>
        <ns4:element name="valueCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device.Specialization" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="systemType" elementType="System.Concept"/>
        <ns4:element name="version" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device.UdiCarrier" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="deviceIdentifier" elementType="System.String"/>
        <ns4:element name="issuer" elementType="System.String"/>
        <ns4:element name="jurisdiction" elementType="System.String"/>
        <ns4:element name="carrierAIDC" elementType="System.String"/>
        <ns4:element name="carrierHRF" elementType="System.String"/>
        <ns4:element name="entryType" elementType="QUICK.UDIEntryType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Device.Version" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="component" elementType="QUICK.Identifier"/>
        <ns4:element name="value" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DeviceNameType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DeviceUseStatement" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement" label="DeviceUseStatement" retrievable="true" primaryCodePath="device.code" baseType="QUICK.DomainResource">
        <ns4:element name="notDone" elementType="QUICK._Not_Done_Extension"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.DeviceUseStatementStatus"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="timing">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recordedOn" elementType="System.DateTime"/>
        <ns4:element name="source" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DeviceUseStatementStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DiagnosticReport.Media" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="comment" elementType="System.String"/>
        <ns4:element name="link" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DiagnosticReportLab" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab" label="DiagnosticReportLab" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="locationPerformed" elementType="QUICK.locationPerformed"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="lab" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="resultsInterpreter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="specimen">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="result">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="imagingStudy">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="media">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DiagnosticReport.Media"/>
        </ns4:element>
        <ns4:element name="conclusion" elementType="System.String"/>
        <ns4:element name="conclusionCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="presentedForm">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DiagnosticReportNote" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-note" label="DiagnosticReportNote" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="locationPerformed" elementType="QUICK.locationPerformed"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="resultsInterpreter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="specimen">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="result">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="imagingStudy">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="media">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DiagnosticReport.Media"/>
        </ns4:element>
        <ns4:element name="conclusion" elementType="System.String"/>
        <ns4:element name="conclusionCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="presentedForm">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="DomainResource" identifier="http://hl7.org/fhir/StructureDefinition/DomainResource" label="DomainResource" retrievable="true" baseType="QUICK.Resource">
        <ns4:element name="text" elementType="QUICK.Narrative"/>
        <ns4:element name="contained">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Resource"/>
        </ns4:element>
        <ns4:element name="extension">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
        <ns4:element name="modifierExtension">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Dosage" identifier="http://hl7.org/fhir/StructureDefinition/Dosage" label="Dosage" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" elementType="System.Integer"/>
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="additionalInstruction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="patientInstruction" elementType="System.String"/>
        <ns4:element name="timing" elementType="QUICK.Timing"/>
        <ns4:element name="asNeeded">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="site" elementType="System.Concept"/>
        <ns4:element name="route" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="doseAndRate">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Element"/>
        </ns4:element>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="dose">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="rate">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="maxDosePerPeriod" elementType="System.Ratio"/>
        <ns4:element name="maxDosePerAdministration" elementType="System.Quantity"/>
        <ns4:element name="maxDosePerLifetime" elementType="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Element" identifier="http://hl7.org/fhir/StructureDefinition/Element" label="Element" retrievable="false">
        <ns4:element name="id" elementType="System.String"/>
        <ns4:element name="extension">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="EnableWhenBehavior" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter" label="Encounter" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="reasonCancelled" elementType="QUICK.reasonCancelled"/>
        <ns4:element name="procedure">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.EncounterProcedureExtension"/>
        </ns4:element>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.EncounterStatus"/>
        <ns4:element name="statusHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Encounter.StatusHistory"/>
        </ns4:element>
        <ns4:element name="class" elementType="System.Code"/>
        <ns4:element name="classHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Encounter.ClassHistory"/>
        </ns4:element>
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="serviceType" elementType="System.Concept"/>
        <ns4:element name="priority" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="episodeOfCare">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="participant">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Encounter.Participant"/>
        </ns4:element>
        <ns4:element name="appointment">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="length" elementType="System.Quantity"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="diagnosis">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Encounter.Diagnosis"/>
        </ns4:element>
        <ns4:element name="account">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="hospitalization" elementType="QUICK.Encounter.Hospitalization"/>
        <ns4:element name="location">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Encounter.Location"/>
        </ns4:element>
        <ns4:element name="serviceProvider" elementType="QUICK.Reference"/>
        <ns4:element name="partOf" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.ClassHistory" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="class" elementType="System.Code"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.Diagnosis" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="condition" elementType="QUICK.Reference"/>
        <ns4:element name="use" elementType="System.Concept"/>
        <ns4:element name="rank" elementType="System.Integer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.Hospitalization" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="preAdmissionIdentifier" elementType="QUICK.Identifier"/>
        <ns4:element name="origin" elementType="QUICK.Reference"/>
        <ns4:element name="admitSource" elementType="System.Concept"/>
        <ns4:element name="reAdmission" elementType="System.Concept"/>
        <ns4:element name="dietPreference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="specialCourtesy">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="specialArrangement">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="destination" elementType="QUICK.Reference"/>
        <ns4:element name="dischargeDisposition" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.Location" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="status" elementType="QUICK.EncounterLocationStatus"/>
        <ns4:element name="physicalType" elementType="System.Concept"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.Participant" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="individual" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Encounter.StatusHistory" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="status" elementType="QUICK.EncounterStatus"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="EncounterLocationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="EncounterProcedureExtension" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure" label="EncounterProcedureExtension" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="type" elementType="QUICK.Extension"/>
        <ns4:element name="rank" elementType="QUICK.Extension"/>
        <ns4:element name="procedure" elementType="QUICK.Extension"/>
        <ns4:element name="url" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="EncounterStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="EventTiming" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Expression" identifier="http://hl7.org/fhir/StructureDefinition/Expression" label="Expression" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="language" elementType="System.String"/>
        <ns4:element name="expression" elementType="System.String"/>
        <ns4:element name="reference" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Extension" identifier="http://hl7.org/fhir/StructureDefinition/Extension" label="Extension" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Address"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Annotation"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactPoint"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="HumanName"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Identifier"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Signature"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactDetail"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Contributor"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="DataRequirement"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Expression"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ParameterDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="RelatedArtifact"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="TriggerDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="UsageContext"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Dosage"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FHIRAllTypes" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FHIRDeviceStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FHIRSubstanceStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FamilyHistoryStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FamilyMemberHistory" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-familymemberhistory" label="FamilyMemberHistory" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="instantiatesUri">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.FamilyHistoryStatus"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="relationship" elementType="System.Concept"/>
        <ns4:element name="sex" elementType="System.Concept"/>
        <ns4:element name="born">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="age">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="estimatedAge" elementType="System.Boolean"/>
        <ns4:element name="deceased">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="condition">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.FamilyMemberHistory.Condition"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FamilyMemberHistory.Condition" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="outcome" elementType="System.Concept"/>
        <ns4:element name="contributedToDeath" elementType="System.Boolean"/>
        <ns4:element name="onset">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Flag" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-flag" label="Flag" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.FlagStatus"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="author" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="FlagStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Goal" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-goal" label="Goal" retrievable="true" primaryCodePath="category" baseType="QUICK.DomainResource">
        <ns4:element name="reasonRejected" elementType="QUICK.reasonRejected"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="lifecycleStatus" elementType="System.String"/>
        <ns4:element name="achievementStatus" elementType="System.Concept"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="priority" elementType="System.Concept"/>
        <ns4:element name="description" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="start" elementType="System.Date"/>
        <ns4:element name="target">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Goal.Target"/>
        </ns4:element>
        <ns4:element name="statusDate" elementType="System.Date"/>
        <ns4:element name="statusReason" elementType="System.String"/>
        <ns4:element name="expressedBy" elementType="QUICK.Reference"/>
        <ns4:element name="addresses">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="outcomeCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="outcomeReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Goal.Target" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="measure" elementType="System.Concept"/>
        <ns4:element name="detail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="due">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="HumanName" identifier="http://hl7.org/fhir/StructureDefinition/HumanName" label="HumanName" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="use" elementType="QUICK.NameUse"/>
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="family" elementType="System.String"/>
        <ns4:element name="given">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="prefix">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="suffix">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Identifier" identifier="http://hl7.org/fhir/StructureDefinition/Identifier" label="Identifier" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="use" elementType="QUICK.IdentifierUse"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="system" elementType="System.String"/>
        <ns4:element name="value" elementType="System.String"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="assigner" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="IdentifierUse" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImagingStudy" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy" label="ImagingStudy" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.ImagingStudyStatus"/>
        <ns4:element name="modality">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="started" elementType="System.DateTime"/>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="referrer" elementType="QUICK.Reference"/>
        <ns4:element name="interpreter">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="endpoint">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="numberOfSeries" elementType="System.Integer"/>
        <ns4:element name="numberOfInstances" elementType="System.Integer"/>
        <ns4:element name="procedureReference" elementType="QUICK.Reference"/>
        <ns4:element name="procedureCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="series">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ImagingStudy.Series"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImagingStudy.Series" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="uid" elementType="System.String"/>
        <ns4:element name="number" elementType="System.Integer"/>
        <ns4:element name="modality" elementType="System.Code"/>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="numberOfInstances" elementType="System.Integer"/>
        <ns4:element name="endpoint">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Code"/>
        <ns4:element name="laterality" elementType="System.Code"/>
        <ns4:element name="specimen">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="started" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ImagingStudy.Series.Performer"/>
        </ns4:element>
        <ns4:element name="instance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ImagingStudy.Series.Instance"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImagingStudy.Series.Instance" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="uid" elementType="System.String"/>
        <ns4:element name="sopClass" elementType="System.Code"/>
        <ns4:element name="number" elementType="System.Integer"/>
        <ns4:element name="title" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImagingStudy.Series.Performer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="function" elementType="System.Concept"/>
        <ns4:element name="actor" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImagingStudyStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Immunization" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization" label="Immunization" retrievable="true" primaryCodePath="vaccineCode" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="vaccineCode" elementType="System.Concept"/>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="occurrence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recorded" elementType="System.DateTime"/>
        <ns4:element name="primarySource" elementType="System.Boolean"/>
        <ns4:element name="reportOrigin" elementType="System.Concept"/>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="manufacturer" elementType="QUICK.Reference"/>
        <ns4:element name="lotNumber" elementType="System.String"/>
        <ns4:element name="expirationDate" elementType="System.Date"/>
        <ns4:element name="site" elementType="System.Concept"/>
        <ns4:element name="route" elementType="System.Concept"/>
        <ns4:element name="doseQuantity" elementType="System.Quantity"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Immunization.Performer"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="isSubpotent" elementType="System.Boolean"/>
        <ns4:element name="subpotentReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="education">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Immunization.Education"/>
        </ns4:element>
        <ns4:element name="programEligibility">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="fundingSource" elementType="System.Concept"/>
        <ns4:element name="reaction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Immunization.Reaction"/>
        </ns4:element>
        <ns4:element name="protocolApplied">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Immunization.ProtocolApplied"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Immunization.Education" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="documentType" elementType="System.String"/>
        <ns4:element name="reference" elementType="System.String"/>
        <ns4:element name="publicationDate" elementType="System.DateTime"/>
        <ns4:element name="presentationDate" elementType="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Immunization.Performer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="function" elementType="System.Concept"/>
        <ns4:element name="actor" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Immunization.ProtocolApplied" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="series" elementType="System.String"/>
        <ns4:element name="authority" elementType="QUICK.Reference"/>
        <ns4:element name="targetDisease">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="doseNumber">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="seriesDoses">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Immunization.Reaction" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="detail" elementType="QUICK.Reference"/>
        <ns4:element name="reported" elementType="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImmunizationRecommendation" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrec" label="ImmunizationRecommendation" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="authority" elementType="QUICK.Reference"/>
        <ns4:element name="recommendation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ImmunizationRecommendation.Recommendation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImmunizationRecommendation.Recommendation" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="vaccineCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="targetDisease" elementType="System.Concept"/>
        <ns4:element name="contraindicatedVaccineCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="forecastStatus" elementType="System.Concept"/>
        <ns4:element name="forecastReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="dateCriterion">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ImmunizationRecommendation.Recommendation.DateCriterion"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="series" elementType="System.String"/>
        <ns4:element name="doseNumber">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="seriesDoses">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="supportingImmunization">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="supportingPatientInformation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ImmunizationRecommendation.Recommendation.DateCriterion" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="value" elementType="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="LinkType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Location" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location" label="Location" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="operationalStatus" elementType="System.Code"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="alias">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="mode" elementType="QUICK.LocationMode"/>
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="address" elementType="QUICK.Address"/>
        <ns4:element name="physicalType" elementType="System.Concept"/>
        <ns4:element name="position" elementType="QUICK.Location.Position"/>
        <ns4:element name="managingOrganization" elementType="QUICK.Reference"/>
        <ns4:element name="partOf" elementType="QUICK.Reference"/>
        <ns4:element name="hoursOfOperation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Location.HoursOfOperation"/>
        </ns4:element>
        <ns4:element name="availabilityExceptions" elementType="System.String"/>
        <ns4:element name="endpoint">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Location.HoursOfOperation" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="daysOfWeek">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DaysOfWeek"/>
        </ns4:element>
        <ns4:element name="allDay" elementType="System.Boolean"/>
        <ns4:element name="openingTime" elementType="System.Time"/>
        <ns4:element name="closingTime" elementType="System.Time"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Location.Position" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="longitude" elementType="System.Decimal"/>
        <ns4:element name="latitude" elementType="System.Decimal"/>
        <ns4:element name="altitude" elementType="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="LocationMode" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Medication" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medication" label="Medication" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="status" elementType="QUICK.MedicationStatus"/>
        <ns4:element name="manufacturer" elementType="QUICK.Reference"/>
        <ns4:element name="form" elementType="System.Concept"/>
        <ns4:element name="amount" elementType="System.Ratio"/>
        <ns4:element name="ingredient">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Medication.Ingredient"/>
        </ns4:element>
        <ns4:element name="batch" elementType="QUICK.Medication.Batch"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Medication.Batch" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="lotNumber" elementType="System.String"/>
        <ns4:element name="expirationDate" elementType="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Medication.Ingredient" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="isActive" elementType="System.Boolean"/>
        <ns4:element name="strength" elementType="System.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationAdministration" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationadministration" label="MedicationAdministration" retrievable="true" primaryCodePath="medicationCodeableConcept" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiates">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.MedicationAdministrationStatus"/>
        <ns4:element name="statusReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="medication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="context" elementType="QUICK.Reference"/>
        <ns4:element name="supportingInformation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.MedicationAdministration.Performer"/>
        </ns4:element>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="request" elementType="QUICK.Reference"/>
        <ns4:element name="device">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="dosage" elementType="QUICK.MedicationAdministration.Dosage"/>
        <ns4:element name="eventHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationAdministration.Dosage" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="site" elementType="System.Concept"/>
        <ns4:element name="route" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="dose" elementType="System.Quantity"/>
        <ns4:element name="rate">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationAdministration.Performer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="function" elementType="System.Concept"/>
        <ns4:element name="actor" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationAdministrationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationDispense" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationdispense" label="MedicationDispense" retrievable="true" primaryCodePath="medicationCodeableConcept" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.MedicationDispenseStatus"/>
        <ns4:element name="statusReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="medication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="context" elementType="QUICK.Reference"/>
        <ns4:element name="supportingInformation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.MedicationDispense.Performer"/>
        </ns4:element>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="authorizingPrescription">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="daysSupply" elementType="System.Quantity"/>
        <ns4:element name="whenPrepared" elementType="System.DateTime"/>
        <ns4:element name="whenHandedOver" elementType="System.DateTime"/>
        <ns4:element name="destination" elementType="QUICK.Reference"/>
        <ns4:element name="receiver">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="dosageInstruction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Dosage"/>
        </ns4:element>
        <ns4:element name="substitution" elementType="QUICK.MedicationDispense.Substitution"/>
        <ns4:element name="detectedIssue">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="eventHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationDispense.Performer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="function" elementType="System.Concept"/>
        <ns4:element name="actor" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationDispense.Substitution" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="wasSubstituted" elementType="System.Boolean"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="reason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="responsibleParty">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationDispenseStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest" label="MedicationRequest" retrievable="true" primaryCodePath="medicationCodeableConcept" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="intent" elementType="QUICK.MedicationRequestIntent"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="priority" elementType="QUICK.MedicationRequestPriority"/>
        <ns4:element name="doNotPerform" elementType="System.Boolean"/>
        <ns4:element name="reported">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="medication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="supportingInformation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="authoredOn" elementType="System.DateTime"/>
        <ns4:element name="requester" elementType="QUICK.Reference"/>
        <ns4:element name="performer" elementType="QUICK.Reference"/>
        <ns4:element name="performerType" elementType="System.Concept"/>
        <ns4:element name="recorder" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="instantiatesUri">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="groupIdentifier" elementType="QUICK.Identifier"/>
        <ns4:element name="courseOfTherapyType" elementType="System.Concept"/>
        <ns4:element name="insurance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="dosageInstruction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Dosage"/>
        </ns4:element>
        <ns4:element name="dispenseRequest" elementType="QUICK.MedicationRequest.DispenseRequest"/>
        <ns4:element name="substitution" elementType="QUICK.MedicationRequest.Substitution"/>
        <ns4:element name="priorPrescription" elementType="QUICK.Reference"/>
        <ns4:element name="detectedIssue">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="eventHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequest.DispenseRequest" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="initialFill" elementType="QUICK.MedicationRequest.DispenseRequest.InitialFill"/>
        <ns4:element name="dispenseInterval" elementType="System.Quantity"/>
        <ns4:element name="validityPeriod">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="numberOfRepeatsAllowed" elementType="System.Integer"/>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="expectedSupplyDuration" elementType="System.Quantity"/>
        <ns4:element name="performer" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequest.DispenseRequest.InitialFill" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="duration" elementType="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequest.Substitution" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="allowed">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="reason" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequestIntent" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationRequestPriority" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationStatement" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationstatement" label="MedicationStatement" retrievable="true" primaryCodePath="medicationCodeableConcept" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="statusReason">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="medication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="context" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="dateAsserted" elementType="System.DateTime"/>
        <ns4:element name="informationSource" elementType="QUICK.Reference"/>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="dosage">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Dosage"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MedicationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Meta" identifier="http://hl7.org/fhir/StructureDefinition/Meta" label="Meta" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="versionId" elementType="System.String"/>
        <ns4:element name="lastUpdated" elementType="System.DateTime"/>
        <ns4:element name="source" elementType="System.String"/>
        <ns4:element name="profile">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="security">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="tag">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MilitaryService" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-military-service" label="Military Service Extension" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="MimeType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="NameUse" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Narrative" identifier="http://hl7.org/fhir/StructureDefinition/Narrative" label="Narrative" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="status" elementType="QUICK.NarrativeStatus"/>
        <ns4:element name="div" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="NarrativeStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Observation" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation" label="Observation" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="bodyPosition" elementType="QUICK.bodyPosition"/>
        <ns4:element name="delta" elementType="QUICK.delta"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.ObservationStatus"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Observation.Component" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Observation.ReferenceRange"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Observation.ReferenceRange" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="low" elementType="System.Quantity"/>
        <ns4:element name="high" elementType="System.Quantity"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="appliesTo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="age">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="text" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ObservationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Organization" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-organization" label="Organization" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="alias">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="address">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Address"/>
        </ns4:element>
        <ns4:element name="partOf" elementType="QUICK.Reference"/>
        <ns4:element name="contact">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Organization.Contact"/>
        </ns4:element>
        <ns4:element name="endpoint">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Organization.Contact" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="purpose" elementType="System.Concept"/>
        <ns4:element name="name" elementType="QUICK.HumanName"/>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="address" elementType="QUICK.Address"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ParameterDefinition" identifier="http://hl7.org/fhir/StructureDefinition/ParameterDefinition" label="ParameterDefinition" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="use" elementType="QUICK.ParameterUse"/>
        <ns4:element name="min" elementType="System.Integer"/>
        <ns4:element name="max" elementType="System.String"/>
        <ns4:element name="documentation" elementType="System.String"/>
        <ns4:element name="type" elementType="QUICK.FHIRAllTypes"/>
        <ns4:element name="profile" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ParameterUse" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Patient" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient" label="Patient" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="race" elementType="QUICK.USCoreRaceExtension"/>
        <ns4:element name="ethnicity" elementType="QUICK.USCoreEthnicityExtension"/>
        <ns4:element name="birthsex" elementType="QUICK.USCoreBirthSexExtension"/>
        <ns4:element name="religion" elementType="QUICK.religion"/>
        <ns4:element name="birthPlace" elementType="QUICK.birthPlace"/>
        <ns4:element name="disability">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.disability"/>
        </ns4:element>
        <ns4:element name="nationality">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.nationality"/>
        </ns4:element>
        <ns4:element name="cadavericDonor" elementType="QUICK.cadavericDonor"/>
        <ns4:element name="military-service" elementType="QUICK.MilitaryService"/>
        <ns4:element name="birthTime" elementType="QUICK.birthTime"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="name">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.HumanName"/>
        </ns4:element>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="gender" elementType="System.String"/>
        <ns4:element name="birthDate" elementType="System.Date"/>
        <ns4:element name="deceased">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="address">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Address"/>
        </ns4:element>
        <ns4:element name="maritalStatus" elementType="System.Concept"/>
        <ns4:element name="multipleBirth">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="photo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
        <ns4:element name="contact">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Patient.Contact"/>
        </ns4:element>
        <ns4:element name="communication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Patient.Communication"/>
        </ns4:element>
        <ns4:element name="generalPractitioner">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="managingOrganization" elementType="QUICK.Reference"/>
        <ns4:element name="link">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Patient.Link"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Patient.Communication" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="language" elementType="System.Concept"/>
        <ns4:element name="preferred" elementType="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Patient.Contact" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="relationship">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="name" elementType="QUICK.HumanName"/>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="address" elementType="QUICK.Address"/>
        <ns4:element name="gender" elementType="QUICK.AdministrativeGender"/>
        <ns4:element name="organization" elementType="QUICK.Reference"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Patient.Link" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="other" elementType="QUICK.Reference"/>
        <ns4:element name="type" elementType="QUICK.LinkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Practitioner" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner" label="Practitioner" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="npislice" elementType="QUICK.Identifier"/>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="name" elementType="QUICK.HumanName"/>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="address">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Address"/>
        </ns4:element>
        <ns4:element name="gender" elementType="QUICK.AdministrativeGender"/>
        <ns4:element name="birthDate" elementType="System.Date"/>
        <ns4:element name="photo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
        <ns4:element name="qualification">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Practitioner.Qualification"/>
        </ns4:element>
        <ns4:element name="communication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Practitioner.Qualification" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issuer" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="PractitionerRole" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole" label="PractitionerRole" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="practitioner" elementType="QUICK.Reference"/>
        <ns4:element name="organization" elementType="QUICK.Reference"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="specialty" elementType="System.Concept"/>
        <ns4:element name="location">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="healthcareService">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="availableTime">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.PractitionerRole.AvailableTime"/>
        </ns4:element>
        <ns4:element name="notAvailable">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.PractitionerRole.NotAvailable"/>
        </ns4:element>
        <ns4:element name="availabilityExceptions" elementType="System.String"/>
        <ns4:element name="endpoint">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="PractitionerRole.AvailableTime" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="daysOfWeek">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DaysOfWeek"/>
        </ns4:element>
        <ns4:element name="allDay" elementType="System.Boolean"/>
        <ns4:element name="availableStartTime" elementType="System.Time"/>
        <ns4:element name="availableEndTime" elementType="System.Time"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="PractitionerRole.NotAvailable" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="during">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Procedure" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedure" label="Procedure" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="approachBodyStructure">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.approachBodyStructure"/>
        </ns4:element>
        <ns4:element name="incisionDateTime" elementType="QUICK.incisionDateTime"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="instantiatesUri">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="category" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="performed">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recorder" elementType="QUICK.Reference"/>
        <ns4:element name="asserter" elementType="QUICK.Reference"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Procedure.Performer"/>
        </ns4:element>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="bodySite">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="outcome" elementType="System.Concept"/>
        <ns4:element name="report">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="complication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="complicationDetail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="followUp">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="focalDevice">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Procedure.FocalDevice"/>
        </ns4:element>
        <ns4:element name="usedReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="usedCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Procedure.FocalDevice" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="action" elementType="System.Concept"/>
        <ns4:element name="manipulated" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Procedure.Performer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="function" elementType="System.Concept"/>
        <ns4:element name="actor" elementType="QUICK.Reference"/>
        <ns4:element name="onBehalfOf" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="PublicationStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuantityComparator" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Questionnaire" identifier="http://hl7.org/fhir/StructureDefinition/Questionnaire" label="Questionnaire" retrievable="true" primaryCodePath="name" baseType="QUICK.DomainResource">
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="version" elementType="System.String"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="title" elementType="System.String"/>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.PublicationStatus"/>
        <ns4:element name="experimental" elementType="System.Boolean"/>
        <ns4:element name="subjectType">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ResourceType"/>
        </ns4:element>
        <ns4:element name="date" elementType="System.DateTime"/>
        <ns4:element name="publisher" elementType="System.String"/>
        <ns4:element name="contact">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactDetail"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="useContext">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.UsageContext"/>
        </ns4:element>
        <ns4:element name="jurisdiction">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="purpose" elementType="System.String"/>
        <ns4:element name="copyright" elementType="System.String"/>
        <ns4:element name="approvalDate" elementType="System.Date"/>
        <ns4:element name="lastReviewDate" elementType="System.Date"/>
        <ns4:element name="effectivePeriod">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="code">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Questionnaire.Item"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Questionnaire.Item" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" elementType="System.String"/>
        <ns4:element name="definition" elementType="System.String"/>
        <ns4:element name="code">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="prefix" elementType="System.String"/>
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="type" elementType="QUICK.QuestionnaireItemType"/>
        <ns4:element name="enableWhen">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Questionnaire.Item.EnableWhen"/>
        </ns4:element>
        <ns4:element name="enableBehavior" elementType="QUICK.EnableWhenBehavior"/>
        <ns4:element name="required" elementType="System.Boolean"/>
        <ns4:element name="repeats" elementType="System.Boolean"/>
        <ns4:element name="readOnly" elementType="System.Boolean"/>
        <ns4:element name="maxLength" elementType="System.Integer"/>
        <ns4:element name="answerValueSet" elementType="System.String"/>
        <ns4:element name="answerOption">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Questionnaire.Item.AnswerOption"/>
        </ns4:element>
        <ns4:element name="initial">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Questionnaire.Item.Initial"/>
        </ns4:element>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Questionnaire.Item"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Questionnaire.Item.AnswerOption" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="initialSelected" elementType="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Questionnaire.Item.EnableWhen" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="question" elementType="System.String"/>
        <ns4:element name="operator" elementType="QUICK.QuestionnaireItemOperator"/>
        <ns4:element name="answer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Questionnaire.Item.Initial" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireItemOperator" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireItemType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireResponse" identifier="http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" label="QuestionnaireResponse" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" elementType="QUICK.Identifier"/>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="questionnaire" elementType="System.String"/>
        <ns4:element name="status" elementType="QUICK.QuestionnaireResponseStatus"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="authored" elementType="System.DateTime"/>
        <ns4:element name="author" elementType="QUICK.Reference"/>
        <ns4:element name="source" elementType="QUICK.Reference"/>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.QuestionnaireResponse.Item"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireResponse.Item" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" elementType="System.String"/>
        <ns4:element name="definition" elementType="System.String"/>
        <ns4:element name="text" elementType="System.String"/>
        <ns4:element name="answer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.QuestionnaireResponse.Item.Answer"/>
        </ns4:element>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="QuestionnaireResponse.Item"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireResponse.Item.Answer" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="item">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="QuestionnaireResponse.Item"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="QuestionnaireResponseStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Reference" identifier="http://hl7.org/fhir/StructureDefinition/Reference" label="Reference" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="reference" elementType="System.String"/>
        <ns4:element name="type" elementType="System.String"/>
        <ns4:element name="identifier" elementType="QUICK.Identifier"/>
        <ns4:element name="display" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="RelatedArtifact" identifier="http://hl7.org/fhir/StructureDefinition/RelatedArtifact" label="RelatedArtifact" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="type" elementType="QUICK.RelatedArtifactType"/>
        <ns4:element name="label" elementType="System.String"/>
        <ns4:element name="display" elementType="System.String"/>
        <ns4:element name="citation" elementType="System.String"/>
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="document" elementType="QUICK.Attachment"/>
        <ns4:element name="resource" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="RelatedArtifactType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="RelatedPerson" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-relatedperson" label="RelatedPerson" retrievable="true" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="active" elementType="System.Boolean"/>
        <ns4:element name="patient" elementType="QUICK.Reference"/>
        <ns4:element name="relationship">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="name">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.HumanName"/>
        </ns4:element>
        <ns4:element name="telecom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.ContactPoint"/>
        </ns4:element>
        <ns4:element name="gender" elementType="QUICK.AdministrativeGender"/>
        <ns4:element name="birthDate" elementType="System.Date"/>
        <ns4:element name="address">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Address"/>
        </ns4:element>
        <ns4:element name="photo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Attachment"/>
        </ns4:element>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="communication">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.RelatedPerson.Communication"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="RelatedPerson.Communication" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="language" elementType="System.Concept"/>
        <ns4:element name="preferred" elementType="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Resource" identifier="http://hl7.org/fhir/StructureDefinition/Resource" label="Resource" retrievable="true">
        <ns4:element name="id" elementType="System.String"/>
        <ns4:element name="meta" elementType="QUICK.Meta"/>
        <ns4:element name="implicitRules" elementType="System.String"/>
        <ns4:element name="language" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ResourceType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="SampledData" identifier="http://hl7.org/fhir/StructureDefinition/SampledData" label="SampledData" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="origin" elementType="System.Quantity"/>
        <ns4:element name="period" elementType="System.Decimal"/>
        <ns4:element name="factor" elementType="System.Decimal"/>
        <ns4:element name="lowerLimit" elementType="System.Decimal"/>
        <ns4:element name="upperLimit" elementType="System.Decimal"/>
        <ns4:element name="dimensions" elementType="System.Integer"/>
        <ns4:element name="data" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ServiceRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest" label="ServiceRequest" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="statusReason" elementType="QUICK.statusReason"/>
        <ns4:element name="approachBodyStructure">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.approachBodyStructure"/>
        </ns4:element>
        <ns4:element name="appropriatenessScore" elementType="QUICK.ServiceRequestAppropriatenessScore"/>
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="instantiatesUri">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.String"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="replaces">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="requisition" elementType="QUICK.Identifier"/>
        <ns4:element name="status" elementType="QUICK.ServiceRequestStatus"/>
        <ns4:element name="intent" elementType="QUICK.ServiceRequestIntent"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="priority" elementType="QUICK.ServiceRequestPriority"/>
        <ns4:element name="doNotPerform" elementType="System.Boolean"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="orderDetail">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="quantity">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="occurrence">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="asNeeded">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="authoredOn" elementType="System.DateTime"/>
        <ns4:element name="requester" elementType="QUICK.Reference"/>
        <ns4:element name="performerType" elementType="System.Concept"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="locationCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="locationReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="reasonCode">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="reasonReference">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="insurance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="supportingInfo">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="specimen">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="bodySite">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="patientInstruction" elementType="System.String"/>
        <ns4:element name="relevantHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ServiceRequestAppropriatenessScore" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore" label="RAND Appropriateness Score Extension" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="id" elementType="System.String"/>
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ServiceRequestIntent" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ServiceRequestPriority" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="ServiceRequestStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Signature" identifier="http://hl7.org/fhir/StructureDefinition/Signature" label="Signature" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="type">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Code"/>
        </ns4:element>
        <ns4:element name="when" elementType="System.DateTime"/>
        <ns4:element name="who" elementType="QUICK.Reference"/>
        <ns4:element name="onBehalfOf" elementType="QUICK.Reference"/>
        <ns4:element name="targetFormat" elementType="QUICK.MimeType"/>
        <ns4:element name="sigFormat" elementType="QUICK.MimeType"/>
        <ns4:element name="data" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="SortDirection" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Specimen" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-specimen" label="Specimen" retrievable="true" primaryCodePath="type" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="accessionIdentifier" elementType="QUICK.Identifier"/>
        <ns4:element name="status" elementType="QUICK.SpecimenStatus"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="receivedTime" elementType="System.DateTime"/>
        <ns4:element name="parent">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="request">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="collection" elementType="QUICK.Specimen.Collection"/>
        <ns4:element name="processing">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Specimen.Processing"/>
        </ns4:element>
        <ns4:element name="container">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Specimen.Container"/>
        </ns4:element>
        <ns4:element name="condition">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Specimen.Collection" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="collector" elementType="QUICK.Reference"/>
        <ns4:element name="collected">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="duration" elementType="System.Quantity"/>
        <ns4:element name="quantity" elementType="System.Quantity"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="fastingStatus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Specimen.Container" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="capacity" elementType="System.Quantity"/>
        <ns4:element name="specimenQuantity" elementType="System.Quantity"/>
        <ns4:element name="additive">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Specimen.Processing" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="procedure" elementType="System.Concept"/>
        <ns4:element name="additive">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="time">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="SpecimenStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Status" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Substance" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-substance" label="Substance" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.FHIRSubstanceStatus"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="instance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Substance.Instance"/>
        </ns4:element>
        <ns4:element name="ingredient">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Substance.Ingredient"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Substance.Ingredient" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="quantity" elementType="System.Ratio"/>
        <ns4:element name="substance" elementType="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Substance.Instance" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" elementType="QUICK.Identifier"/>
        <ns4:element name="expiry" elementType="System.DateTime"/>
        <ns4:element name="quantity" elementType="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Task" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-task" label="Task" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="instantiatesCanonical" elementType="System.String"/>
        <ns4:element name="instantiatesUri" elementType="System.String"/>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="groupIdentifier" elementType="QUICK.Identifier"/>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.TaskStatus"/>
        <ns4:element name="statusReason" elementType="System.Concept"/>
        <ns4:element name="businessStatus" elementType="System.Concept"/>
        <ns4:element name="intent" elementType="QUICK.TaskIntent"/>
        <ns4:element name="priority" elementType="QUICK.TaskPriority"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="description" elementType="System.String"/>
        <ns4:element name="focus" elementType="QUICK.Reference"/>
        <ns4:element name="for" elementType="QUICK.Reference"/>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="executionPeriod">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="authoredOn" elementType="System.DateTime"/>
        <ns4:element name="lastModified" elementType="System.DateTime"/>
        <ns4:element name="requester" elementType="QUICK.Reference"/>
        <ns4:element name="performerType">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="owner" elementType="QUICK.Reference"/>
        <ns4:element name="location" elementType="QUICK.Reference"/>
        <ns4:element name="reasonCode" elementType="System.Concept"/>
        <ns4:element name="reasonReference" elementType="QUICK.Reference"/>
        <ns4:element name="insurance">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="relevantHistory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="restriction" elementType="QUICK.Task.Restriction"/>
        <ns4:element name="input">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Task.Input"/>
        </ns4:element>
        <ns4:element name="output">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Task.Output"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Task.Input" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Address"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Annotation"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactPoint"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="HumanName"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Identifier"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Signature"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactDetail"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Contributor"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="DataRequirement"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Expression"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ParameterDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="RelatedArtifact"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="TriggerDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="UsageContext"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Dosage"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Task.Output" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="type" elementType="System.Concept"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Address"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Annotation"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Attachment"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactPoint"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="HumanName"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Identifier"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Signature"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ContactDetail"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Contributor"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="DataRequirement"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Expression"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="ParameterDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="RelatedArtifact"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="TriggerDefinition"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="UsageContext"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Dosage"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Task.Restriction" retrievable="false" baseType="QUICK.BackboneElement">
        <ns4:element name="repetitions" elementType="System.Integer"/>
        <ns4:element name="period">
            <ns4:elementTypeSpecifier xsi:type="ns4:IntervalTypeSpecifier">
                <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="recipient">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="TaskIntent" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="TaskPriority" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="TaskStatus" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Timing" identifier="http://hl7.org/fhir/StructureDefinition/Timing" label="Timing" retrievable="false" primaryCodePath="code" baseType="QUICK.BackboneElement">
        <ns4:element name="event">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.DateTime"/>
        </ns4:element>
        <ns4:element name="repeat" elementType="QUICK.Element"/>
        <ns4:element name="bounds">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="count" elementType="System.Integer"/>
        <ns4:element name="countMax" elementType="System.Integer"/>
        <ns4:element name="duration" elementType="System.Decimal"/>
        <ns4:element name="durationMax" elementType="System.Decimal"/>
        <ns4:element name="durationUnit" elementType="QUICK.UnitsOfTime"/>
        <ns4:element name="frequency" elementType="System.Integer"/>
        <ns4:element name="frequencyMax" elementType="System.Integer"/>
        <ns4:element name="period" elementType="System.Decimal"/>
        <ns4:element name="periodMax" elementType="System.Decimal"/>
        <ns4:element name="periodUnit" elementType="QUICK.UnitsOfTime"/>
        <ns4:element name="dayOfWeek">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DayOfWeek"/>
        </ns4:element>
        <ns4:element name="timeOfDay">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Time"/>
        </ns4:element>
        <ns4:element name="when">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.EventTiming"/>
        </ns4:element>
        <ns4:element name="offset" elementType="System.Integer"/>
        <ns4:element name="code" elementType="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="TriggerDefinition" identifier="http://hl7.org/fhir/StructureDefinition/TriggerDefinition" label="TriggerDefinition" retrievable="false" baseType="QUICK.Element">
        <ns4:element name="type" elementType="QUICK.TriggerType"/>
        <ns4:element name="name" elementType="System.String"/>
        <ns4:element name="timing">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="data">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.DataRequirement"/>
        </ns4:element>
        <ns4:element name="condition" elementType="QUICK.Expression"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="TriggerType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="UDIEntryType" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCoreBirthSexExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex" label="US Core Birth Sex Extension" retrievable="false" baseType="QUICK.Extension"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCoreEthnicityExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity" label="US Core Ethnicity Extension" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="ombCategory" elementType="QUICK.Extension"/>
        <ns4:element name="detailed">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
        <ns4:element name="text" elementType="QUICK.Extension"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCoreLaboratoryResultObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab" label="US Core Laboratory Result Observation Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="laboratory" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="String"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="SampledData"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCorePediatricBMIforAgeObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age" label="US Core Pediatric BMI for Age Observation Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCorePediatricWeightForHeightObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height" label="US Core Pediatric Weight for Height Observation Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCoreRaceExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-race" label="US Core Race Extension" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="ombCategory">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
        <ns4:element name="detailed">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Extension"/>
        </ns4:element>
        <ns4:element name="text" elementType="QUICK.Extension"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="USCoreSmokingStatusProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus" label="US Core Smoking Status Observation Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="System.String"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Timing"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="valueCodeableConcept" elementType="System.Concept"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="UnitsOfTime" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="UsageContext" identifier="http://hl7.org/fhir/StructureDefinition/UsageContext" label="UsageContext" retrievable="false" primaryCodePath="code" baseType="QUICK.Element">
        <ns4:element name="code" elementType="System.Code"/>
        <ns4:element name="value">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                </ns4:choice>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
            </ns4:elementTypeSpecifier>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="Use" retrievable="false" baseType="System.String"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="_Not_Done_Extension" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement-notDone" label="QICore Not Done Extension" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="url" elementType="System.String"/>
        <ns4:element name="value" elementType="System.Boolean"/>
        <ns4:element name="valueBoolean" elementType="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="abatement" identifier="http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement" label="abatement" retrievable="false">
        <ns4:baseTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Boolean"/>
        </ns4:baseTypeSpecifier>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="approachBodyStructure" identifier="http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure" label="approachBodyStructure" retrievable="false" baseType="QUICK.Reference"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="birthPlace" identifier="http://hl7.org/fhir/StructureDefinition/patient-birthPlace" label="Birth Place" retrievable="false" baseType="QUICK.Address"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="birthTime" identifier="http://hl7.org/fhir/StructureDefinition/patient-birthTime" label="Birth Time" retrievable="false" baseType="System.DateTime"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="bodyPosition" identifier="http://hl7.org/fhir/StructureDefinition/observation-bodyPosition" label="bodyPosition" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="cadavericDonor" identifier="http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor" label="cadavericDonor" retrievable="false" baseType="System.Boolean"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="delta" identifier="http://hl7.org/fhir/StructureDefinition/observation-delta" label="delta" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="disability" identifier="http://hl7.org/fhir/StructureDefinition/patient-disability" label="disability" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="dueTo" identifier="http://hl7.org/fhir/StructureDefinition/condition-dueTo" label="dueTo" retrievable="false">
        <ns4:baseTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
        </ns4:baseTypeSpecifier>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="duration" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration" label="duration" retrievable="false" baseType="System.Quantity"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="incisionDateTime" identifier="http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime" label="incisionDateTime" retrievable="false" baseType="System.DateTime"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="locationPerformed" identifier="http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed" label="locationPerformed" retrievable="false" baseType="QUICK.Reference"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="nationality" identifier="http://hl7.org/fhir/StructureDefinition/patient-nationality" label="nationality" retrievable="false" baseType="QUICK.Extension">
        <ns4:element name="code" elementType="QUICK.Extension"/>
        <ns4:element name="period" elementType="QUICK.Extension"/>
        <ns4:element name="url" elementType="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-bmi" identifier="http://hl7.org/fhir/StructureDefinition/bmi" label="Observation Body Mass Index Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-bodyheight" identifier="http://hl7.org/fhir/StructureDefinition/bodyheight" label="Observation Body Height Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-bodytemp" identifier="http://hl7.org/fhir/StructureDefinition/bodytemp" label="Observation Body Temperature Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-bodyweight" identifier="http://hl7.org/fhir/StructureDefinition/bodyweight" label="Observation Body Weight Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-bp" identifier="http://hl7.org/fhir/StructureDefinition/bp" label="Observation Blood Pressure Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-headcircum" identifier="http://hl7.org/fhir/StructureDefinition/headcircum" label="Observation Head Circumference Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-heartrate" identifier="http://hl7.org/fhir/StructureDefinition/heartrate" label="Observation Heart Rate Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-oxygensat" identifier="http://hl7.org/fhir/StructureDefinition/oxygensat" label="Observation Oxygen Saturation Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-resprate" identifier="http://hl7.org/fhir/StructureDefinition/resprate" label="Observation Respiratory Rate Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="value" elementType="System.Quantity"/>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="observation-vitalspanel" identifier="http://hl7.org/fhir/StructureDefinition/vitalspanel" label="Observation Vital Signs Panel Profile" retrievable="true" primaryCodePath="code" baseType="QUICK.DomainResource">
        <ns4:element name="identifier">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Identifier"/>
        </ns4:element>
        <ns4:element name="basedOn">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="partOf">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="status" elementType="QUICK.Status"/>
        <ns4:element name="category">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="VSCat" elementType="System.Concept"/>
        <ns4:element name="code" elementType="System.Concept"/>
        <ns4:element name="subject" elementType="QUICK.Reference"/>
        <ns4:element name="focus">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="encounter" elementType="QUICK.Reference"/>
        <ns4:element name="effective">
            <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:IntervalTypeSpecifier">
                    <ns4:pointTypeSpecifier xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                </ns4:choice>
            </ns4:elementTypeSpecifier>
        </ns4:element>
        <ns4:element name="issued" elementType="System.DateTime"/>
        <ns4:element name="performer">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="dataAbsentReason" elementType="System.Concept"/>
        <ns4:element name="interpretation">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="System.Concept"/>
        </ns4:element>
        <ns4:element name="note">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Annotation"/>
        </ns4:element>
        <ns4:element name="bodySite" elementType="System.Concept"/>
        <ns4:element name="method" elementType="System.Concept"/>
        <ns4:element name="specimen" elementType="QUICK.Reference"/>
        <ns4:element name="device" elementType="QUICK.Reference"/>
        <ns4:element name="referenceRange">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.ReferenceRange"/>
        </ns4:element>
        <ns4:element name="hasMember">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="derivedFrom">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Reference"/>
        </ns4:element>
        <ns4:element name="component">
            <ns4:elementTypeSpecifier xsi:type="ns4:ListTypeSpecifier" elementType="QUICK.Observation.Component"/>
        </ns4:element>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="occurredFollowing" identifier="http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing" label="occurredFollowing" retrievable="false">
        <ns4:baseTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Concept"/>
            <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QUICK" name="Reference"/>
        </ns4:baseTypeSpecifier>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="preferred" identifier="http://hl7.org/fhir/StructureDefinition/iso21090-preferred" label="preferred" retrievable="false" baseType="System.Boolean"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="reasonCancelled" identifier="http://hl7.org/fhir/StructureDefinition/encounter-reasonCancelled" label="reasonCancelled" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="reasonRefuted" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted" label="reasonRefuted" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="reasonRejected" identifier="http://hl7.org/fhir/StructureDefinition/goal-reasonRejected" label="reason rejected" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="religion" identifier="http://hl7.org/fhir/StructureDefinition/patient-religion" label="religion" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="resolutionAge" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge" label="resolutionAge" retrievable="false" baseType="System.Quantity"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="sequenceNumber" identifier="http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber" label="sequenceNumber" retrievable="false" baseType="System.Integer"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="severity" identifier="http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity" label="severity" retrievable="false" baseType="System.Concept"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" namespace="QUICK" name="statusReason" identifier="http://hl7.org/fhir/StructureDefinition/request-statusReason" label="Reason for current status" retrievable="false" baseType="System.Concept"/>
</ns4:modelInfo>
''';