const uscoremodelinfo311 = r'''<?xml version="1.0" encoding="UTF-8"?>
<modelInfo xmlns="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="USCore" version="3.1.1" url="http://hl7.org/fhir/us/core" targetUrl="http://hl7.org/fhir" targetQualifier="uscore" patientClassName="PatientProfile" patientBirthDatePropertyName="birthDate">
   <requiredModelInfo name="System" version="1.0.0"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Address" identifier="http://hl7.org/fhir/StructureDefinition/Address" label="Address" retrievable="false">
      <element name="use" elementType="USCore.AddressUse" target="%value.value"/>
      <element name="type" elementType="USCore.AddressType" target="%value.value"/>
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
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AddressType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AddressUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AdministrativeGender" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="AllergyIntolerance" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance" label="US  Core AllergyIntolerance Profile" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="clinicalStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="verificationStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="type" elementType="USCore.AllergyIntoleranceType" target="%value.value"/>
      <element name="category" target="%value.value">
         <elementTypeSpecifier elementType="USCore.AllergyIntoleranceCategory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="criticality" elementType="USCore.AllergyIntoleranceCriticality" target="%value.value"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="patient" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
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
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recordedDate" elementType="System.DateTime" target="%value.value"/>
      <element name="recorder" elementType="USCore.Reference"/>
      <element name="asserter" elementType="USCore.Reference"/>
      <element name="lastOccurrence" elementType="System.DateTime" target="%value.value"/>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reaction">
         <elementTypeSpecifier elementType="USCore.AllergyIntolerance.Reaction" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="recorder"/>
      <contextRelationship context="Patient" relatedKeyElement="asserter"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="AllergyIntolerance.Reaction" retrievable="false">
      <element name="substance" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="manifestation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="onset" elementType="System.DateTime" target="%value.value"/>
      <element name="severity" elementType="USCore.AllergyIntoleranceSeverity" target="%value.value"/>
      <element name="exposureRoute" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AllergyIntoleranceCategory" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AllergyIntoleranceCriticality" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AllergyIntoleranceSeverity" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="AllergyIntoleranceType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Annotation" identifier="http://hl7.org/fhir/StructureDefinition/Annotation" label="Annotation" retrievable="false">
      <element name="author" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="time" elementType="System.DateTime" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Attachment" identifier="http://hl7.org/fhir/StructureDefinition/Attachment" label="Attachment" retrievable="false">
      <element name="contentType" elementType="USCore.MimeType" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="size" elementType="System.Integer" target="%value.value"/>
      <element name="hash" elementType="System.String" target="%value.value"/>
      <element name="title" elementType="System.String" target="%value.value"/>
      <element name="creation" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="BackboneElement" identifier="http://hl7.org/fhir/StructureDefinition/BackboneElement" label="BackboneElement" retrievable="false">
      <element name="modifierExtension">
         <elementTypeSpecifier elementType="USCore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="BirthSexExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex" label="US Core Birth Sex Extension" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="BodyLengthUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="BodyTempUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="BodyWeightUnits" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="CarePlan.Activity" retrievable="false">
      <element name="outcomeCodeableConcept" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="progress">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reference" elementType="USCore.Reference"/>
      <element name="detail" elementType="USCore.CarePlan.Activity.Detail"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="CarePlan.Activity.Detail" retrievable="false">
      <element name="kind" elementType="USCore.CarePlanActivityKind" target="%value.value"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="goal">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.CarePlanActivityStatus" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="scheduled" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="USCore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="location" elementType="USCore.Reference"/>
      <element name="performer">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="product" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="dailyAmount" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="description" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="CarePlanActivityKind" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="CarePlanActivityStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="CarePlanProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-careplan" label="US Core CarePlan Profile" target="CarePlan" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="replaces">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="intent" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="AssessPlan" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="title" elementType="System.String" target="%value.value"/>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="created" elementType="System.DateTime" target="%value.value"/>
      <element name="author" elementType="USCore.Reference"/>
      <element name="contributor">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="careTeam">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="addresses">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="supportingInfo">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="goal">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="activity">
         <elementTypeSpecifier elementType="USCore.CarePlan.Activity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="CareTeam" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam" label="US Core CareTeam Profile" retrievable="true" primaryCodePath="category">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="participant">
         <elementTypeSpecifier elementType="USCore.CareTeam.Participant" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="managingOrganization">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="member"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="CareTeam.Participant" retrievable="false">
      <element name="role" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="member" elementType="USCore.Reference"/>
      <element name="onBehalfOf" elementType="USCore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="Condition" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition" label="US Core Condition Profile" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
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
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
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
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
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
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recordedDate" elementType="System.DateTime" target="%value.value"/>
      <element name="recorder" elementType="USCore.Reference"/>
      <element name="asserter" elementType="USCore.Reference"/>
      <element name="stage">
         <elementTypeSpecifier elementType="USCore.Condition.Stage" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="evidence">
         <elementTypeSpecifier elementType="USCore.Condition.Evidence" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="patient"/>
      <contextRelationship context="Patient" relatedKeyElement="asserter"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Condition.Evidence" retrievable="false">
      <element name="code" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="detail">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Condition.Stage" retrievable="false">
      <element name="summary" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="assessment">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="ContactDetail" identifier="http://hl7.org/fhir/StructureDefinition/ContactDetail" label="ContactDetail" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="ContactPoint" identifier="http://hl7.org/fhir/StructureDefinition/ContactPoint" label="ContactPoint" retrievable="false">
      <element name="system" elementType="USCore.ContactPointSystem" target="%value.value"/>
      <element name="value" elementType="System.String" target="%value.value"/>
      <element name="use" elementType="USCore.ContactPointUse" target="%value.value"/>
      <element name="rank" elementType="System.Integer" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ContactPointSystem" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ContactPointUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Contributor" identifier="http://hl7.org/fhir/StructureDefinition/Contributor" label="Contributor" retrievable="false">
      <element name="type" elementType="USCore.ContributorType" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="contact">
         <elementTypeSpecifier elementType="USCore.ContactDetail" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ContributorType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="DataRequirement" identifier="http://hl7.org/fhir/StructureDefinition/DataRequirement" label="DataRequirement" retrievable="false">
      <element name="type" elementType="USCore.FHIRAllTypes" target="%value.value"/>
      <element name="profile" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="mustSupport" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="codeFilter">
         <elementTypeSpecifier elementType="USCore.DataRequirement.CodeFilter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dateFilter">
         <elementTypeSpecifier elementType="USCore.DataRequirement.DateFilter" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="limit" elementType="System.Integer" target="%value.value"/>
      <element name="sort">
         <elementTypeSpecifier elementType="USCore.DataRequirement.Sort" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="DataRequirement.CodeFilter" retrievable="false">
      <element name="path" elementType="System.String" target="%value.value"/>
      <element name="searchParam" elementType="System.String" target="%value.value"/>
      <element name="valueSet" elementType="System.String" target="%value.value"/>
      <element name="code" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="DataRequirement.DateFilter" retrievable="false">
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
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="DataRequirement.Sort" retrievable="false">
      <element name="path" elementType="System.String" target="%value.value"/>
      <element name="direction" elementType="USCore.SortDirection" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="DayOfWeek" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="DaysOfWeek" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Device.DeviceName" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="USCore.DeviceNameType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Device.Property" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="valueQuantity" target="FHIRHelpers.ToQuantity(%value)">
         <elementTypeSpecifier elementType="System.Quantity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="valueCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Device.Specialization" retrievable="false">
      <element name="systemType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="version" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Device.UdiCarrier" retrievable="false">
      <element name="deviceIdentifier" elementType="System.String" target="%value.value"/>
      <element name="issuer" elementType="System.String" target="%value.value"/>
      <element name="jurisdiction" elementType="System.String" target="%value.value"/>
      <element name="carrierAIDC" elementType="System.String" target="%value.value"/>
      <element name="carrierHRF" elementType="System.String" target="%value.value"/>
      <element name="entryType" elementType="USCore.UDIEntryType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Device.Version" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="component" elementType="USCore.Identifier"/>
      <element name="value" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="DeviceNameType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="DiagnosticReport.Media" retrievable="false">
      <element name="comment" elementType="System.String" target="%value.value"/>
      <element name="link" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="DiagnosticReportProfileLaboratoryReporting" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab" label="US Core DiagnosticReport Profile for Laboratory Results Reporting" target="DiagnosticReport" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="LaboratorySlice" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="resultsInterpreter">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="result">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="imagingStudy">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="media">
         <elementTypeSpecifier elementType="USCore.DiagnosticReport.Media" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="conclusion" elementType="System.String" target="%value.value"/>
      <element name="conclusionCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="presentedForm">
         <elementTypeSpecifier elementType="USCore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="DiagnosticReportProfileNoteExchange" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note" label="US Core DiagnosticReport Profile for Report and Note exchange" target="DiagnosticReport" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="resultsInterpreter">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specimen">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="result">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="imagingStudy">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="media">
         <elementTypeSpecifier elementType="USCore.DiagnosticReport.Media" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="conclusion" elementType="System.String" target="%value.value"/>
      <element name="conclusionCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="presentedForm">
         <elementTypeSpecifier elementType="USCore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="DocumentReference.Content" retrievable="false">
      <element name="attachment" elementType="USCore.Attachment"/>
      <element name="format" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="DocumentReference.Context" retrievable="false">
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="event" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="facilityType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="practiceSetting" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="sourcePatientInfo" elementType="USCore.Reference"/>
      <element name="related">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="DocumentReference.RelatesTo" retrievable="false">
      <element name="code" elementType="USCore.DocumentRelationshipType" target="%value.value"/>
      <element name="target" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="DocumentReferenceProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference" label="US Core DocumentReference Profile" target="DocumentReference" retrievable="true">
      <element name="masterIdentifier" elementType="USCore.Identifier"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="docStatus" elementType="USCore.ReferredDocumentStatus" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="author">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="authenticator" elementType="USCore.Reference"/>
      <element name="custodian" elementType="USCore.Reference"/>
      <element name="relatesTo">
         <elementTypeSpecifier elementType="USCore.DocumentReference.RelatesTo" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="securityLabel" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="content">
         <elementTypeSpecifier elementType="USCore.DocumentReference.Content" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="context" elementType="USCore.DocumentReference.Context"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="DocumentRelationshipType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Resource" namespace="USCore" name="DomainResource" identifier="http://hl7.org/fhir/StructureDefinition/DomainResource" label="DomainResource" retrievable="true">
      <element name="text" elementType="USCore.Narrative"/>
      <element name="contained">
         <elementTypeSpecifier elementType="USCore.Resource" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="extension">
         <elementTypeSpecifier elementType="USCore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="modifierExtension">
         <elementTypeSpecifier elementType="USCore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Dosage" identifier="http://hl7.org/fhir/StructureDefinition/Dosage" label="Dosage" retrievable="false">
      <element name="sequence" elementType="System.Integer" target="%value.value"/>
      <element name="text" elementType="System.String" target="%value.value"/>
      <element name="additionalInstruction" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patientInstruction" elementType="System.String" target="%value.value"/>
      <element name="timing" elementType="USCore.Timing"/>
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
         <elementTypeSpecifier elementType="USCore.Dosage.DoseAndRate" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="maxDosePerPeriod" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
      <element name="maxDosePerAdministration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="maxDosePerLifetime" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Dosage.DoseAndRate" retrievable="false">
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
   <typeInfo xsi:type="ClassInfo" baseType="System.Any" namespace="USCore" name="Element" identifier="http://hl7.org/fhir/StructureDefinition/Element" label="Element" retrievable="false">
      <element name="id" elementType="System.String" target="%value.value"/>
      <element name="extension">
         <elementTypeSpecifier elementType="USCore.Extension" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.ClassHistory" retrievable="false">
      <element name="class" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.Diagnosis" retrievable="false">
      <element name="condition" elementType="USCore.Reference"/>
      <element name="use" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="rank" elementType="System.Integer" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.Hospitalization" retrievable="false">
      <element name="preAdmissionIdentifier" elementType="USCore.Identifier"/>
      <element name="origin" elementType="USCore.Reference"/>
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
      <element name="destination" elementType="USCore.Reference"/>
      <element name="dischargeDisposition" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.Location" retrievable="false">
      <element name="location" elementType="USCore.Reference"/>
      <element name="status" elementType="USCore.EncounterLocationStatus" target="%value.value"/>
      <element name="physicalType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.Participant" retrievable="false">
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="individual" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Encounter.StatusHistory" retrievable="false">
      <element name="status" elementType="USCore.EncounterStatus" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="EncounterLocationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="EncounterProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter" label="US Core Encounter Profile" target="Encounter" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.EncounterStatus" target="%value.value"/>
      <element name="statusHistory">
         <elementTypeSpecifier elementType="USCore.Encounter.StatusHistory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="class" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="classHistory">
         <elementTypeSpecifier elementType="USCore.Encounter.ClassHistory" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="serviceType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="priority" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="episodeOfCare">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="participant">
         <elementTypeSpecifier elementType="USCore.Encounter.Participant" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="appointment">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="diagnosis">
         <elementTypeSpecifier elementType="USCore.Encounter.Diagnosis" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="account">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hospitalization" elementType="USCore.Encounter.Hospitalization"/>
      <element name="location">
         <elementTypeSpecifier elementType="USCore.Encounter.Location" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="serviceProvider" elementType="USCore.Reference"/>
      <element name="partOf" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="EncounterStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Extension" namespace="USCore" name="EthnicityExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity" label="US Core Ethnicity Extension" retrievable="false">
      <element name="ombCategory" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)"/>
      <element name="detailed" target="FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="text" elementType="System.String" target="%parent.extension[url='text'].value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="EventTiming" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Expression" identifier="http://hl7.org/fhir/StructureDefinition/Expression" label="Expression" retrievable="false">
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
      <element name="expression" elementType="System.String" target="%value.value"/>
      <element name="reference" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Extension" identifier="http://hl7.org/fhir/StructureDefinition/Extension" label="Extension" retrievable="false">
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
            <choice namespace="USCore" name="Address" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Annotation" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Attachment" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Code" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="ContactPoint" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="HumanName" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Identifier" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Decimal" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="Ratio" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Signature" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="ContactDetail" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Contributor" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="DataRequirement" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Expression" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="ParameterDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="RelatedArtifact" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="TriggerDefinition" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="UsageContext" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Dosage" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Meta" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="FHIRAllTypes" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="FHIRDeviceStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Goal.Target" retrievable="false">
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
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="GoalProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-goal" label="US Core Goal Profile" target="Goal" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="lifecycleStatus" elementType="System.String" target="%value.value"/>
      <element name="achievementStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="description" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="start" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="target">
         <elementTypeSpecifier elementType="USCore.Goal.Target" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="statusDate" elementType="System.Date" target="%value.value"/>
      <element name="statusReason" elementType="System.String" target="%value.value"/>
      <element name="expressedBy" elementType="USCore.Reference"/>
      <element name="addresses">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcomeReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="HumanName" identifier="http://hl7.org/fhir/StructureDefinition/HumanName" label="HumanName" retrievable="false">
      <element name="use" elementType="USCore.NameUse" target="%value.value"/>
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
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Identifier" identifier="http://hl7.org/fhir/StructureDefinition/Identifier" label="Identifier" retrievable="false">
      <element name="use" elementType="USCore.IdentifierUse" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="system" elementType="System.String" target="%value.value"/>
      <element name="value" elementType="System.String" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="assigner" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="IdentifierUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Immunization.Education" retrievable="false">
      <element name="documentType" elementType="System.String" target="%value.value"/>
      <element name="reference" elementType="System.String" target="%value.value"/>
      <element name="publicationDate" elementType="System.DateTime" target="%value.value"/>
      <element name="presentationDate" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Immunization.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Immunization.ProtocolApplied" retrievable="false">
      <element name="series" elementType="System.String" target="%value.value"/>
      <element name="authority" elementType="USCore.Reference"/>
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
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Immunization.Reaction" retrievable="false">
      <element name="date" elementType="System.DateTime" target="%value.value"/>
      <element name="detail" elementType="USCore.Reference"/>
      <element name="reported" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="ImmunizationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization" label="US Core Immunization Profile" target="Immunization" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="vaccineCode" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="patient" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="occurrence" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="String" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recorded" elementType="System.DateTime" target="%value.value"/>
      <element name="primarySource" elementType="System.Boolean" target="%value.value"/>
      <element name="reportOrigin" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="location" elementType="USCore.Reference"/>
      <element name="manufacturer" elementType="USCore.Reference"/>
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="expirationDate" elementType="System.Date" target="%value.value"/>
      <element name="site" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="route" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="doseQuantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="performer">
         <elementTypeSpecifier elementType="USCore.Immunization.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="isSubpotent" elementType="System.Boolean" target="%value.value"/>
      <element name="subpotentReason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="education">
         <elementTypeSpecifier elementType="USCore.Immunization.Education" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="programEligibility" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="fundingSource" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="reaction">
         <elementTypeSpecifier elementType="USCore.Immunization.Reaction" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="protocolApplied">
         <elementTypeSpecifier elementType="USCore.Immunization.ProtocolApplied" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="ImplantableDeviceProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device" label="US Core Implantable Device Profile" target="Device" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="definition" elementType="USCore.Reference"/>
      <element name="udiCarrier" elementType="USCore.Device.UdiCarrier"/>
      <element name="status" elementType="USCore.FHIRDeviceStatus" target="%value.value"/>
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
         <elementTypeSpecifier elementType="USCore.Device.DeviceName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="modelNumber" elementType="System.String" target="%value.value"/>
      <element name="partNumber" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specialization">
         <elementTypeSpecifier elementType="USCore.Device.Specialization" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="version">
         <elementTypeSpecifier elementType="USCore.Device.Version" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="property">
         <elementTypeSpecifier elementType="USCore.Device.Property" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="patient" elementType="USCore.Reference"/>
      <element name="owner" elementType="USCore.Reference"/>
      <element name="contact">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="USCore.Reference"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="safety" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="parent" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="LaboratoryResultObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab" label="US Core Laboratory Result Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="Laboratory" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
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
            <choice namespace="USCore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
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
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="LinkType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="Location" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-location" label="US Core Location Profile" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.LocationStatus" target="%value.value"/>
      <element name="operationalStatus" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="alias" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="mode" elementType="USCore.LocationMode" target="%value.value"/>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="USCore.Address"/>
      <element name="physicalType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="position" elementType="USCore.Location.Position"/>
      <element name="managingOrganization" elementType="USCore.Reference"/>
      <element name="partOf" elementType="USCore.Reference"/>
      <element name="hoursOfOperation">
         <elementTypeSpecifier elementType="USCore.Location.HoursOfOperation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availabilityExceptions" elementType="System.String" target="%value.value"/>
      <element name="endpoint">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Location.HoursOfOperation" retrievable="false">
      <element name="daysOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="USCore.DaysOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="allDay" elementType="System.Boolean" target="%value.value"/>
      <element name="openingTime" elementType="System.Time" target="%value.value"/>
      <element name="closingTime" elementType="System.Time" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Location.Position" retrievable="false">
      <element name="longitude" elementType="System.Decimal" target="%value.value"/>
      <element name="latitude" elementType="System.Decimal" target="%value.value"/>
      <element name="altitude" elementType="System.Decimal" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="LocationMode" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="LocationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Medication.Batch" retrievable="false">
      <element name="lotNumber" elementType="System.String" target="%value.value"/>
      <element name="expirationDate" elementType="System.DateTime" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Medication.Ingredient" retrievable="false">
      <element name="item" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="isActive" elementType="System.Boolean" target="%value.value"/>
      <element name="strength" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="MedicationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication" label="US Core Medication Profile" target="Medication" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="status" elementType="USCore.MedicationStatus" target="%value.value"/>
      <element name="manufacturer" elementType="USCore.Reference"/>
      <element name="form" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="amount" elementType="System.Ratio" target="FHIRHelpers.ToRatio(%value)"/>
      <element name="ingredient">
         <elementTypeSpecifier elementType="USCore.Medication.Ingredient" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="batch" elementType="USCore.Medication.Batch"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="MedicationRequest.DispenseRequest" retrievable="false">
      <element name="initialFill" elementType="USCore.MedicationRequest.DispenseRequest.InitialFill"/>
      <element name="dispenseInterval" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="validityPeriod" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="numberOfRepeatsAllowed" elementType="System.Integer" target="%value.value"/>
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="expectedSupplyDuration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="performer" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="MedicationRequest.DispenseRequest.InitialFill" retrievable="false">
      <element name="quantity" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="duration" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="MedicationRequest.Substitution" retrievable="false">
      <element name="allowed" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="reason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="MedicationRequestPriority" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="MedicationRequestProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest" label="US Core MedicationRequest Profile" target="MedicationRequest" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="intent" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="priority" elementType="USCore.MedicationRequestPriority" target="%value.value"/>
      <element name="doNotPerform" elementType="System.Boolean" target="%value.value"/>
      <element name="reported" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="medication" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="supportingInformation">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="authoredOn" elementType="System.DateTime" target="%value.value"/>
      <element name="requester" elementType="USCore.Reference"/>
      <element name="performer" elementType="USCore.Reference"/>
      <element name="performerType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="recorder" elementType="USCore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="groupIdentifier" elementType="USCore.Identifier"/>
      <element name="courseOfTherapyType" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="insurance">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dosageInstruction">
         <elementTypeSpecifier elementType="USCore.Dosage" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dispenseRequest" elementType="USCore.MedicationRequest.DispenseRequest"/>
      <element name="substitution" elementType="USCore.MedicationRequest.Substitution"/>
      <element name="priorPrescription" elementType="USCore.Reference"/>
      <element name="detectedIssue">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="eventHistory">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="MedicationStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Meta" identifier="http://hl7.org/fhir/StructureDefinition/Meta" label="Meta" retrievable="false">
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
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="MimeType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="NameUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Narrative" identifier="http://hl7.org/fhir/StructureDefinition/Narrative" label="Narrative" retrievable="false">
      <element name="status" elementType="USCore.NarrativeStatus" target="%value.value"/>
      <element name="div" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="NarrativeStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Observation.Component" retrievable="false">
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
            <choice namespace="USCore" name="SampledData" xsi:type="NamedTypeSpecifier"/>
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
            <elementTypeSpecifier namespace="USCore" name="Observation.ReferenceRange" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Observation.Component" namespace="USCore" name="Observation.Component.Concentration" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Observation.Component" namespace="USCore" name="Observation.Component.DiastolicBP" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Observation.Component" namespace="USCore" name="Observation.Component.FlowRate" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Observation.Component" namespace="USCore" name="Observation.Component.SystolicBP" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Observation.ReferenceRange" retrievable="false">
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
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Organization.Contact" retrievable="false">
      <element name="purpose" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="name" elementType="USCore.HumanName"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="USCore.Address"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="OrganizationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization" label="US Core Organization Profile" target="Organization" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="NPI" elementType="USCore.Identifier"/>
      <element name="CLIA" elementType="USCore.Identifier"/>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="type" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="alias" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address">
         <elementTypeSpecifier elementType="USCore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf" elementType="USCore.Reference"/>
      <element name="contact">
         <elementTypeSpecifier elementType="USCore.Organization.Contact" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="endpoint">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="ParameterDefinition" identifier="http://hl7.org/fhir/StructureDefinition/ParameterDefinition" label="ParameterDefinition" retrievable="false">
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="use" elementType="USCore.ParameterUse" target="%value.value"/>
      <element name="min" elementType="System.Integer" target="%value.value"/>
      <element name="max" elementType="System.String" target="%value.value"/>
      <element name="documentation" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="USCore.FHIRAllTypes" target="%value.value"/>
      <element name="profile" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ParameterUse" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Patient.Communication" retrievable="false">
      <element name="language" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="preferred" elementType="System.Boolean" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Patient.Contact" retrievable="false">
      <element name="relationship" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="name" elementType="USCore.HumanName"/>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address" elementType="USCore.Address"/>
      <element name="gender" elementType="USCore.AdministrativeGender" target="%value.value"/>
      <element name="organization" elementType="USCore.Reference"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Patient.Link" retrievable="false">
      <element name="other" elementType="USCore.Reference"/>
      <element name="type" elementType="USCore.LinkType" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PatientProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient" label="US Core Patient Profile" target="Patient" retrievable="true">
      <element name="race" elementType="USCore.RaceExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-race']"/>
      <element name="ethnicity" elementType="USCore.EthnicityExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity']"/>
      <element name="birthsex" elementType="USCore.BirthSexExtension" target="%parent.extension[url='http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex'].value.value"/>
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="name">
         <elementTypeSpecifier elementType="USCore.HumanName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
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
         <elementTypeSpecifier elementType="USCore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="maritalStatus" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="multipleBirth" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Boolean" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Integer" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="photo">
         <elementTypeSpecifier elementType="USCore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="contact">
         <elementTypeSpecifier elementType="USCore.Patient.Contact" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="communication">
         <elementTypeSpecifier elementType="USCore.Patient.Communication" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="generalPractitioner">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="managingOrganization" elementType="USCore.Reference"/>
      <element name="link">
         <elementTypeSpecifier elementType="USCore.Patient.Link" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PediatricBMIforAgeObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-bmi-for-age" label="US Core Pediatric BMI for Age Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PediatricWeightForHeightObservationProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/pediatric-weight-for-height" label="US Core Pediatric Weight for Height Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Practitioner.Qualification" retrievable="false">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issuer" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PractitionerProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner" label="US Core Practitioner Profile" target="Practitioner" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="NPI" elementType="USCore.Identifier"/>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="name">
         <elementTypeSpecifier elementType="USCore.HumanName" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="address">
         <elementTypeSpecifier elementType="USCore.Address" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="gender" elementType="USCore.AdministrativeGender" target="%value.value"/>
      <element name="birthDate" elementType="System.Date" target="%value.value"/>
      <element name="photo">
         <elementTypeSpecifier elementType="USCore.Attachment" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="qualification">
         <elementTypeSpecifier elementType="USCore.Practitioner.Qualification" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="communication" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="PractitionerRole.AvailableTime" retrievable="false">
      <element name="daysOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="USCore.DaysOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="allDay" elementType="System.Boolean" target="%value.value"/>
      <element name="availableStartTime" elementType="System.Time" target="%value.value"/>
      <element name="availableEndTime" elementType="System.Time" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="PractitionerRole.NotAvailable" retrievable="false">
      <element name="description" elementType="System.String" target="%value.value"/>
      <element name="during" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PractitionerRoleProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole" label="US Core PractitionerRole Profile" target="PractitionerRole" retrievable="true">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="active" elementType="System.Boolean" target="%value.value"/>
      <element name="period" target="FHIRHelpers.ToInterval(%value)">
         <elementTypeSpecifier xsi:type="IntervalTypeSpecifier">
            <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="practitioner" elementType="USCore.Reference"/>
      <element name="organization" elementType="USCore.Reference"/>
      <element name="code" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="specialty" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="healthcareService">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="telecom">
         <elementTypeSpecifier elementType="USCore.ContactPoint" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availableTime">
         <elementTypeSpecifier elementType="USCore.PractitionerRole.AvailableTime" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="notAvailable">
         <elementTypeSpecifier elementType="USCore.PractitionerRole.NotAvailable" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="availabilityExceptions" elementType="System.String" target="%value.value"/>
      <element name="endpoint">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Procedure.FocalDevice" retrievable="false">
      <element name="action" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="manipulated" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Procedure.Performer" retrievable="false">
      <element name="function" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="actor" elementType="USCore.Reference"/>
      <element name="onBehalfOf" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="ProcedureProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure" label="US Core Procedure Profile" target="Procedure" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesCanonical" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="instantiatesUri" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="statusReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="category" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="performed" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
         </elementTypeSpecifier>
      </element>
      <element name="recorder" elementType="USCore.Reference"/>
      <element name="asserter" elementType="USCore.Reference"/>
      <element name="performer">
         <elementTypeSpecifier elementType="USCore.Procedure.Performer" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="USCore.Reference"/>
      <element name="reasonCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="reasonReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="outcome" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="report">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complication" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="complicationDetail">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="followUp" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="focalDevice">
         <elementTypeSpecifier elementType="USCore.Procedure.FocalDevice" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedReference">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="usedCode" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="Provenance" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-provenance" label="US Core Provenance Profile" retrievable="true">
      <element name="target">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="occurred" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="recorded" elementType="System.DateTime" target="%value.value"/>
      <element name="policy" target="%value.value">
         <elementTypeSpecifier elementType="System.String" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="location" elementType="USCore.Reference"/>
      <element name="reason" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="activity" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="agent">
         <elementTypeSpecifier elementType="USCore.Provenance.Agent" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="ProvenanceAuthor">
         <elementTypeSpecifier elementType="USCore.Provenance.Agent.ProvenanceAuthor" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="ProvenanceTransmitter" elementType="USCore.Provenance.Agent.ProvenanceTransmitter"/>
      <element name="entity">
         <elementTypeSpecifier elementType="USCore.Provenance.Entity" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="signature">
         <elementTypeSpecifier elementType="USCore.Signature" xsi:type="ListTypeSpecifier"/>
      </element>
      <contextRelationship context="Patient" relatedKeyElement="where(resolve() is Patient)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Provenance.Agent" retrievable="false">
      <element name="type" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="role" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="who" elementType="USCore.Reference"/>
      <element name="onBehalfOf" elementType="USCore.Reference"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Provenance.Agent" namespace="USCore" name="Provenance.Agent.ProvenanceAuthor" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Provenance.Agent" namespace="USCore" name="Provenance.Agent.ProvenanceTransmitter" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Provenance.Entity" retrievable="false">
      <element name="role" elementType="USCore.ProvenanceEntityRole" target="%value.value"/>
      <element name="what" elementType="USCore.Reference"/>
      <element name="agent">
         <elementTypeSpecifier xsi:type="ListTypeSpecifier">
            <elementTypeSpecifier namespace="USCore" name="Provenance.Agent.ProvenanceTransmitter" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ProvenanceEntityRole" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="PulseOximetryProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry" label="US Core Pulse Oximetry Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="OxygenSatCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"/>
      <element name="PulseOx" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='59408-5'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="FlowRate" elementType="USCore.Observation.Component"/>
      <element name="Concentration" elementType="USCore.Observation.Component"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="QuantityComparator" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Extension" namespace="USCore" name="RaceExtension" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-race" label="US Core Race Extension" retrievable="false">
      <element name="ombCategory" target="FHIRHelpers.ToCode(%parent.extension[url='ombCategory'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="detailed" target="FHIRHelpers.ToCode(%parent.extension[url='detailed'].value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="text" elementType="System.String" target="%parent.extension[url='text'].value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Reference" identifier="http://hl7.org/fhir/StructureDefinition/Reference" label="Reference" retrievable="false">
      <element name="reference" elementType="System.String" target="%value.value"/>
      <element name="type" elementType="System.String" target="%value.value"/>
      <element name="identifier" elementType="USCore.Identifier"/>
      <element name="display" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="ReferredDocumentStatus" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="RelatedArtifact" identifier="http://hl7.org/fhir/StructureDefinition/RelatedArtifact" label="RelatedArtifact" retrievable="false">
      <element name="type" elementType="USCore.RelatedArtifactType" target="%value.value"/>
      <element name="label" elementType="System.String" target="%value.value"/>
      <element name="display" elementType="System.String" target="%value.value"/>
      <element name="citation" elementType="System.String" target="%value.value"/>
      <element name="url" elementType="System.String" target="%value.value"/>
      <element name="document" elementType="USCore.Attachment"/>
      <element name="resource" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="RelatedArtifactType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.Any" namespace="USCore" name="Resource" identifier="http://hl7.org/fhir/StructureDefinition/Resource" label="Resource" retrievable="true">
      <element name="id" elementType="System.String" target="%value.value"/>
      <element name="meta" elementType="USCore.Meta"/>
      <element name="implicitRules" elementType="System.String" target="%value.value"/>
      <element name="language" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="SampledData" identifier="http://hl7.org/fhir/StructureDefinition/SampledData" label="SampledData" retrievable="false">
      <element name="origin" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="period" elementType="System.Decimal" target="%value.value"/>
      <element name="factor" elementType="System.Decimal" target="%value.value"/>
      <element name="lowerLimit" elementType="System.Decimal" target="%value.value"/>
      <element name="upperLimit" elementType="System.Decimal" target="%value.value"/>
      <element name="dimensions" elementType="System.Integer" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Signature" identifier="http://hl7.org/fhir/StructureDefinition/Signature" label="Signature" retrievable="false">
      <element name="type" target="FHIRHelpers.ToCode(%value)">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="when" elementType="System.DateTime" target="%value.value"/>
      <element name="who" elementType="USCore.Reference"/>
      <element name="onBehalfOf" elementType="USCore.Reference"/>
      <element name="targetFormat" elementType="USCore.MimeType" target="%value.value"/>
      <element name="sigFormat" elementType="USCore.MimeType" target="%value.value"/>
      <element name="data" elementType="System.String" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="SmokingStatusProfile" identifier="http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus" label="US Core Smoking Status Observation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="System.String" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
      <element name="effective" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="USCore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="issued" elementType="System.DateTime" target="%value.value"/>
      <element name="performer">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="SortDirection" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="Status" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.BackboneElement" namespace="USCore" name="Timing" identifier="http://hl7.org/fhir/StructureDefinition/Timing" label="Timing" retrievable="false" primaryCodePath="code">
      <element name="event" target="%value.value">
         <elementTypeSpecifier elementType="System.DateTime" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="repeat" elementType="USCore.Timing.Repeat"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="Timing.Repeat" retrievable="false">
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
      <element name="durationUnit" elementType="USCore.UnitsOfTime" target="%value.value"/>
      <element name="frequency" elementType="System.Integer" target="%value.value"/>
      <element name="frequencyMax" elementType="System.Integer" target="%value.value"/>
      <element name="period" elementType="System.Decimal" target="%value.value"/>
      <element name="periodMax" elementType="System.Decimal" target="%value.value"/>
      <element name="periodUnit" elementType="USCore.UnitsOfTime" target="%value.value"/>
      <element name="dayOfWeek" target="%value.value">
         <elementTypeSpecifier elementType="USCore.DayOfWeek" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="timeOfDay" target="%value.value">
         <elementTypeSpecifier elementType="System.Time" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="when" target="%value.value">
         <elementTypeSpecifier elementType="USCore.EventTiming" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="offset" elementType="System.Integer" target="%value.value"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="TriggerDefinition" identifier="http://hl7.org/fhir/StructureDefinition/TriggerDefinition" label="TriggerDefinition" retrievable="false">
      <element name="type" elementType="USCore.TriggerType" target="%value.value"/>
      <element name="name" elementType="System.String" target="%value.value"/>
      <element name="timing" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="USCore" name="Timing" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Date" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="DateTime" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
      <element name="data">
         <elementTypeSpecifier elementType="USCore.DataRequirement" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="condition" elementType="USCore.Expression"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="TriggerType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="UDIEntryType" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="System.String" namespace="USCore" name="UnitsOfTime" retrievable="false"/>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.Element" namespace="USCore" name="UsageContext" identifier="http://hl7.org/fhir/StructureDefinition/UsageContext" label="UsageContext" retrievable="false" primaryCodePath="code">
      <element name="code" elementType="System.Code" target="FHIRHelpers.ToCode(%value)"/>
      <element name="value" target="FHIRHelpers.ToValue(%value)">
         <elementTypeSpecifier xsi:type="ChoiceTypeSpecifier">
            <choice namespace="System" name="Concept" xsi:type="NamedTypeSpecifier"/>
            <choice namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            <choice xsi:type="IntervalTypeSpecifier">
               <pointTypeSpecifier namespace="System" name="Quantity" xsi:type="NamedTypeSpecifier"/>
            </choice>
            <choice namespace="USCore" name="Reference" xsi:type="NamedTypeSpecifier"/>
         </elementTypeSpecifier>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-bmi" identifier="http://hl7.org/fhir/StructureDefinition/bmi" label="Observation Body Mass Index Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BMICode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='39156-5'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-bodyheight" identifier="http://hl7.org/fhir/StructureDefinition/bodyheight" label="Observation Body Height Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyHeightCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8302-2'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-bodytemp" identifier="http://hl7.org/fhir/StructureDefinition/bodytemp" label="Observation Body Temperature Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyTempCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8310-5'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-bodyweight" identifier="http://hl7.org/fhir/StructureDefinition/bodyweight" label="Observation Body Weight Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BodyWeightCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='29463-7'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-bp" identifier="http://hl7.org/fhir/StructureDefinition/bp" label="Observation Blood Pressure Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="BPCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85354-9'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="SystolicBP" elementType="USCore.Observation.Component" target="%parent.component[code.coding.system='http://loinc.org',code.coding.code='8480-6']"/>
      <element name="DiastolicBP" elementType="USCore.Observation.Component" target="%parent.component[code.coding.system='http://loinc.org',code.coding.code='8462-4']"/>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-headcircum" identifier="http://hl7.org/fhir/StructureDefinition/headcircum" label="Observation Head Circumference Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="HeadCircumCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9843-4'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-heartrate" identifier="http://hl7.org/fhir/StructureDefinition/heartrate" label="Observation Heart Rate Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="HeartRateCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='8867-4'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-oxygensat" identifier="http://hl7.org/fhir/StructureDefinition/oxygensat" label="Observation Oxygen Saturation Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="OxygenSatCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='2708-6'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-resprate" identifier="http://hl7.org/fhir/StructureDefinition/resprate" label="Observation Respiratory Rate Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="RespRateCode" elementType="System.Code" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='9279-1'])"/>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="value" elementType="System.Quantity" target="FHIRHelpers.ToQuantity(%value)"/>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <typeInfo xsi:type="ClassInfo" baseType="USCore.DomainResource" namespace="USCore" name="observation-vitalspanel" identifier="http://hl7.org/fhir/StructureDefinition/vitalspanel" label="Observation Vital Signs Panel Profile" target="Observation" retrievable="true" primaryCodePath="code">
      <element name="identifier">
         <elementTypeSpecifier elementType="USCore.Identifier" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="basedOn">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="partOf">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="status" elementType="USCore.Status" target="%value.value"/>
      <element name="category" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="VSCat" elementType="System.Concept" target="FHIRHelpers.ToConcept(%parent.category[coding.system='http://terminology.hl7.org/CodeSystem/observation-category',coding.code='vital-signs'])"/>
      <element name="code" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="VitalsPanelCode" target="FHIRHelpers.ToCode(%parent.code.coding[system='http://loinc.org',code='85353-1'])">
         <elementTypeSpecifier elementType="System.Code" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="subject" elementType="USCore.Reference"/>
      <element name="focus">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="encounter" elementType="USCore.Reference"/>
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
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="dataAbsentReason" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="interpretation" target="FHIRHelpers.ToConcept(%value)">
         <elementTypeSpecifier elementType="System.Concept" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="note">
         <elementTypeSpecifier elementType="USCore.Annotation" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="bodySite" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="method" elementType="System.Concept" target="FHIRHelpers.ToConcept(%value)"/>
      <element name="specimen" elementType="USCore.Reference"/>
      <element name="device" elementType="USCore.Reference"/>
      <element name="referenceRange">
         <elementTypeSpecifier elementType="USCore.Observation.ReferenceRange" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="hasMember">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="derivedFrom">
         <elementTypeSpecifier elementType="USCore.Reference" xsi:type="ListTypeSpecifier"/>
      </element>
      <element name="component">
         <elementTypeSpecifier elementType="USCore.Observation.Component" xsi:type="ListTypeSpecifier"/>
      </element>
   </typeInfo>
   <contextInfo name="Patient" keyElement="id" birthDateElement="birthDate">
      <contextType namespace="USCore" name="PatientProfile"/>
   </contextInfo>
</modelInfo>
''';