const qicoremodelinfo400 = r'''<?xml version="1.0" encoding="UTF-8"?>
<modelInfo xmlns="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="QICore" version="4.0.0" url="http://hl7.org/fhir/us/qicore" targetUrl="http://hl7.org/fhir" targetQualifier="qicore" patientClassName="Patient" patientBirthDatePropertyName="birthDate">
   <requiredModelInfo name="System" version="1.0.0"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Address" identifier="http://hl7.org/fhir/StructureDefinition/Address" label="Address" retrievable="false">
      <element name="use" elementType="QICore.AddressUse" target="%value.value"/>
      <element name="type" elementType="QICore.AddressType" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="line" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="city" elementType="System.String" target="%value.value"/>
      <element name="district" elementType="System.String" target="%value.value"/>
      <element name="state" elementType="System.String" target="%value.value"/>
      <element name="postalCode" elementType="System.String" target="%value.value"/>
      <element name="country" elementType="System.String" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AddressType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AddressUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AdministrativeGender" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="AdverseEvent" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-adverseevent" label="AdverseEvent" retrievable="true" primaryCodePath="type">
      <element name="identifier" elementType="QICore.Identifier"/>
      <element name="actuality" elementType="QICore.AdverseEventActuality" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="event" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="detected" elementType="System.DateTime" target="%value.value"/>
      <element name="recordedDate" elementType="System.DateTime" target="%value.value"/>
      <element name="resultingCondition">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="seriousness" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="severity" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="outcome" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="contributor">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="suspectEntity">
         <elementTypeSpecifier elementType="QICore.AdverseEvent.SuspectEntity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subjectMedicalHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="referenceDocument">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="study">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="recorder"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="recorder"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="AdverseEvent.SuspectEntity" retrievable="false">
      <element name="instance" elementType="QICore.Reference"/>
      <element name="causality" elementType="QICore.AdverseEvent.SuspectEntity.Causality"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="AdverseEvent.SuspectEntity.Causality" retrievable="false">
      <element name="assessment" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="productRelatedness" elementType="System.String" target="%value.value"/>
      <element name="author" elementType="QICore.Reference"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AdverseEventActuality" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="AllergyIntolerance" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-allergyintolerance" label="AllergyIntolerance" retrievable="true" primaryCodePath="code">
      <element name="resolutionAge" elementType="QICore.resolutionAge" target="FHIRHelpers.ToQuantity(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge'].value)"/>
      <element name="reasonRefuted" elementType="QICore.reasonRefuted" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted'].value)"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="clinicalStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="verificationStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="type" elementType="QICore.AllergyIntoleranceType" target="%value.value"/>
      <element name="category" target="%value.value">
         <elementTypeSpecifier elementType="QICore.AllergyIntoleranceCategory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="criticality" elementType="QICore.AllergyIntoleranceCriticality" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="onset" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="recordedDate" elementType="System.DateTime" target="%value.value"/>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="asserter" elementType="QICore.Reference"/>
      <element name="lastOccurrence" elementType="System.DateTime" target="%value.value"/>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reaction">
         <elementTypeSpecifier elementType="QICore.AllergyIntolerance.Reaction" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="recorder"/>
      <contextRelationship context="Practitioner" relatedKeyElement="asserter"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="recorder"/>
      <contextRelationship context="Patient" relatedKeyElement="asserter"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="asserter"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="AllergyIntolerance.Reaction" retrievable="false">
      <element name="substance" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="manifestation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="onset" elementType="System.DateTime" target="%value.value"/>
      <element name="severity" elementType="QICore.AllergyIntoleranceSeverity" target="%value.value"/>
      <element name="exposureRoute" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reaction-duration" elementType="QICore.duration" target="FHIRHelpers.ToQuantity(%parent.reaction.extension[url='http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration'].value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AllergyIntoleranceCategory" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AllergyIntoleranceCriticality" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AllergyIntoleranceSeverity" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="AllergyIntoleranceType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Annotation" identifier="http://hl7.org/fhir/StructureDefinition/Annotation" label="Annotation" retrievable="false">
      <element name="author" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="time" elementType="System.DateTime" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Attachment" identifier="http://hl7.org/fhir/StructureDefinition/Attachment" label="Attachment" retrievable="false">
      <element name="contentType" elementType="QICore.MimeType" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="size" elementType="System.Integer" target="%value.value"/>
      <element name="hash" elementType="System.String" target="%value.value"/>
      <element name="title" elementType="System.String" target="%value.value"/>
      <element name="creation" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="BackboneElement" identifier="http://hl7.org/fhir/StructureDefinition/BackboneElement" label="BackboneElement" retrievable="false">
      <element name="modifierExtension">
         <elementTypeSpecifier elementType="QICore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="BodyLengthUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="BodyStructure" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-bodystructure" label="BodyStructure" retrievable="true" primaryCodePath="location">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="morphology" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="locationQualifier" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="image">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patient" elementType="QICore.Reference"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="BodyTempUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="BodyWeightUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="CarePlan" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careplan" label="CarePlan" retrievable="true" primaryCodePath="category">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="replaces">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="intent" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="AssessPlan" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="title" elementType="System.String" target="%value.value"/>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="created" elementType="System.DateTime" target="%value.value"/>
      <element name="author" elementType="QICore.Reference"/>
      <element name="contributor">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="careTeam">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="addresses">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="goal">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="activity">
         <elementTypeSpecifier elementType="QICore.CarePlan.Activity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="performer"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="performer"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="performer"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="CarePlan.Activity" retrievable="false">
      <element name="outcomeCodeableConcept" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="progress">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reference" elementType="QICore.Reference"/>
      <element name="detail" elementType="QICore.CarePlan.Activity.Detail"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="CarePlan.Activity.Detail" retrievable="false">
      <element name="kind" elementType="QICore.CarePlanActivityKind" target="%value.value"/>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="goal">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.CarePlanActivityStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="scheduled" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="product" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="dailyAmount" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="description" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CarePlanActivityKind" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CarePlanActivityStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="CareTeam" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-careteam" label="CareTeam" retrievable="true" primaryCodePath="category">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="participant">
         <elementTypeSpecifier elementType="QICore.CareTeam.Participant" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="managingOrganization">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="member"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="member"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="member"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="CareTeam.Participant" retrievable="false">
      <element name="role" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="member" elementType="QICore.Reference"/>
      <element name="onBehalfOf" elementType="QICore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Claim" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-claim" label="Claim" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ClaimStatus" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="use" elementType="QICore.Use" target="%value.value"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="billablePeriod" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="created" elementType="System.DateTime" target="%value.value"/>
      <element name="enterer" elementType="QICore.Reference"/>
      <element name="insurer" elementType="QICore.Reference"/>
      <element name="provider" elementType="QICore.Reference"/>
      <element name="priority" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="fundsReserve" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="related">
         <elementTypeSpecifier elementType="QICore.Claim.Related" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="prescription" elementType="QICore.Reference"/>
      <element name="originalPrescription" elementType="QICore.Reference"/>
      <element name="payee" elementType="QICore.Claim.Payee"/>
      <element name="referral" elementType="QICore.Reference"/>
      <element name="facility" elementType="QICore.Reference"/>
      <element name="careTeam">
         <elementTypeSpecifier elementType="QICore.Claim.CareTeam" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Claim.SupportingInfo" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="diagnosis">
         <elementTypeSpecifier elementType="QICore.Claim.Diagnosis" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="procedure">
         <elementTypeSpecifier elementType="QICore.Claim.Procedure" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Claim.Insurance" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="accident" elementType="QICore.Claim.Accident"/>
      <element name="item">
         <elementTypeSpecifier elementType="QICore.Claim.Item" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="total" elementType="System.Decimal" target="%value.value"/>
      <contextRelationship context="Practitioner" relatedKeyElement="enterer"/>
      <contextRelationship context="Practitioner" relatedKeyElement="provider"/>
      <contextRelationship context="Practitioner" relatedKeyElement="party"/>
      <contextRelationship context="Practitioner" relatedKeyElement="provider"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="party"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="udi"/>
      <contextRelationship context="Device" relatedKeyElement="udi"/>
      <contextRelationship context="Device" relatedKeyElement="udi"/>
      <contextRelationship context="Device" relatedKeyElement="udi"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="party"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Accident" retrievable="false">
      <element name="date" elementType="System.Date" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.CareTeam" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="provider" elementType="QICore.Reference"/>
      <element name="responsible" elementType="System.Boolean" target="%value.value"/>
      <element name="role" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="qualification" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Diagnosis" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="diagnosis" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="onAdmission" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="packageCode" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Insurance" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="focal" elementType="System.Boolean" target="%value.value"/>
      <element name="identifier" elementType="QICore.Identifier"/>
      <element name="coverage" elementType="QICore.Reference"/>
      <element name="businessArrangement" elementType="System.String" target="%value.value"/>
      <element name="preAuthRef" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="claimResponse" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Item" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="careTeamSequence" target="%value.value">
         <elementTypeSpecifier elementType="System.Integer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="diagnosisSequence" target="%value.value">
         <elementTypeSpecifier elementType="System.Integer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="procedureSequence" target="%value.value">
         <elementTypeSpecifier elementType="System.Integer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="informationSequence" target="%value.value">
         <elementTypeSpecifier elementType="System.Integer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="revenue" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="productOrService" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="modifier" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="serviced" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="location" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="unitPrice" elementType="System.Decimal" target="%value.value"/>
      <element name="factor" elementType="System.Decimal" target="%value.value"/>
      <element name="net" elementType="System.Decimal" target="%value.value"/>
      <element name="udi">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subSite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="detail">
         <elementTypeSpecifier elementType="QICore.Claim.Item.Detail" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Item.Detail" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="revenue" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="productOrService" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="modifier" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="unitPrice" elementType="System.Decimal" target="%value.value"/>
      <element name="factor" elementType="System.Decimal" target="%value.value"/>
      <element name="net" elementType="System.Decimal" target="%value.value"/>
      <element name="udi">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subDetail">
         <elementTypeSpecifier elementType="QICore.Claim.Item.Detail.SubDetail" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Item.Detail.SubDetail" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="revenue" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="productOrService" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="modifier" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="unitPrice" elementType="System.Decimal" target="%value.value"/>
      <element name="factor" elementType="System.Decimal" target="%value.value"/>
      <element name="net" elementType="System.Decimal" target="%value.value"/>
      <element name="udi">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Payee" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="party" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Procedure" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="procedure" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="udi">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.Related" retrievable="false">
      <element name="claim" elementType="QICore.Reference"/>
      <element name="relationship" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reference" elementType="QICore.Identifier"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Claim.SupportingInfo" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="timing" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="reason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ClaimStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Communication" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communication" label="Communication" retrievable="true" primaryCodePath="reasonCode">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="inResponseTo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.CommunicationStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.CommunicationPriority" target="%value.value"/>
      <element name="medium" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="topic" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="about">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="sent" elementType="System.DateTime" target="%value.value"/>
      <element name="received" elementType="System.DateTime" target="%value.value"/>
      <element name="recipient">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="sender" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="payload">
         <elementTypeSpecifier elementType="QICore.Communication.Payload" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="sender"/>
      <contextRelationship context="Practitioner" relatedKeyElement="recipient"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="sender"/>
      <contextRelationship context="Patient" relatedKeyElement="recipient"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="sender"/>
      <contextRelationship context="Device" relatedKeyElement="recipient"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="sender"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="recipient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Communication.Payload" retrievable="false">
      <element name="content" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="CommunicationNotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationnotdone" label="CommunicationNotDone" target="Communication" retrievable="true" primaryCodePath="reasonCode">
      <element name="recorded" elementType="QICore.NotDoneRecorded" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"/>
      <element name="notDone" elementType="System.Boolean" target="%parent.modifierExtension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone'].value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="inResponseTo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.CommunicationStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.CommunicationPriority" target="%value.value"/>
      <element name="medium" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="topic" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="about">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="sent" elementType="System.DateTime" target="%value.value"/>
      <element name="received" elementType="System.DateTime" target="%value.value"/>
      <element name="recipient">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="sender" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="payload">
         <elementTypeSpecifier elementType="QICore.Communication.Payload" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CommunicationPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="CommunicationRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-communicationrequest" label="CommunicationRequest" retrievable="true" primaryCodePath="category">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="replaces">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.CommunicationRequestStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.CommunicationPriority" target="%value.value"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="medium" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="about">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="payload">
         <elementTypeSpecifier elementType="QICore.CommunicationRequest.Payload" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="recipient">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="sender" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="sender"/>
      <contextRelationship context="Practitioner" relatedKeyElement="recipient"/>
      <contextRelationship context="Practitioner" relatedKeyElement="requester"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="sender"/>
      <contextRelationship context="Patient" relatedKeyElement="recipient"/>
      <contextRelationship context="Patient" relatedKeyElement="requester"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="sender"/>
      <contextRelationship context="Device" relatedKeyElement="recipient"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="sender"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="recipient"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="requester"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="CommunicationRequest.Payload" retrievable="false">
      <element name="content" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CommunicationRequestStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CommunicationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Condition" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-condition" label="Condition" retrievable="true" primaryCodePath="code">
      <element name="dueTo" target="FHIRHelpers.ToValue(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/condition-dueTo'].value)">
         <elementTypeSpecifier elementType="QICore.dueTo" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="occurredFollowing" target="FHIRHelpers.ToValue(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing'].value)">
         <elementTypeSpecifier elementType="QICore.occurredFollowing" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="clinicalStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="verificationStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="severity" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="onset" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="abatement" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="recordedDate" elementType="System.DateTime" target="%value.value"/>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="asserter" elementType="QICore.Reference"/>
      <element name="stage">
         <elementTypeSpecifier elementType="QICore.Condition.Stage" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="evidence">
         <elementTypeSpecifier elementType="QICore.Condition.Evidence" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="asserter"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="asserter"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="asserter"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Condition.Evidence" retrievable="false">
      <element name="code" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="detail">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Condition.Stage" retrievable="false">
      <element name="summary" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="assessment">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="ContactDetail" identifier="http://hl7.org/fhir/StructureDefinition/ContactDetail" label="ContactDetail" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="ContactPoint" identifier="http://hl7.org/fhir/StructureDefinition/ContactPoint" label="ContactPoint" retrievable="false">
      <element name="system" elementType="QICore.ContactPointSystem" target="%value.value"/>
      <element name="value" elementType="System.String" target="%value.value"/>
      <element name="use" elementType="QICore.ContactPointUse" target="%value.value"/>
      <element name="rank" elementType="System.Integer" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ContactPointSystem" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ContactPointUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Contributor" identifier="http://hl7.org/fhir/StructureDefinition/Contributor" label="Contributor" retrievable="false">
      <element name="type" elementType="QICore.ContributorType" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.ContactDetail" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ContributorType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Coverage" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-coverage" label="Coverage" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.CoverageStatus" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="policyHolder" elementType="QICore.Reference"/>
      <element name="subscriber" elementType="QICore.Reference"/>
      <element name="subscriberId" elementType="System.String" target="%value.value"/>
      <element name="beneficiary" elementType="QICore.Reference"/>
      <element name="dependent" elementType="System.String" target="%value.value"/>
      <element name="relationship" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="payor">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="class">
         <elementTypeSpecifier elementType="QICore.Coverage.Class" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="order" elementType="System.Integer" target="%value.value"/>
      <element name="network" elementType="System.String" target="%value.value"/>
      <element name="costToBeneficiary">
         <elementTypeSpecifier elementType="QICore.Coverage.CostToBeneficiary" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subrogation" elementType="System.Boolean" target="%value.value"/>
      <element name="contract">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="policyHolder"/>
      <contextRelationship context="Patient" relatedKeyElement="subscriber"/>
      <contextRelationship context="Patient" relatedKeyElement="beneficiary"/>
      <contextRelationship context="Patient" relatedKeyElement="payor"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="policyHolder"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="subscriber"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="payor"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Coverage.Class" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" elementType="System.String" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Coverage.CostToBeneficiary" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="exception">
         <elementTypeSpecifier elementType="QICore.Coverage.CostToBeneficiary.Exception" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Coverage.CostToBeneficiary.Exception" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="CoverageStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="DataRequirement" identifier="http://hl7.org/fhir/StructureDefinition/DataRequirement" label="DataRequirement" retrievable="false">
      <element name="type" elementType="QICore.FHIRAllTypes" target="%value.value"/>
      <element name="profile" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="mustSupport" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="codeFilter">
         <elementTypeSpecifier elementType="QICore.DataRequirement.CodeFilter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dateFilter">
         <elementTypeSpecifier elementType="QICore.DataRequirement.DateFilter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="limit" elementType="System.Integer" target="%value.value"/>
      <element name="sort">
         <elementTypeSpecifier elementType="QICore.DataRequirement.Sort" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="DataRequirement.CodeFilter" retrievable="false">
      <element name="path" elementType="System.String" target="%value.value"/>
      <element name="searchParam" elementType="System.String" target="%value.value"/>
      <element name="valueSet" elementType="System.String" target="%value.value"/>
      <element name="code" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="DataRequirement.DateFilter" retrievable="false">
      <element name="path" elementType="System.String" target="%value.value"/>
      <element name="searchParam" elementType="System.String" target="%value.value"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="DataRequirement.Sort" retrievable="false">
      <element name="path" elementType="System.String" target="%value.value"/>
      <element name="direction" elementType="QICore.SortDirection" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="DayOfWeek" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="DaysOfWeek" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Device" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-device" label="Device" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="definition" elementType="QICore.Reference"/>
      <element name="udiCarrier">
         <elementTypeSpecifier elementType="QICore.Device.UdiCarrier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.FHIRDeviceStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="distinctIdentifier" elementType="System.String" target="%value.value"/>
      <element name="manufacturer" elementType="System.String" target="%value.value"/>
      <element name="manufactureDate" elementType="System.DateTime" target="%value.value"/>
      <element name="expirationDate" elementType="System.DateTime" target="%value.value"/>
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="serialNumber" elementType="System.String" target="%value.value"/>
      <element name="deviceName">
         <elementTypeSpecifier elementType="QICore.Device.DeviceName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="modelNumber" elementType="System.String" target="%value.value"/>
      <element name="partNumber" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specialization">
         <elementTypeSpecifier elementType="QICore.Device.Specialization" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="version">
         <elementTypeSpecifier elementType="QICore.Device.Version" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="property">
         <elementTypeSpecifier elementType="QICore.Device.Property" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="owner" elementType="QICore.Reference"/>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="safety" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="parent" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Device.DeviceName" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="QICore.DeviceNameType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Device.Property" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="valueQuantity" target="FHIRHelpers.ToQuantity(%value)">
         <elementTypeSpecifier elementType="System.Quantity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="valueCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Device.Specialization" retrievable="false">
      <element name="systemType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="version" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Device.UdiCarrier" retrievable="false">
      <element name="deviceIdentifier" elementType="System.String" target="%value.value"/>
      <element name="issuer" elementType="System.String" target="%value.value"/>
      <element name="jurisdiction" elementType="System.String" target="%value.value"/>
      <element name="carrierAIDC" elementType="System.String" target="%value.value"/>
      <element name="carrierHRF" elementType="System.String" target="%value.value"/>
      <element name="entryType" elementType="QICore.UDIEntryType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Device.Version" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="component" elementType="QICore.Identifier"/>
      <element name="value" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="DeviceNameType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="DeviceNotRequested" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicenotrequested" label="DeviceNotRequested" target="DeviceRequest" retrievable="true" primaryCodePath="code">
      <element name="doNotPerformReason" elementType="QICore.DoNotPerformReason" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason'].value)"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%parent.modifierExtension[url='http://hl7.org/fhir/StructureDefinition/request-doNotPerform'].value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priorRequest">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.DeviceRequestStatus" target="%value.value"/>
      <element name="intent" elementType="QICore.RequestIntent" target="%value.value"/>
      <element name="priority" elementType="QICore.RequestPriority" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doNotPerformValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="parameter">
         <elementTypeSpecifier elementType="QICore.DeviceRequest.Parameter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="performer" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="relevantHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="DeviceRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-devicerequest" label="DeviceRequest" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priorRequest">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.DeviceRequestStatus" target="%value.value"/>
      <element name="intent" elementType="QICore.RequestIntent" target="%value.value"/>
      <element name="priority" elementType="QICore.RequestPriority" target="%value.value"/>
      <element name="code" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="parameter">
         <elementTypeSpecifier elementType="QICore.DeviceRequest.Parameter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="performer" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="relevantHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="requester"/>
      <contextRelationship context="Practitioner" relatedKeyElement="performer"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="performer"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="code as Reference)"/>
      <contextRelationship context="Device" relatedKeyElement="subject"/>
      <contextRelationship context="Device" relatedKeyElement="requester"/>
      <contextRelationship context="Device" relatedKeyElement="performer"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="DeviceRequest.Parameter" retrievable="false">
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="DeviceRequestStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="DeviceUseStatement" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-deviceusestatement" label="DeviceUseStatement" retrievable="true" primaryCodePath="device.code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.DeviceUseStatementStatus" target="%value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="timing" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recordedOn" elementType="System.DateTime" target="%value.value"/>
      <element name="source" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Device" relatedKeyElement="device"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="DeviceUseStatementStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="Diagnosis_Present_On_Admission_Extension" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-diagnosisPresentOnAdmission" label="Diagnosis_Present_On_Admission_Extension" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="DiagnosticReport.Media" retrievable="false">
      <element name="comment" elementType="System.String" target="%value.value"/>
      <element name="link" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="DiagnosticReportLab" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-lab" label="DiagnosticReportLab" target="DiagnosticReport" retrievable="true" primaryCodePath="code">
      <element name="locationPerformed" elementType="QICore.Reference" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed']"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="LaboratorySlice" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="resultsInterpreter">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="result">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="imagingStudy">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="media">
         <elementTypeSpecifier elementType="QICore.DiagnosticReport.Media" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="conclusion" elementType="System.String" target="%value.value"/>
      <element name="conclusionCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="presentedForm">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="DiagnosticReportNote" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-diagnosticreport-note" label="DiagnosticReportNote" target="DiagnosticReport" retrievable="true" primaryCodePath="code">
      <element name="locationPerformed" elementType="QICore.Reference" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed']"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="resultsInterpreter">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="result">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="imagingStudy">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="media">
         <elementTypeSpecifier elementType="QICore.DiagnosticReport.Media" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="conclusion" elementType="System.String" target="%value.value"/>
      <element name="conclusionCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="presentedForm">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="DoNotPerformReason" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason" label="DoNotPerformReason" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Resource" namespace="QICore" name="DomainResource" identifier="http://hl7.org/fhir/StructureDefinition/DomainResource" label="DomainResource" retrievable="true">
      <element name="text" elementType="QICore.Narrative"/>
      <element name="contained">
         <elementTypeSpecifier elementType="QICore.Resource" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="extension">
         <elementTypeSpecifier elementType="QICore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="modifierExtension">
         <elementTypeSpecifier elementType="QICore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Dosage" identifier="http://hl7.org/fhir/StructureDefinition/Dosage" label="Dosage" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="additionalInstruction" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patientInstruction" elementType="System.String" target="%value.value"/>
      <element name="timing" elementType="QICore.Timing"/>
      <element name="asNeeded" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="site" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="route" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doseAndRate">
         <elementTypeSpecifier elementType="QICore.Dosage.DoseAndRate" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="maxDosePerPeriod" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
      <element name="maxDosePerAdministration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="maxDosePerLifetime" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Dosage.DoseAndRate" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="dose" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="rate" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.Any" namespace="QICore" name="Element" identifier="http://hl7.org/fhir/StructureDefinition/Element" label="Element" retrievable="false">
      <element name="id" elementType="System.String" target="%value.value"/>
      <element name="extension">
         <elementTypeSpecifier elementType="QICore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="EnableWhenBehavior" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Encounter" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter" label="Encounter" retrievable="true" primaryCodePath="type">
      <element name="statusReason" elementType="QICore.statusReason" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/request-statusReason'].value)"/>
      <element name="procedure" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure']">
         <elementTypeSpecifier elementType="QICore.EncounterProcedureExtension" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.EncounterStatus" target="%value.value"/>
      <element name="statusHistory">
         <elementTypeSpecifier elementType="QICore.Encounter.StatusHistory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="class" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="classHistory">
         <elementTypeSpecifier elementType="QICore.Encounter.ClassHistory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="serviceType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="priority" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="episodeOfCare">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="participant">
         <elementTypeSpecifier elementType="QICore.Encounter.Participant" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="appointment">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="length" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="diagnosis">
         <elementTypeSpecifier elementType="QICore.Encounter.Diagnosis" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="account">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hospitalization" elementType="QICore.Encounter.Hospitalization"/>
      <element name="location">
         <elementTypeSpecifier elementType="QICore.Encounter.Location" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="serviceProvider" elementType="QICore.Reference"/>
      <element name="partOf" elementType="QICore.Reference"/>
      <contextRelationship context="Practitioner" relatedKeyElement="where(resolve() is Practitioner)"/>
      <contextRelationship context="Practitioner" relatedKeyElement="individual"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="individual"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.ClassHistory" retrievable="false">
      <element name="class" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.Diagnosis" retrievable="false">
      <element name="condition" elementType="QICore.Reference"/>
      <element name="use" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="rank" elementType="System.Integer" target="%value.value"/>
      <element name="diagnosisPresentOnAdmission" elementType="QICore.Diagnosis_Present_On_Admission_Extension" target="FHIRHelpers.ToConcept(%parent.diagnosis.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-diagnosisPresentOnAdmission'].value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.Hospitalization" retrievable="false">
      <element name="preAdmissionIdentifier" elementType="QICore.Identifier"/>
      <element name="origin" elementType="QICore.Reference"/>
      <element name="admitSource" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reAdmission" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="dietPreference" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specialCourtesy" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specialArrangement" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="destination" elementType="QICore.Reference"/>
      <element name="dischargeDisposition" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.Location" retrievable="false">
      <element name="location" elementType="QICore.Reference"/>
      <element name="status" elementType="QICore.EncounterLocationStatus" target="%value.value"/>
      <element name="physicalType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.Participant" retrievable="false">
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="individual" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Encounter.StatusHistory" retrievable="false">
      <element name="status" elementType="QICore.EncounterStatus" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="EncounterLocationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Extension" namespace="QICore" name="EncounterProcedureExtension" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-encounter-procedure" label="EncounterProcedureExtension" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.extension[url='type'].value)"/>
      <element name="rank" elementType="System.Integer" target="%parent.extension[url='rank'].value.value"/>
      <element name="procedure" elementType="QICore.Reference" target="%parent.extension[url='procedure']"/>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="EncounterStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="EventTiming" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Expression" identifier="http://hl7.org/fhir/StructureDefinition/Expression" label="Expression" retrievable="false">
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
      <element name="expression" elementType="System.String" target="%value.value"/>
      <element name="reference" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Extension" identifier="http://hl7.org/fhir/StructureDefinition/Extension" label="Extension" retrievable="false">
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Annotation" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactPoint" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="HumanName" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Identifier" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Signature" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactDetail" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Contributor" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="DataRequirement" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Expression" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ParameterDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="RelatedArtifact" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="TriggerDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="UsageContext" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Dosage" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Meta" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="FHIRAllTypes" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="FHIRDeviceStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="FHIRSubstanceStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="FamilyHistoryStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="FamilyMemberHistory" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-familymemberhistory" label="FamilyMemberHistory" retrievable="true" primaryCodePath="relationship">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.FamilyHistoryStatus" target="%value.value"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="relationship" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="sex" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="born" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="age" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="estimatedAge" elementType="System.Boolean" target="%value.value"/>
      <element name="deceased" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="condition">
         <elementTypeSpecifier elementType="QICore.FamilyMemberHistory.Condition" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="FamilyMemberHistory.Condition" retrievable="false">
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="outcome" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="contributedToDeath" elementType="System.Boolean" target="%value.value"/>
      <element name="onset" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="condition-abatement" elementType="QICore.abatement" target="FHIRHelpers.ToValue(%parent.condition.extension[url='http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement'].value)"/>
      <element name="condition-severity" elementType="QICore.severity" target="FHIRHelpers.ToConcept(%parent.condition.extension[url='http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity'].value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Flag" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-flag" label="Flag" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.FlagStatus" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="author" elementType="QICore.Reference"/>
      <contextRelationship context="Practitioner" relatedKeyElement="author"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Device" relatedKeyElement="author"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="FlagStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Goal" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-goal" label="Goal" retrievable="true" primaryCodePath="category">
      <element name="reasonRejected" elementType="QICore.reasonRejected" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/goal-reasonRejected'].value)"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="lifecycleStatus" elementType="System.String" target="%value.value"/>
      <element name="achievementStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="description" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="start" elementType="System.Date" target="%value.value"/>
      <element name="target">
         <elementTypeSpecifier elementType="QICore.Goal.Target" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="statusDate" elementType="System.Date" target="%value.value"/>
      <element name="statusReason" elementType="System.String" target="%value.value"/>
      <element name="expressedBy" elementType="QICore.Reference"/>
      <element name="addresses">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Goal.Target" retrievable="false">
      <element name="measure" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="detail" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="due" elementType="System.Date" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="HumanName" identifier="http://hl7.org/fhir/StructureDefinition/HumanName" label="HumanName" retrievable="false">
      <element name="use" elementType="QICore.NameUse" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="family" elementType="System.String" target="%value.value"/>
      <element name="given" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="prefix" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="suffix" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Identifier" identifier="http://hl7.org/fhir/StructureDefinition/Identifier" label="Identifier" retrievable="false">
      <element name="use" elementType="QICore.IdentifierUse" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="system" elementType="System.String" target="%value.value"/>
      <element name="value" elementType="System.String" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="assigner" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="IdentifierUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ImagingStudy" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-imagingstudy" label="ImagingStudy" retrievable="true" primaryCodePath="procedureCode">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ImagingStudyStatus" target="%value.value"/>
      <element name="modality" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="started" elementType="System.DateTime" target="%value.value"/>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="referrer" elementType="QICore.Reference"/>
      <element name="interpreter">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="endpoint">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="numberOfSeries" elementType="System.Integer" target="%value.value"/>
      <element name="numberOfInstances" elementType="System.Integer" target="%value.value"/>
      <element name="procedureReference" elementType="QICore.Reference"/>
      <element name="procedureCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="series">
         <elementTypeSpecifier elementType="QICore.ImagingStudy.Series" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="ImagingStudy.Series" retrievable="false">
      <element name="uid" elementType="System.String" target="%value.value"/>
      <element name="number" elementType="System.Integer" target="%value.value"/>
      <element name="modality" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="numberOfInstances" elementType="System.Integer" target="%value.value"/>
      <element name="endpoint">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="laterality" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="specimen">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="started" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.ImagingStudy.Series.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instance">
         <elementTypeSpecifier elementType="QICore.ImagingStudy.Series.Instance" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="ImagingStudy.Series.Instance" retrievable="false">
      <element name="uid" elementType="System.String" target="%value.value"/>
      <element name="sopClass" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="number" elementType="System.Integer" target="%value.value"/>
      <element name="title" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="ImagingStudy.Series.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ImagingStudyStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Immunization" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunization" label="Immunization" retrievable="true" primaryCodePath="vaccineCode">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="vaccineCode" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recorded" elementType="System.DateTime" target="%value.value"/>
      <element name="primarySource" elementType="System.Boolean" target="%value.value"/>
      <element name="reportOrigin" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location" elementType="QICore.Reference"/>
      <element name="manufacturer" elementType="QICore.Reference"/>
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="expirationDate" elementType="System.Date" target="%value.value"/>
      <element name="site" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="route" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doseQuantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Immunization.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="isSubpotent" elementType="System.Boolean" target="%value.value"/>
      <element name="subpotentReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="education">
         <elementTypeSpecifier elementType="QICore.Immunization.Education" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programEligibility" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="fundingSource" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reaction">
         <elementTypeSpecifier elementType="QICore.Immunization.Reaction" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="protocolApplied">
         <elementTypeSpecifier elementType="QICore.Immunization.ProtocolApplied" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="actor"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Immunization.Education" retrievable="false">
      <element name="documentType" elementType="System.String" target="%value.value"/>
      <element name="reference" elementType="System.String" target="%value.value"/>
      <element name="publicationDate" elementType="System.DateTime" target="%value.value"/>
      <element name="presentationDate" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Immunization.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Immunization.ProtocolApplied" retrievable="false">
      <element name="series" elementType="System.String" target="%value.value"/>
      <element name="authority" elementType="QICore.Reference"/>
      <element name="targetDisease" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="doseNumber" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="seriesDoses" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Immunization.Reaction" retrievable="false">
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="detail" elementType="QICore.Reference"/>
      <element name="reported" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ImmunizationEvaluation" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationevaluation" label="ImmunizationEvaluation" retrievable="true" primaryCodePath="targetDisease">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ImmunizationEvaluationStatus" target="%value.value"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="authority" elementType="QICore.Reference"/>
      <element name="targetDisease" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="immunizationEvent" elementType="QICore.Reference"/>
      <element name="doseStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doseStatusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="series" elementType="System.String" target="%value.value"/>
      <element name="doseNumber" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="seriesDoses" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ImmunizationEvaluationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ImmunizationNotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationnotdone" label="ImmunizationNotDone" target="Immunization" retrievable="true" primaryCodePath="vaccineCode">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ImmunizationStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="vaccineCode" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recorded" elementType="System.DateTime" target="%value.value"/>
      <element name="primarySource" elementType="System.Boolean" target="%value.value"/>
      <element name="reportOrigin" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location" elementType="QICore.Reference"/>
      <element name="manufacturer" elementType="QICore.Reference"/>
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="expirationDate" elementType="System.Date" target="%value.value"/>
      <element name="site" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="route" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doseQuantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Immunization.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="isSubpotent" elementType="System.Boolean" target="%value.value"/>
      <element name="subpotentReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="education">
         <elementTypeSpecifier elementType="QICore.Immunization.Education" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programEligibility" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="fundingSource" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reaction">
         <elementTypeSpecifier elementType="QICore.Immunization.Reaction" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="protocolApplied">
         <elementTypeSpecifier elementType="QICore.Immunization.ProtocolApplied" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ImmunizationRecommendation" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-immunizationrec" label="ImmunizationRecommendation" retrievable="true" primaryCodePath="recommendation.vaccineCode">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="authority" elementType="QICore.Reference"/>
      <element name="recommendation">
         <elementTypeSpecifier elementType="QICore.ImmunizationRecommendation.Recommendation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="ImmunizationRecommendation.Recommendation" retrievable="false">
      <element name="vaccineCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="targetDisease" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="contraindicatedVaccineCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="forecastStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="forecastReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dateCriterion">
         <elementTypeSpecifier elementType="QICore.ImmunizationRecommendation.Recommendation.DateCriterion" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="series" elementType="System.String" target="%value.value"/>
      <element name="doseNumber" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="seriesDoses" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="supportingImmunization">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingPatientInformation">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="ImmunizationRecommendation.Recommendation.DateCriterion" retrievable="false">
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ImmunizationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Boolean" namespace="QICore" name="IsElective" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-isElective" label="IsElective" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="LinkType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Location" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-location" label="Location" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="operationalStatus" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="alias" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="mode" elementType="QICore.LocationMode" target="%value.value"/>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="QICore.Address"/>
      <element name="physicalType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="position" elementType="QICore.Location.Position"/>
      <element name="managingOrganization" elementType="QICore.Reference"/>
      <element name="partOf" elementType="QICore.Reference"/>
      <element name="hoursOfOperation">
         <elementTypeSpecifier elementType="QICore.Location.HoursOfOperation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availabilityExceptions" elementType="System.String" target="%value.value"/>
      <element name="endpoint">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Location.HoursOfOperation" retrievable="false">
      <element name="daysOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="QICore.DaysOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="allDay" elementType="System.Boolean" target="%value.value"/>
      <element name="openingTime" elementType="System.Time" target="%value.value"/>
      <element name="closingTime" elementType="System.Time" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Location.Position" retrievable="false">
      <element name="longitude" elementType="System.Decimal" target="%value.value"/>
      <element name="latitude" elementType="System.Decimal" target="%value.value"/>
      <element name="altitude" elementType="System.Decimal" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="LocationMode" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Medication" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medication" label="Medication" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="status" elementType="QICore.MedicationStatus" target="%value.value"/>
      <element name="manufacturer" elementType="QICore.Reference"/>
      <element name="form" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="amount" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
      <element name="ingredient">
         <elementTypeSpecifier elementType="QICore.Medication.Ingredient" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="batch" elementType="QICore.Medication.Batch"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Medication.Batch" retrievable="false">
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="expirationDate" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Medication.Ingredient" retrievable="false">
      <element name="item" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="isActive" elementType="System.Boolean" target="%value.value"/>
      <element name="strength" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="MedicationAdministration" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationadministration" label="MedicationAdministration" retrievable="true" primaryCodePath="medication">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiates" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.MedicationAdministrationStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="medication" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="context" elementType="QICore.Reference"/>
      <element name="supportingInformation">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.MedicationAdministration.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="request" elementType="QICore.Reference"/>
      <element name="device">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosage" elementType="QICore.MedicationAdministration.Dosage"/>
      <element name="eventHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="actor"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="actor"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Encounter" relatedKeyElement="context"/>
      <contextRelationship context="Device" relatedKeyElement="device"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="actor"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationAdministration.Dosage" retrievable="false">
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="site" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="route" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="dose" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="rate" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationAdministration.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="MedicationAdministrationNotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-mednotadministered" label="MedicationAdministrationNotDone" target="MedicationAdministration" retrievable="true" primaryCodePath="medication">
      <element name="recorded" elementType="QICore.NotDoneRecorded" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiates" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.MedicationAdministrationStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="medication" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="context" elementType="QICore.Reference"/>
      <element name="supportingInformation">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.MedicationAdministration.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="request" elementType="QICore.Reference"/>
      <element name="device">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosage" elementType="QICore.MedicationAdministration.Dosage"/>
      <element name="eventHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MedicationAdministrationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="MedicationDispense" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationdispense" label="MedicationDispense" retrievable="true" primaryCodePath="medication">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.MedicationDispenseStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="medication" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="context" elementType="QICore.Reference"/>
      <element name="supportingInformation">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.MedicationDispense.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="authorizingPrescription">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="daysSupply" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="whenPrepared" elementType="System.DateTime" target="%value.value"/>
      <element name="whenHandedOver" elementType="System.DateTime" target="%value.value"/>
      <element name="destination" elementType="QICore.Reference"/>
      <element name="receiver">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosageInstruction">
         <elementTypeSpecifier elementType="QICore.Dosage" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="substitution" elementType="QICore.MedicationDispense.Substitution"/>
      <element name="detectedIssue">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="eventHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="actor"/>
      <contextRelationship context="Practitioner" relatedKeyElement="receiver"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="receiver"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationDispense.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationDispense.Substitution" retrievable="false">
      <element name="wasSubstituted" elementType="System.Boolean" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="responsibleParty">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MedicationDispenseStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="MedicationRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationrequest" label="MedicationRequest" retrievable="true" primaryCodePath="medication">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="intent" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.MedicationRequestPriority" target="%value.value"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="reported" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="medication" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="supportingInformation">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performer" elementType="QICore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="QICore.Identifier"/>
      <element name="courseOfTherapyType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosageInstruction">
         <elementTypeSpecifier elementType="QICore.Dosage" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dispenseRequest" elementType="QICore.MedicationRequest.DispenseRequest"/>
      <element name="substitution" elementType="QICore.MedicationRequest.Substitution"/>
      <element name="priorPrescription" elementType="QICore.Reference"/>
      <element name="detectedIssue">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="eventHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="requester"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationRequest.DispenseRequest" retrievable="false">
      <element name="initialFill" elementType="QICore.MedicationRequest.DispenseRequest.InitialFill"/>
      <element name="dispenseInterval" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="validityPeriod" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="numberOfRepeatsAllowed" elementType="System.Integer" target="%value.value"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="expectedSupplyDuration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="performer" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationRequest.DispenseRequest.InitialFill" retrievable="false">
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="duration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="MedicationRequest.Substitution" retrievable="false">
      <element name="allowed" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="reason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MedicationRequestPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="MedicationStatement" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-medicationstatement" label="MedicationStatement" retrievable="true" primaryCodePath="medication">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.MedicationStatementStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="medication" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="context" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="dateAsserted" elementType="System.DateTime" target="%value.value"/>
      <element name="informationSource" elementType="QICore.Reference"/>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosage">
         <elementTypeSpecifier elementType="QICore.Dosage" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="informationSource"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="informationSource"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MedicationStatementStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MedicationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Meta" identifier="http://hl7.org/fhir/StructureDefinition/Meta" label="Meta" retrievable="false">
      <element name="versionId" elementType="System.String" target="%value.value"/>
      <element name="lastUpdated" elementType="System.DateTime" target="%value.value"/>
      <element name="source" elementType="System.String" target="%value.value"/>
      <element name="profile" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="security" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="tag" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="MimeType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="NameUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Narrative" identifier="http://hl7.org/fhir/StructureDefinition/Narrative" label="Narrative" retrievable="false">
      <element name="status" elementType="QICore.NarrativeStatus" target="%value.value"/>
      <element name="div" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="NarrativeStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Boolean" namespace="QICore" name="NotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone" label="NotDone" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="NotDoneReason" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDoneReason" label="NotDoneReason" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.DateTime" namespace="QICore" name="NotDoneRecorded" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded" label="NotDoneRecorded" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Observation" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observation" label="Observation" retrievable="true" primaryCodePath="code">
      <element name="bodyPosition" elementType="QICore.bodyPosition" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/observation-bodyPosition'].value)"/>
      <element name="delta" elementType="QICore.delta" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/observation-delta'].value)"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ObservationStatus" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="performer"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="performer"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="subject"/>
      <contextRelationship context="Device" relatedKeyElement="device"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="performer"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Observation.Component" retrievable="false">
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="referenceRange">
         <elementTypeSpecifier xsi:type="ListTypeSpecifier">
            <elementTypeSpecifier namespace="QICore" name="Observation.ReferenceRange" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Observation.Component" namespace="QICore" name="Observation.Component.Concentration" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Observation.Component" namespace="QICore" name="Observation.Component.DiastolicBP" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Observation.Component" namespace="QICore" name="Observation.Component.FlowRate" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Observation.Component" namespace="QICore" name="Observation.Component.SystolicBP" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Observation.ReferenceRange" retrievable="false">
      <element name="low" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="high" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="appliesTo" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="age" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="text" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ObservationNotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-observationnotdone" label="ObservationNotDone" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="notDoneReason" elementType="QICore.NotDoneReason" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDoneReason'].value)"/>
      <element name="notDone" elementType="System.Boolean" target="%parent.modifierExtension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-notDone'].value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ObservationStatus" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ObservationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Organization" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-organization" label="Organization" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="NPI" elementType="QICore.Identifier"/>
      <element name="CLIA" elementType="QICore.Identifier"/>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="alias" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address">
         <elementTypeSpecifier elementType="QICore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf" elementType="QICore.Reference"/>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.Organization.Contact" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="endpoint">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Organization.Contact" retrievable="false">
      <element name="purpose" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="name" elementType="QICore.HumanName"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="QICore.Address"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="ParameterDefinition" identifier="http://hl7.org/fhir/StructureDefinition/ParameterDefinition" label="ParameterDefinition" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="use" elementType="QICore.ParameterUse" target="%value.value"/>
      <element name="min" elementType="System.Integer" target="%value.value"/>
      <element name="max" elementType="System.String" target="%value.value"/>
      <element name="documentation" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="QICore.FHIRAllTypes" target="%value.value"/>
      <element name="profile" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ParameterUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Patient" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-patient" label="Patient" retrievable="true">
      <element name="race" elementType="QICore.USCoreRaceExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']"/>
      <element name="ethnicity" elementType="QICore.USCoreEthnicityExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']"/>
      <element name="birthsex" elementType="QICore.USCoreBirthSexExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'].value.value"/>
      <element name="religion" elementType="QICore.religion" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-religion'].value)"/>
      <element name="birthPlace" elementType="QICore.birthPlace" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-birthPlace']"/>
      <element name="disability" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-disability'].value)">
         <elementTypeSpecifier elementType="QICore.disability" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="nationality" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-nationality']">
         <elementTypeSpecifier elementType="QICore.nationality" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="cadavericDonor" elementType="QICore.cadavericDonor" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor'].value.value"/>
      <element name="birthTime" elementType="QICore.birthTime" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/patient-birthTime'].value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="name">
         <elementTypeSpecifier elementType="QICore.HumanName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.Patient.Telecom" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="gender" elementType="System.String" target="%value.value"/>
      <element name="birthDate" elementType="System.Date" target="%value.value"/>
      <element name="deceased" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="address">
         <elementTypeSpecifier elementType="QICore.Patient.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="maritalStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="multipleBirth" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="photo">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.Patient.Contact" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="communication">
         <elementTypeSpecifier elementType="QICore.Patient.Communication" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="generalPractitioner">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="managingOrganization" elementType="QICore.Reference"/>
      <element name="link">
         <elementTypeSpecifier elementType="QICore.Patient.Link" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="generalPractitioner"/>
      <contextRelationship context="Patient" relatedKeyElement="other"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="other"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="Patient.Address" retrievable="false">
      <baseTypeSpecifier namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
      <element name="address-preferred" elementType="QICore.preferred" target="%parent.address.extension[url='http://hl7.org/fhir/StructureDefinition/iso21090-preferred'].value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Patient.Communication" retrievable="false">
      <element name="language" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="preferred" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Patient.Contact" retrievable="false">
      <element name="relationship" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="QICore.HumanName"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="QICore.Address"/>
      <element name="gender" elementType="QICore.AdministrativeGender" target="%value.value"/>
      <element name="organization" elementType="QICore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Patient.Link" retrievable="false">
      <element name="other" elementType="QICore.Reference"/>
      <element name="type" elementType="QICore.LinkType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="Patient.Telecom" retrievable="false">
      <baseTypeSpecifier namespace="QICore" name="ContactPoint" xsi:type="NamedTypeSpecifier"/>
      <element name="telecom-preferred" elementType="QICore.preferred" target="%parent.telecom.extension[url='http://hl7.org/fhir/StructureDefinition/iso21090-preferred'].value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Practitioner" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitioner" label="Practitioner" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="NPI" elementType="QICore.Identifier"/>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="name" elementType="QICore.HumanName"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address">
         <elementTypeSpecifier elementType="QICore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="gender" elementType="QICore.AdministrativeGender" target="%value.value"/>
      <element name="birthDate" elementType="System.Date" target="%value.value"/>
      <element name="photo">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="qualification">
         <elementTypeSpecifier elementType="QICore.Practitioner.Qualification" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="communication" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Practitioner.Qualification" retrievable="false">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issuer" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="PractitionerRole" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-practitionerrole" label="PractitionerRole" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="practitioner" elementType="QICore.Reference"/>
      <element name="organization" elementType="QICore.Reference"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specialty" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="healthcareService">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availableTime">
         <elementTypeSpecifier elementType="QICore.PractitionerRole.AvailableTime" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="notAvailable">
         <elementTypeSpecifier elementType="QICore.PractitionerRole.NotAvailable" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availabilityExceptions" elementType="System.String" target="%value.value"/>
      <element name="endpoint">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="practitioner"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="PractitionerRole.AvailableTime" retrievable="false">
      <element name="daysOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="QICore.DaysOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="allDay" elementType="System.Boolean" target="%value.value"/>
      <element name="availableStartTime" elementType="System.Time" target="%value.value"/>
      <element name="availableEndTime" elementType="System.Time" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="PractitionerRole.NotAvailable" retrievable="false">
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="during" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Procedure" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedure" label="Procedure" retrievable="true" primaryCodePath="code">
      <element name="approachBodyStructure" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']">
         <elementTypeSpecifier elementType="QICore.approachBodyStructure" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="incisionDateTime" elementType="QICore.incisionDateTime" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime'].value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="performed" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="asserter" elementType="QICore.Reference"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Procedure.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcome" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="report">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complication" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complicationDetail">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="followUp" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="focalDevice">
         <elementTypeSpecifier elementType="QICore.Procedure.FocalDevice" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="actor"/>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="actor"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="actor"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Procedure.FocalDevice" retrievable="false">
      <element name="action" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="manipulated" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Procedure.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="QICore.Reference"/>
      <element name="onBehalfOf" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ProcedureNotDone" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-procedurenotdone" label="ProcedureNotDone" target="Procedure" retrievable="true" primaryCodePath="code">
      <element name="recorded" elementType="QICore.NotDoneRecorded" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-recorded'].value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.ProcedureStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="performed" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="recorder" elementType="QICore.Reference"/>
      <element name="asserter" elementType="QICore.Reference"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Procedure.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcome" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="report">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complication" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complicationDetail">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="followUp" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="focalDevice">
         <elementTypeSpecifier elementType="QICore.Procedure.FocalDevice" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ProcedureStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="PublicationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="QuantityComparator" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Questionnaire" identifier="http://hl7.org/fhir/StructureDefinition/Questionnaire" label="Questionnaire" retrievable="true" primaryCodePath="name">
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="version" elementType="System.String" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="title" elementType="System.String" target="%value.value"/>
      <element name="derivedFrom" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.PublicationStatus" target="%value.value"/>
      <element name="experimental" elementType="System.Boolean" target="%value.value"/>
      <element name="subjectType" target="%value.value">
         <elementTypeSpecifier elementType="QICore.ResourceType" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="publisher" elementType="System.String" target="%value.value"/>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.ContactDetail" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="useContext">
         <elementTypeSpecifier elementType="QICore.UsageContext" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="jurisdiction" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="purpose" elementType="System.String" target="%value.value"/>
      <element name="copyright" elementType="System.String" target="%value.value"/>
      <element name="approvalDate" elementType="System.Date" target="%value.value"/>
      <element name="lastReviewDate" elementType="System.Date" target="%value.value"/>
      <element name="effectivePeriod" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="code" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="item">
         <elementTypeSpecifier elementType="QICore.Questionnaire.Item" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Questionnaire.Item" retrievable="false">
      <element name="linkId" elementType="System.String" target="%value.value"/>
      <element name="definition" elementType="System.String" target="%value.value"/>
      <element name="code" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="prefix" elementType="System.String" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="QICore.QuestionnaireItemType" target="%value.value"/>
      <element name="enableWhen">
         <elementTypeSpecifier elementType="QICore.Questionnaire.Item.EnableWhen" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="enableBehavior" elementType="QICore.EnableWhenBehavior" target="%value.value"/>
      <element name="required" elementType="System.Boolean" target="%value.value"/>
      <element name="repeats" elementType="System.Boolean" target="%value.value"/>
      <element name="readOnly" elementType="System.Boolean" target="%value.value"/>
      <element name="maxLength" elementType="System.Integer" target="%value.value"/>
      <element name="answerValueSet" elementType="System.String" target="%value.value"/>
      <element name="answerOption">
         <elementTypeSpecifier elementType="QICore.Questionnaire.Item.AnswerOption" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="initial">
         <elementTypeSpecifier elementType="QICore.Questionnaire.Item.Initial" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="item">
         <elementTypeSpecifier xsi:type="ListTypeSpecifier">
            <elementTypeSpecifier namespace="QICore" name="Questionnaire.Item" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Questionnaire.Item.AnswerOption" retrievable="false">
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="initialSelected" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Questionnaire.Item.EnableWhen" retrievable="false">
      <element name="question" elementType="System.String" target="%value.value"/>
      <element name="operator" elementType="QICore.QuestionnaireItemOperator" target="%value.value"/>
      <element name="answer" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Questionnaire.Item.Initial" retrievable="false">
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="QuestionnaireItemOperator" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="QuestionnaireItemType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="QuestionnaireResponse" identifier="http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" label="QuestionnaireResponse" retrievable="true">
      <element name="identifier" elementType="QICore.Identifier"/>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="questionnaire" elementType="System.String" target="%value.value"/>
      <element name="status" elementType="QICore.QuestionnaireResponseStatus" target="%value.value"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="authored" elementType="System.DateTime" target="%value.value"/>
      <element name="author" elementType="QICore.Reference"/>
      <element name="source" elementType="QICore.Reference"/>
      <element name="item">
         <elementTypeSpecifier elementType="QICore.QuestionnaireResponse.Item" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="author"/>
      <contextRelationship context="Practitioner" relatedKeyElement="source"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="author"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="author"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="author"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="source"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="QuestionnaireResponse.Item" retrievable="false">
      <element name="linkId" elementType="System.String" target="%value.value"/>
      <element name="definition" elementType="System.String" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="answer">
         <elementTypeSpecifier elementType="QICore.QuestionnaireResponse.Item.Answer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="item">
         <elementTypeSpecifier xsi:type="ListTypeSpecifier">
            <elementTypeSpecifier namespace="QICore" name="QuestionnaireResponse.Item" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="QuestionnaireResponse.Item.Answer" retrievable="false">
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="item">
         <elementTypeSpecifier xsi:type="ListTypeSpecifier">
            <elementTypeSpecifier namespace="QICore" name="QuestionnaireResponse.Item" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="QuestionnaireResponseStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Reference" identifier="http://hl7.org/fhir/StructureDefinition/Reference" label="Reference" retrievable="false">
      <element name="reference" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.String" target="%value.value"/>
      <element name="identifier" elementType="QICore.Identifier"/>
      <element name="display" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="RelatedArtifact" identifier="http://hl7.org/fhir/StructureDefinition/RelatedArtifact" label="RelatedArtifact" retrievable="false">
      <element name="type" elementType="QICore.RelatedArtifactType" target="%value.value"/>
      <element name="label" elementType="System.String" target="%value.value"/>
      <element name="display" elementType="System.String" target="%value.value"/>
      <element name="citation" elementType="System.String" target="%value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="document" elementType="QICore.Attachment"/>
      <element name="resource" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="RelatedArtifactType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="RelatedPerson" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-relatedperson" label="RelatedPerson" retrievable="true" primaryCodePath="relationship">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="relationship" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name">
         <elementTypeSpecifier elementType="QICore.HumanName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="gender" elementType="QICore.AdministrativeGender" target="%value.value"/>
      <element name="birthDate" elementType="System.Date" target="%value.value"/>
      <element name="address">
         <elementTypeSpecifier elementType="QICore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="photo">
         <elementTypeSpecifier elementType="QICore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="communication">
         <elementTypeSpecifier elementType="QICore.RelatedPerson.Communication" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="RelatedPerson.Communication" retrievable="false">
      <element name="language" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="preferred" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="RequestIntent" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="RequestPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Any" namespace="QICore" name="Resource" identifier="http://hl7.org/fhir/StructureDefinition/Resource" label="Resource" retrievable="true">
      <element name="id" elementType="System.String" target="%value.value"/>
      <element name="meta" elementType="QICore.Meta"/>
      <element name="implicitRules" elementType="System.String" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ResourceType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="SampledData" identifier="http://hl7.org/fhir/StructureDefinition/SampledData" label="SampledData" retrievable="false">
      <element name="origin" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="period" elementType="System.Decimal" target="%value.value"/>
      <element name="factor" elementType="System.Decimal" target="%value.value"/>
      <element name="lowerLimit" elementType="System.Decimal" target="%value.value"/>
      <element name="upperLimit" elementType="System.Decimal" target="%value.value"/>
      <element name="dimensions" elementType="System.Integer" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ServiceNotRequested" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicenotrequested" label="ServiceNotRequested" target="ServiceRequest" retrievable="true" primaryCodePath="type">
      <element name="approachBodyStructure" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']">
         <elementTypeSpecifier elementType="QICore.approachBodyStructure" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="appropriatenessScore" elementType="QICore.ServiceRequestAppropriatenessScore" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore']"/>
      <element name="reasonRefused" elementType="QICore.DoNotPerformReason" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-doNotPerformReason'].value)"/>
      <element name="isElective" elementType="QICore.IsElective" target="%value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="replaces">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="requisition" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.ServiceRequestStatus" target="%value.value"/>
      <element name="intent" elementType="QICore.ServiceRequestIntent" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.ServiceRequestPriority" target="%value.value"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="notDoneValueSet" elementType="QICore.reference" target="%parent.coding.extension[url='http://hl7.org/fhir/StructureDefinition/valueset-reference'].value.value"/>
      <element name="orderDetail" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="quantity" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="asNeeded" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="locationCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="locationReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patientInstruction" elementType="System.String" target="%value.value"/>
      <element name="relevantHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="ServiceRequest" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest" label="ServiceRequest" retrievable="true" primaryCodePath="code">
      <element name="statusReason" elementType="QICore.statusReason" target="FHIRHelpers.ToConcept(%parent.extension[url='http://hl7.org/fhir/StructureDefinition/request-statusReason'].value)"/>
      <element name="approachBodyStructure" target="%parent.extension[url='http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure']">
         <elementTypeSpecifier elementType="QICore.approachBodyStructure" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="appropriatenessScore" target="%parent.extension[url='http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore']"/>
      <element name="isElective" elementType="QICore.IsElective" target="%value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="replaces">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="requisition" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.ServiceRequestStatus" target="%value.value"/>
      <element name="intent" elementType="QICore.ServiceRequestIntent" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="QICore.ServiceRequestPriority" target="%value.value"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="orderDetail" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="quantity" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="asNeeded" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="locationCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="locationReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patientInstruction" elementType="System.String" target="%value.value"/>
      <element name="relevantHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="performer"/>
      <contextRelationship context="Practitioner" relatedKeyElement="requester"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Patient" relatedKeyElement="performer"/>
      <contextRelationship context="Encounter" relatedKeyElement="encounter"/>
      <contextRelationship context="Device" relatedKeyElement="performer"/>
      <contextRelationship context="Device" relatedKeyElement="requester"/>
      <contextRelationship context="RelatedPerson" relatedKeyElement="performer"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="ServiceRequestAppropriatenessScore" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-servicerequest-appropriatenessScore" label="RAND Appropriateness Score Extension" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ServiceRequestIntent" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ServiceRequestPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="ServiceRequestStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Signature" identifier="http://hl7.org/fhir/StructureDefinition/Signature" label="Signature" retrievable="false">
      <element name="type" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="when" elementType="System.DateTime" target="%value.value"/>
      <element name="who" elementType="QICore.Reference"/>
      <element name="onBehalfOf" elementType="QICore.Reference"/>
      <element name="targetFormat" elementType="QICore.MimeType" target="%value.value"/>
      <element name="sigFormat" elementType="QICore.MimeType" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="SortDirection" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Specimen" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-specimen" label="Specimen" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="accessionIdentifier" elementType="QICore.Identifier"/>
      <element name="status" elementType="QICore.SpecimenStatus" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="receivedTime" elementType="System.DateTime" target="%value.value"/>
      <element name="parent">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="request">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="collection" elementType="QICore.Specimen.Collection"/>
      <element name="processing">
         <elementTypeSpecifier elementType="QICore.Specimen.Processing" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="container">
         <elementTypeSpecifier elementType="QICore.Specimen.Container" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="condition" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Practitioner" relatedKeyElement="collector"/>
      <contextRelationship context="Patient" relatedKeyElement="subject"/>
      <contextRelationship context="Device" relatedKeyElement="subject"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Specimen.Collection" retrievable="false">
      <element name="collector" elementType="QICore.Reference"/>
      <element name="collected" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="duration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="fastingStatus" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Specimen.Container" retrievable="false">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="capacity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="specimenQuantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="additive" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="container-sequenceNumber" elementType="QICore.sequenceNumber" target="%parent.container.extension[url='http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber'].value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Specimen.Processing" retrievable="false">
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="procedure" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="additive">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="time" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="SpecimenStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="Status" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Substance" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-substance" label="Substance" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.FHIRSubstanceStatus" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="instance">
         <elementTypeSpecifier elementType="QICore.Substance.Instance" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="ingredient">
         <elementTypeSpecifier elementType="QICore.Substance.Ingredient" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Substance.Ingredient" retrievable="false">
      <element name="quantity" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
      <element name="substance" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Substance.Instance" retrievable="false">
      <element name="identifier" elementType="QICore.Identifier"/>
      <element name="expiry" elementType="System.DateTime" target="%value.value"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="Task" identifier="http://hl7.org/fhir/us/qicore/StructureDefinition/qicore-task" label="Task" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" elementType="System.String" target="%value.value"/>
      <element name="instantiatesUri" elementType="System.String" target="%value.value"/>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="QICore.Identifier"/>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.TaskStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="businessStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="intent" elementType="QICore.TaskIntent" target="%value.value"/>
      <element name="priority" elementType="QICore.TaskPriority" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="focus" elementType="QICore.Reference"/>
      <element name="for" elementType="QICore.Reference"/>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="executionPeriod" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="lastModified" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="QICore.Reference"/>
      <element name="performerType" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="owner" elementType="QICore.Reference"/>
      <element name="location" elementType="QICore.Reference"/>
      <element name="reasonCode" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reasonReference" elementType="QICore.Reference"/>
      <element name="insurance">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="relevantHistory">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="restriction" elementType="QICore.Task.Restriction"/>
      <element name="input">
         <elementTypeSpecifier elementType="QICore.Task.Input" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="output">
         <elementTypeSpecifier elementType="QICore.Task.Output" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Task.Input" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Annotation" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactPoint" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="HumanName" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Identifier" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Signature" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactDetail" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Contributor" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="DataRequirement" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Expression" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ParameterDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="RelatedArtifact" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="TriggerDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="UsageContext" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Dosage" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Meta" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Task.Output" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Annotation" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactPoint" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="HumanName" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Identifier" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Signature" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ContactDetail" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Contributor" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="DataRequirement" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Expression" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="ParameterDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="RelatedArtifact" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="TriggerDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="UsageContext" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Dosage" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Meta" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Task.Restriction" retrievable="false">
      <element name="repetitions" elementType="System.Integer" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recipient">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="TaskIntent" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="TaskPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="TaskStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.BackboneElement" namespace="QICore" name="Timing" identifier="http://hl7.org/fhir/StructureDefinition/Timing" label="Timing" retrievable="false" primaryCodePath="code">
      <element name="event" target="%value.value">
         <elementTypeSpecifier elementType="System.DateTime" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="repeat" elementType="QICore.Timing.Repeat"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="Timing.Repeat" retrievable="false">
      <element name="bounds" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="count" elementType="System.Integer" target="%value.value"/>
      <element name="countMax" elementType="System.Integer" target="%value.value"/>
      <element name="duration" elementType="System.Decimal" target="%value.value"/>
      <element name="durationMax" elementType="System.Decimal" target="%value.value"/>
      <element name="durationUnit" elementType="QICore.UnitsOfTime" target="%value.value"/>
      <element name="frequency" elementType="System.Integer" target="%value.value"/>
      <element name="frequencyMax" elementType="System.Integer" target="%value.value"/>
      <element name="period" elementType="System.Decimal" target="%value.value"/>
      <element name="periodMax" elementType="System.Decimal" target="%value.value"/>
      <element name="periodUnit" elementType="QICore.UnitsOfTime" target="%value.value"/>
      <element name="dayOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="QICore.DayOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="timeOfDay" target="%value.value">
         <elementTypeSpecifier elementType="System.Time" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="when" target="%value.value">
         <elementTypeSpecifier elementType="QICore.EventTiming" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="offset" elementType="System.Integer" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="TriggerDefinition" identifier="http://hl7.org/fhir/StructureDefinition/TriggerDefinition" label="TriggerDefinition" retrievable="false">
      <element name="type" elementType="QICore.TriggerType" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="timing" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="data">
         <elementTypeSpecifier elementType="QICore.DataRequirement" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="condition" elementType="QICore.Expression"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="TriggerType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="UDIEntryType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="USCoreBirthSexExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex" label="US Core Birth Sex Extension" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Extension" namespace="QICore" name="USCoreEthnicityExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity" label="US Core Ethnicity Extension" retrievable="false">
      <element name="ombCategory" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)"/>
      <element name="detailed" target="FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="text" elementType="System.String" target="%parent.extension[url='text'].value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCoreImplantableDeviceProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device" label="US Core Implantable Device Profile" target="Device" retrievable="true" primaryCodePath="type">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="definition" elementType="QICore.Reference"/>
      <element name="udiCarrier" elementType="QICore.Device.UdiCarrier"/>
      <element name="status" elementType="QICore.FHIRDeviceStatus" target="%value.value"/>
      <element name="statusReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="distinctIdentifier" elementType="System.String" target="%value.value"/>
      <element name="manufacturer" elementType="System.String" target="%value.value"/>
      <element name="manufactureDate" elementType="System.DateTime" target="%value.value"/>
      <element name="expirationDate" elementType="System.DateTime" target="%value.value"/>
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="serialNumber" elementType="System.String" target="%value.value"/>
      <element name="deviceName">
         <elementTypeSpecifier elementType="QICore.Device.DeviceName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="modelNumber" elementType="System.String" target="%value.value"/>
      <element name="partNumber" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specialization">
         <elementTypeSpecifier elementType="QICore.Device.Specialization" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="version">
         <elementTypeSpecifier elementType="QICore.Device.Version" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="property">
         <elementTypeSpecifier elementType="QICore.Device.Property" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patient" elementType="QICore.Reference"/>
      <element name="owner" elementType="QICore.Reference"/>
      <element name="contact">
         <elementTypeSpecifier elementType="QICore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="QICore.Reference"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="safety" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="parent" elementType="QICore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCoreLaboratoryResultObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab" label="US Core Laboratory Result Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="Laboratory" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="QICore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Time" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCorePediatricBMIforAgeObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age" label="US Core Pediatric BMI for Age Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCorePediatricWeightForHeightObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height" label="US Core Pediatric Weight for Height Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCorePulseOximetryProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry" label="US Core Pulse Oximetry Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="OxygenSatCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"/>
      <element name="PulseOx" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='59408-5'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="FlowRate" elementType="QICore.Observation.Component"/>
      <element name="Concentration" elementType="QICore.Observation.Component"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Extension" namespace="QICore" name="USCoreRaceExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-race" label="US Core Race Extension" retrievable="false">
      <element name="ombCategory" target="FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="detailed" target="FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="text" elementType="System.String" target="%parent.extension[url='text'].value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="USCoreSmokingStatusProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus" label="US Core Smoking Status Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="UnitsOfTime" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Element" namespace="QICore" name="UsageContext" identifier="http://hl7.org/fhir/StructureDefinition/UsageContext" label="UsageContext" retrievable="false" primaryCodePath="code">
      <element name="code" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="Use" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="abatement" identifier="http://hl7.org/fhir/StructureDefinition/familymemberhistory-abatement" label="abatement" retrievable="false">
      <baseTypeSpecifier xsi:type="ChoiceTypeSpecifier">
         <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
         <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
         <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
      </baseTypeSpecifier>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Reference" namespace="QICore" name="approachBodyStructure" identifier="http://hl7.org/fhir/StructureDefinition/procedure-approachBodyStructure" label="approachBodyStructure" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Address" namespace="QICore" name="birthPlace" identifier="http://hl7.org/fhir/StructureDefinition/patient-birthPlace" label="Birth Place" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.DateTime" namespace="QICore" name="birthTime" identifier="http://hl7.org/fhir/StructureDefinition/patient-birthTime" label="Birth Time" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="bodyPosition" identifier="http://hl7.org/fhir/StructureDefinition/observation-bodyPosition" label="bodyPosition" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Boolean" namespace="QICore" name="cadavericDonor" identifier="http://hl7.org/fhir/StructureDefinition/patient-cadavericDonor" label="cadavericDonor" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="delta" identifier="http://hl7.org/fhir/StructureDefinition/observation-delta" label="delta" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="disability" identifier="http://hl7.org/fhir/StructureDefinition/patient-disability" label="disability" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Boolean" namespace="QICore" name="doNotPerform" identifier="http://hl7.org/fhir/StructureDefinition/request-doNotPerform" label="Do Not Perfom" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="dueTo" identifier="http://hl7.org/fhir/StructureDefinition/condition-dueTo" label="dueTo" retrievable="false">
      <baseTypeSpecifier xsi:type="ChoiceTypeSpecifier">
         <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
      </baseTypeSpecifier>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.Quantity" namespace="QICore" name="duration" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-duration" label="duration" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.DateTime" namespace="QICore" name="incisionDateTime" identifier="http://hl7.org/fhir/StructureDefinition/procedure-incisionDateTime" label="incisionDateTime" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Reference" namespace="QICore" name="locationPerformed" identifier="http://hl7.org/fhir/StructureDefinition/diagnosticReport-locationPerformed" label="locationPerformed" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.Extension" namespace="QICore" name="nationality" identifier="http://hl7.org/fhir/StructureDefinition/patient-nationality" label="nationality" retrievable="false" primaryCodePath="code">
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.extension[url='code'].value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%parent.extension[url='period'].value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-bmi" identifier="http://hl7.org/fhir/StructureDefinition/bmi" label="Observation Body Mass Index Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BMICode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='39156-5'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-bodyheight" identifier="http://hl7.org/fhir/StructureDefinition/bodyheight" label="Observation Body Height Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyHeightCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8302-2'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-bodytemp" identifier="http://hl7.org/fhir/StructureDefinition/bodytemp" label="Observation Body Temperature Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyTempCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8310-5'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-bodyweight" identifier="http://hl7.org/fhir/StructureDefinition/bodyweight" label="Observation Body Weight Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyWeightCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='29463-7'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-bp" identifier="http://hl7.org/fhir/StructureDefinition/bp" label="Observation Blood Pressure Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BPCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85354-9'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="SystolicBP" elementType="QICore.Observation.Component" target="%parent.component[code.coding.system='http://loinc.org',code.coding.code='8480-6']"/>
      <element name="DiastolicBP" elementType="QICore.Observation.Component" target="%parent.component[code.coding.system='http://loinc.org',code.coding.code='8462-4']"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-headcircum" identifier="http://hl7.org/fhir/StructureDefinition/headcircum" label="Observation Head Circumference Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="HeadCircumCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9843-4'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-heartrate" identifier="http://hl7.org/fhir/StructureDefinition/heartrate" label="Observation Heart Rate Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="HeartRateCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8867-4'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-oxygensat" identifier="http://hl7.org/fhir/StructureDefinition/oxygensat" label="Observation Oxygen Saturation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="OxygenSatCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-resprate" identifier="http://hl7.org/fhir/StructureDefinition/resprate" label="Observation Respiratory Rate Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="RespRateCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9279-1'])"/>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="QICore.DomainResource" namespace="QICore" name="observation-vitalspanel" identifier="http://hl7.org/fhir/StructureDefinition/vitalspanel" label="Observation Vital Signs Panel Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="QICore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="QICore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="VitalsPanelCode" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85353-1'])">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="QICore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="QICore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="QICore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="QICore.Reference"/>
      <element name="device" elementType="QICore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="QICore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="QICore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="QICore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" namespace="QICore" name="occurredFollowing" identifier="http://hl7.org/fhir/StructureDefinition/condition-occurredFollowing" label="occurredFollowing" retrievable="false">
      <baseTypeSpecifier xsi:type="ChoiceTypeSpecifier">
         <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         <choice namespace="QICore" name="Reference" xsi:type="NamedTypeSpecifier"/>
      </baseTypeSpecifier>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.Boolean" namespace="QICore" name="preferred" identifier="http://hl7.org/fhir/StructureDefinition/iso21090-preferred" label="preferred" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="reasonRefuted" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-reasonRefuted" label="reasonRefuted" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="reasonRejected" identifier="http://hl7.org/fhir/StructureDefinition/goal-reasonRejected" label="reason rejected" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="QICore" name="reference" identifier="http://hl7.org/fhir/StructureDefinition/valueset-reference" label="reference" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="religion" identifier="http://hl7.org/fhir/StructureDefinition/patient-religion" label="religion" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Quantity" namespace="QICore" name="resolutionAge" identifier="http://hl7.org/fhir/StructureDefinition/allergyintolerance-resolutionAge" label="resolutionAge" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Integer" namespace="QICore" name="sequenceNumber" identifier="http://hl7.org/fhir/StructureDefinition/specimen-sequenceNumber" label="sequenceNumber" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="severity" identifier="http://hl7.org/fhir/StructureDefinition/familymemberhistory-severity" label="severity" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Concept" namespace="QICore" name="statusReason" identifier="http://hl7.org/fhir/StructureDefinition/request-statusReason" label="Reason for current status" retrievable="false"/>
   <contextInfo name="Practitioner" keyElement="id">
      <contextType namespace="QICore" name="Practitioner"/>
   </contextInfo>
   <contextInfo name="Device" keyElement="id">
      <contextType namespace="QICore" name="Device"/>
   </contextInfo>
   <contextInfo name="Patient" keyElement="id" birthDateElement="birthDate">
      <contextType namespace="QICore" name="Patient"/>
   </contextInfo>
   <contextInfo name="Encounter" keyElement="id">
      <contextType namespace="QICore" name="Encounter"/>
   </contextInfo>
   <contextInfo name="RelatedPerson" keyElement="id">
      <contextType namespace="QICore" name="RelatedPerson"/>
   </contextInfo>
</modelInfo>
''';