const fhirmodelinfo301 = r'''<?xml version="1.0" encoding="utf-8"?>
<modelInfo xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="FHIR" version="3.0.1" url="http://hl7.org/fhir" patientClassName="FHIR.Patient" patientBirthDatePropertyName="birthDate.value" xmlns="urn:hl7-org:elm-modelinfo:r1">
  <requiredModelInfo name="System" version="1.0.0" />
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Account" label="Account" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.AccountStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="name" type="FHIR.string" />
    <element name="subject" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="active" type="FHIR.Period" />
    <element name="balance" type="FHIR.Money" />
    <element name="coverage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Account.CoverageComponent" />
    </element>
    <element name="owner" type="FHIR.Reference" />
    <element name="description" type="FHIR.string" />
    <element name="guarantor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Account.GuarantorComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Account.CoverageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="coverage" type="FHIR.Reference" />
    <element name="priority" type="FHIR.positiveInt" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Account.GuarantorComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="party" type="FHIR.Reference" />
    <element name="onHold" type="FHIR.boolean" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AccountStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionCardinalityBehavior">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionConditionKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionGroupingBehavior">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionList">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionParticipantType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionPrecheckBehavior">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionRelationshipType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionRequiredBehavior">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActionSelectionBehavior">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ActivityDefinition" label="ActivityDefinition" retrievable="true" primaryCodePath="topic">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="usage" type="FHIR.string" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contributor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contributor" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="library">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="kind" type="FHIR.ActivityDefinitionKind" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ActivityDefinition.ParticipantComponent" />
    </element>
    <element name="product">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="dosage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Dosage" />
    </element>
    <element name="bodySite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="transform" type="FHIR.Reference" />
    <element name="dynamicValue">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ActivityDefinition.DynamicValueComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ActivityDefinition.DynamicValueComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="path" type="FHIR.string" />
    <element name="language" type="FHIR.string" />
    <element name="expression" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ActivityDefinition.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ActivityParticipantType" />
    <element name="role" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActivityDefinitionKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ActivityParticipantType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Address" label="Address">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="use" type="FHIR.AddressUse" />
    <element name="type" type="FHIR.AddressType" />
    <element name="text" type="FHIR.string" />
    <element name="line">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="city" type="FHIR.string" />
    <element name="district" type="FHIR.string" />
    <element name="state" type="FHIR.string" />
    <element name="postalCode" type="FHIR.string" />
    <element name="country" type="FHIR.string" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AddressType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AddressUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AdministrativeGender">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="AdverseEvent" label="AdverseEvent" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="category" type="FHIR.AdverseEventCategory" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="reaction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="seriousness" type="FHIR.CodeableConcept" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="recorder" type="FHIR.Reference" />
    <element name="eventParticipant" type="FHIR.Reference" />
    <element name="description" type="FHIR.string" />
    <element name="suspectEntity">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AdverseEvent.SuspectEntityComponent" />
    </element>
    <element name="subjectMedicalHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="referenceDocument">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="study">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AdverseEvent.SuspectEntityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="instance" type="FHIR.Reference" />
    <element name="causality" type="FHIR.AdverseEventCausality" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AdverseEventCategory">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AdverseEventCausality">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="Age"/>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AggregationMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="AllergyIntolerance" label="AllergyIntolerance" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="clinicalStatus" type="FHIR.AllergyIntoleranceClinicalStatus" />
    <element name="verificationStatus" type="FHIR.AllergyIntoleranceVerificationStatus" />
    <element name="type" type="FHIR.AllergyIntoleranceType" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AllergyIntoleranceCategory" />
    </element>
    <element name="criticality" type="FHIR.AllergyIntoleranceCriticality" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="patient" type="FHIR.Reference" />
    <element name="onset">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="assertedDate" type="FHIR.dateTime" />
    <element name="recorder" type="FHIR.Reference" />
    <element name="asserter" type="FHIR.Reference" />
    <element name="lastOccurrence" type="FHIR.dateTime" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="reaction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AllergyIntolerance.ReactionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AllergyIntolerance.ReactionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="substance" type="FHIR.CodeableConcept" />
    <element name="manifestation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="onset" type="FHIR.dateTime" />
    <element name="severity" type="FHIR.AllergyIntoleranceSeverity" />
    <element name="exposureRoute" type="FHIR.CodeableConcept" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceCategory">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceClinicalStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceCriticality">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceSeverity">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AllergyIntoleranceVerificationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Annotation" label="Annotation">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="author">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="time" type="FHIR.dateTime" />
    <element name="text" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Appointment" label="Appointment" retrievable="true" primaryCodePath="serviceType">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.AppointmentStatus" />
    <element name="serviceCategory" type="FHIR.CodeableConcept" />
    <element name="serviceType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="appointmentType" type="FHIR.CodeableConcept" />
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="indication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="priority" type="FHIR.unsignedInt" />
    <element name="description" type="FHIR.string" />
    <element name="supportingInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="start" type="FHIR.instant" />
    <element name="end" type="FHIR.instant" />
    <element name="minutesDuration" type="FHIR.positiveInt" />
    <element name="slot">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="created" type="FHIR.dateTime" />
    <element name="comment" type="FHIR.string" />
    <element name="incomingReferral">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Appointment.ParticipantComponent" />
    </element>
    <element name="requestedPeriod">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Period" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Appointment.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="required" type="FHIR.ParticipantRequired" />
    <element name="status" type="FHIR.ParticipationStatus" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="AppointmentResponse" label="AppointmentResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="appointment" type="FHIR.Reference" />
    <element name="start" type="FHIR.instant" />
    <element name="end" type="FHIR.instant" />
    <element name="participantType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="participantStatus" type="FHIR.ParticipantStatus" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AppointmentStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AssertionDirectionType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AssertionOperatorType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AssertionResponseTypes">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Attachment" label="Attachment">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="contentType" type="FHIR.MimeType" />
    <element name="language" type="FHIR.code" />
    <element name="data" type="FHIR.base64Binary" />
    <element name="url" type="FHIR.uri" />
    <element name="size" type="FHIR.unsignedInt" />
    <element name="hash" type="FHIR.base64Binary" />
    <element name="title" type="FHIR.string" />
    <element name="creation" type="FHIR.dateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="AuditEvent" label="AuditEvent" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.Coding" />
    <element name="subtype">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="action" type="FHIR.AuditEventAction" />
    <element name="recorded" type="FHIR.instant" />
    <element name="outcome" type="FHIR.AuditEventOutcome" />
    <element name="purposeOfEvent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="agent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AuditEvent.AgentComponent" />
    </element>
    <element name="source" type="FHIR.AuditEvent.SourceComponent" />
    <element name="entity">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AuditEvent.EntityComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AuditEvent.Agent.NetworkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="address" type="FHIR.string" />
    <element name="type" type="FHIR.AuditEventAgentNetworkType" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AuditEvent.AgentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reference" type="FHIR.Reference" />
    <element name="userId" type="FHIR.Identifier" />
    <element name="altId" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="requestor" type="FHIR.boolean" />
    <element name="location" type="FHIR.Reference" />
    <element name="policy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="media" type="FHIR.Coding" />
    <element name="network" type="FHIR.AuditEvent.Agent.NetworkComponent" />
    <element name="purposeOfUse">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AuditEvent.Entity.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.string" />
    <element name="value" type="FHIR.base64Binary" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AuditEvent.EntityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="reference" type="FHIR.Reference" />
    <element name="type" type="FHIR.Coding" />
    <element name="role" type="FHIR.Coding" />
    <element name="lifecycle" type="FHIR.Coding" />
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="query" type="FHIR.base64Binary" />
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.AuditEvent.Entity.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="AuditEvent.SourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="site" type="FHIR.string" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AuditEventAction">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AuditEventAgentNetworkType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="AuditEventOutcome">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="BackboneElement" label="BackboneElement">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Basic" label="Basic" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="created" type="FHIR.date" />
    <element name="author" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Resource" name="Binary" label="Binary" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="contentType" type="FHIR.MimeType" />
    <element name="securityContext" type="FHIR.Reference" />
    <element name="content" type="FHIR.base64Binary" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="BindingStrength">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="BodySite" label="BodySite" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="qualifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="image">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
    <element name="patient" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Resource" name="Bundle" label="Bundle" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="type" type="FHIR.BundleType" />
    <element name="total" type="FHIR.unsignedInt" />
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Bundle.LinkComponent" />
    </element>
    <element name="entry">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Bundle.EntryComponent" />
    </element>
    <element name="signature" type="FHIR.Signature" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Bundle.Entry.RequestComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="method" type="FHIR.HTTPVerb" />
    <element name="url" type="FHIR.uri" />
    <element name="ifNoneMatch" type="FHIR.string" />
    <element name="ifModifiedSince" type="FHIR.instant" />
    <element name="ifMatch" type="FHIR.string" />
    <element name="ifNoneExist" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Bundle.Entry.ResponseComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="status" type="FHIR.string" />
    <element name="location" type="FHIR.uri" />
    <element name="etag" type="FHIR.string" />
    <element name="lastModified" type="FHIR.instant" />
    <element name="outcome" type="FHIR.Resource" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Bundle.Entry.SearchComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode" type="FHIR.SearchEntryMode" />
    <element name="score" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Bundle.EntryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Bundle.LinkComponent" />
      </typeSpecifier>
    </element>
    <element name="fullUrl" type="FHIR.uri" />
    <element name="resource" type="FHIR.Resource" />
    <element name="search" type="FHIR.Bundle.Entry.SearchComponent" />
    <element name="request" type="FHIR.Bundle.Entry.RequestComponent" />
    <element name="response" type="FHIR.Bundle.Entry.ResponseComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Bundle.LinkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="relation" type="FHIR.string" />
    <element name="url" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="BundleType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CapabilityStatement" label="CapabilityStatement" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="kind" type="FHIR.CapabilityStatementKind" />
    <element name="instantiates">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="software" type="FHIR.CapabilityStatement.SoftwareComponent" />
    <element name="implementation" type="FHIR.CapabilityStatement.ImplementationComponent" />
    <element name="fhirVersion" type="FHIR.id" />
    <element name="acceptUnknown" type="FHIR.UnknownContentCode" />
    <element name="format">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MimeType" />
    </element>
    <element name="patchFormat">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MimeType" />
    </element>
    <element name="implementationGuide">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="profile">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="rest">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.RestComponent" />
    </element>
    <element name="messaging">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.MessagingComponent" />
    </element>
    <element name="document">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.DocumentComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.DocumentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode" type="FHIR.DocumentMode" />
    <element name="documentation" type="FHIR.string" />
    <element name="profile" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.ImplementationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="url" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Messaging.EndpointComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="protocol" type="FHIR.Coding" />
    <element name="address" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Messaging.EventComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.Coding" />
    <element name="category" type="FHIR.MessageSignificanceCategory" />
    <element name="mode" type="FHIR.EventCapabilityMode" />
    <element name="focus" type="FHIR.ResourceType" />
    <element name="request" type="FHIR.Reference" />
    <element name="response" type="FHIR.Reference" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Messaging.SupportedMessageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode" type="FHIR.EventCapabilityMode" />
    <element name="definition" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.MessagingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Messaging.EndpointComponent" />
    </element>
    <element name="reliableCache" type="FHIR.unsignedInt" />
    <element name="documentation" type="FHIR.string" />
    <element name="supportedMessage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Messaging.SupportedMessageComponent" />
    </element>
    <element name="event">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Messaging.EventComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.InteractionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.SystemRestfulInteraction" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.OperationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="definition" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.Resource.InteractionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.TypeRestfulInteraction" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.Resource.SearchParamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="definition" type="FHIR.uri" />
    <element name="type" type="FHIR.SearchParamType" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.ResourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ResourceType" />
    <element name="profile" type="FHIR.Reference" />
    <element name="documentation" type="FHIR.markdown" />
    <element name="interaction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.Resource.InteractionComponent" />
    </element>
    <element name="versioning" type="FHIR.ResourceVersionPolicy" />
    <element name="readHistory" type="FHIR.boolean" />
    <element name="updateCreate" type="FHIR.boolean" />
    <element name="conditionalCreate" type="FHIR.boolean" />
    <element name="conditionalRead" type="FHIR.ConditionalReadStatus" />
    <element name="conditionalUpdate" type="FHIR.boolean" />
    <element name="conditionalDelete" type="FHIR.ConditionalDeleteStatus" />
    <element name="referencePolicy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ReferenceHandlingPolicy" />
    </element>
    <element name="searchInclude">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="searchRevInclude">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="searchParam">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.Resource.SearchParamComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.Security.CertificateComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.MimeType" />
    <element name="blob" type="FHIR.base64Binary" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.Rest.SecurityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="cors" type="FHIR.boolean" />
    <element name="service">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="certificate">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.Security.CertificateComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.RestComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode" type="FHIR.RestfulCapabilityMode" />
    <element name="documentation" type="FHIR.string" />
    <element name="security" type="FHIR.CapabilityStatement.Rest.SecurityComponent" />
    <element name="resource">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.ResourceComponent" />
    </element>
    <element name="interaction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.InteractionComponent" />
    </element>
    <element name="searchParam">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CapabilityStatement.Rest.Resource.SearchParamComponent" />
      </typeSpecifier>
    </element>
    <element name="operation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CapabilityStatement.Rest.OperationComponent" />
    </element>
    <element name="compartment">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CapabilityStatement.SoftwareComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="version" type="FHIR.string" />
    <element name="releaseDate" type="FHIR.dateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CapabilityStatementKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CarePlan" label="CarePlan" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.CarePlanStatus" />
    <element name="intent" type="FHIR.CarePlanIntent" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="title" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="author">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="careTeam">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="addresses">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="supportingInfo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="goal">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="activity">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CarePlan.ActivityComponent" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CarePlan.Activity.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="definition" type="FHIR.Reference" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="goal">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.CarePlanActivityStatus" />
    <element name="prohibited" type="FHIR.boolean" />
    <element name="scheduled">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="product">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="dailyAmount" type="FHIR.SimpleQuantity" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="description" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CarePlan.ActivityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="outcomeCodeableConcept">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="outcomeReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="progress">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="reference" type="FHIR.Reference" />
    <element name="detail" type="FHIR.CarePlan.Activity.DetailComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CarePlanActivityStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CarePlanIntent">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CarePlanStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CareTeam" label="CareTeam" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.CareTeamStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CareTeam.ParticipantComponent" />
    </element>
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="managingOrganization">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CareTeam.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="member" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CareTeamStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ChargeItem" label="ChargeItem" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="status" type="FHIR.ChargeItemStatus" />
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ChargeItem.ParticipantComponent" />
    </element>
    <element name="performingOrganization" type="FHIR.Reference" />
    <element name="requestingOrganization" type="FHIR.Reference" />
    <element name="quantity" type="FHIR.Quantity" />
    <element name="bodysite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="factorOverride" type="FHIR.decimal" />
    <element name="priceOverride" type="FHIR.Money" />
    <element name="overrideReason" type="FHIR.string" />
    <element name="enterer" type="FHIR.Reference" />
    <element name="enteredDate" type="FHIR.dateTime" />
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="service">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="account">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="supportingInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ChargeItem.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="actor" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ChargeItemStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Claim" label="Claim" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ClaimStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="use" type="FHIR.Use" />
    <element name="patient" type="FHIR.Reference" />
    <element name="billablePeriod" type="FHIR.Period" />
    <element name="created" type="FHIR.dateTime" />
    <element name="enterer" type="FHIR.Reference" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="priority" type="FHIR.CodeableConcept" />
    <element name="fundsReserve" type="FHIR.CodeableConcept" />
    <element name="related">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.RelatedComponent" />
    </element>
    <element name="prescription" type="FHIR.Reference" />
    <element name="originalPrescription" type="FHIR.Reference" />
    <element name="payee" type="FHIR.Claim.PayeeComponent" />
    <element name="referral" type="FHIR.Reference" />
    <element name="facility" type="FHIR.Reference" />
    <element name="careTeam">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.CareTeamComponent" />
    </element>
    <element name="information">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.InformationComponent" />
    </element>
    <element name="diagnosis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.DiagnosisComponent" />
    </element>
    <element name="procedure">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.ProcedureComponent" />
    </element>
    <element name="insurance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.InsuranceComponent" />
    </element>
    <element name="accident" type="FHIR.Claim.AccidentComponent" />
    <element name="employmentImpacted" type="FHIR.Period" />
    <element name="hospitalization" type="FHIR.Period" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.ItemComponent" />
    </element>
    <element name="total" type="FHIR.Money" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.AccidentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="date" type="FHIR.date" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="location">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.CareTeamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="provider" type="FHIR.Reference" />
    <element name="responsible" type="FHIR.boolean" />
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="qualification" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.DiagnosisComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="diagnosis">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="packageCode" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.InformationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="reason" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.InsuranceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="focal" type="FHIR.boolean" />
    <element name="coverage" type="FHIR.Reference" />
    <element name="businessArrangement" type="FHIR.string" />
    <element name="preAuthRef">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="claimResponse" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.Item.Detail.SubDetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.Item.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="subDetail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.Item.Detail.SubDetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="careTeamLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="diagnosisLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="procedureLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="informationLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="serviced">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="location">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="bodySite" type="FHIR.CodeableConcept" />
    <element name="subSite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="encounter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Claim.Item.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.PayeeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="resourceType" type="FHIR.Coding" />
    <element name="party" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.ProcedureComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="date" type="FHIR.dateTime" />
    <element name="procedure">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Claim.RelatedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="claim" type="FHIR.Reference" />
    <element name="relationship" type="FHIR.CodeableConcept" />
    <element name="reference" type="FHIR.Identifier" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ClaimResponse" label="ClaimResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ClaimResponseStatus" />
    <element name="patient" type="FHIR.Reference" />
    <element name="created" type="FHIR.dateTime" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="requestProvider" type="FHIR.Reference" />
    <element name="requestOrganization" type="FHIR.Reference" />
    <element name="request" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="payeeType" type="FHIR.CodeableConcept" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.ItemComponent" />
    </element>
    <element name="addItem">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.AddItemComponent" />
    </element>
    <element name="error">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.ErrorComponent" />
    </element>
    <element name="totalCost" type="FHIR.Money" />
    <element name="unallocDeductable" type="FHIR.Money" />
    <element name="totalBenefit" type="FHIR.Money" />
    <element name="payment" type="FHIR.ClaimResponse.PaymentComponent" />
    <element name="reserved" type="FHIR.Coding" />
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="processNote">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.ProcessNoteComponent" />
    </element>
    <element name="communicationRequest">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="insurance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.InsuranceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.AddItem.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="fee" type="FHIR.Money" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ClaimResponse.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.AddItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="fee" type="FHIR.Money" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ClaimResponse.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.AddItem.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.ErrorComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId" type="FHIR.positiveInt" />
    <element name="detailSequenceLinkId" type="FHIR.positiveInt" />
    <element name="subdetailSequenceLinkId" type="FHIR.positiveInt" />
    <element name="code" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.InsuranceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="focal" type="FHIR.boolean" />
    <element name="coverage" type="FHIR.Reference" />
    <element name="businessArrangement" type="FHIR.string" />
    <element name="preAuthRef">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="claimResponse" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.Item.AdjudicationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="reason" type="FHIR.CodeableConcept" />
    <element name="amount" type="FHIR.Money" />
    <element name="value" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.Item.Detail.SubDetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId" type="FHIR.positiveInt" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ClaimResponse.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.Item.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId" type="FHIR.positiveInt" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ClaimResponse.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
    <element name="subDetail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.Item.Detail.SubDetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId" type="FHIR.positiveInt" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.Item.AdjudicationComponent" />
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClaimResponse.Item.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.PaymentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="adjustment" type="FHIR.Money" />
    <element name="date" type="FHIR.date" />
    <element name="amount" type="FHIR.Money" />
    <element name="identifier" type="FHIR.Identifier" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClaimResponse.ProcessNoteComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="number" type="FHIR.positiveInt" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="text" type="FHIR.string" />
    <element name="language" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ClaimResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ClaimStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ClinicalImpression" label="ClinicalImpression" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ClinicalImpressionStatus" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.string" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="effective">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="date" type="FHIR.dateTime" />
    <element name="assessor" type="FHIR.Reference" />
    <element name="previous" type="FHIR.Reference" />
    <element name="problem">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="investigation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClinicalImpression.InvestigationComponent" />
    </element>
    <element name="protocol">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="summary" type="FHIR.string" />
    <element name="finding">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ClinicalImpression.FindingComponent" />
    </element>
    <element name="prognosisCodeableConcept">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="prognosisReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClinicalImpression.FindingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="basis" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ClinicalImpression.InvestigationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ClinicalImpressionStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CodeSystem" label="CodeSystem" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="caseSensitive" type="FHIR.boolean" />
    <element name="valueSet" type="FHIR.uri" />
    <element name="hierarchyMeaning" type="FHIR.CodeSystemHierarchyMeaning" />
    <element name="compositional" type="FHIR.boolean" />
    <element name="versionNeeded" type="FHIR.boolean" />
    <element name="content" type="FHIR.CodeSystemContentMode" />
    <element name="count" type="FHIR.unsignedInt" />
    <element name="filter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeSystem.FilterComponent" />
    </element>
    <element name="property">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeSystem.PropertyComponent" />
    </element>
    <element name="concept">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeSystem.ConceptComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CodeSystem.Concept.DesignationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="language" type="FHIR.code" />
    <element name="use" type="FHIR.Coding" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CodeSystem.Concept.PropertyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CodeSystem.ConceptComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="definition" type="FHIR.string" />
    <element name="designation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeSystem.Concept.DesignationComponent" />
    </element>
    <element name="property">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeSystem.Concept.PropertyComponent" />
    </element>
    <element name="concept">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeSystem.ConceptComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CodeSystem.FilterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="description" type="FHIR.string" />
    <element name="operator">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.FilterOperator" />
    </element>
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CodeSystem.PropertyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="uri" type="FHIR.uri" />
    <element name="description" type="FHIR.string" />
    <element name="type" type="FHIR.PropertyType" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CodeSystemContentMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CodeSystemHierarchyMeaning">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CodeableConcept" label="CodeableConcept">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="coding">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="text" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Coding" label="Coding" primaryCodePath="code">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="userSelected" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Communication" label="Communication" retrievable="true" primaryCodePath="reasonCode">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.CommunicationStatus" />
    <element name="notDone" type="FHIR.boolean" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="medium">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="recipient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="context" type="FHIR.Reference" />
    <element name="sent" type="FHIR.dateTime" />
    <element name="received" type="FHIR.dateTime" />
    <element name="sender" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="payload">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Communication.PayloadComponent" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Communication.PayloadComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CommunicationPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CommunicationRequest" label="CommunicationRequest" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.CommunicationRequestStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="priority" type="FHIR.CommunicationPriority" />
    <element name="medium">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="recipient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="context" type="FHIR.Reference" />
    <element name="payload">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CommunicationRequest.PayloadComponent" />
    </element>
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="sender" type="FHIR.Reference" />
    <element name="requester" type="FHIR.CommunicationRequest.RequesterComponent" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CommunicationRequest.PayloadComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CommunicationRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CommunicationRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CommunicationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CompartmentCode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="CompartmentDefinition" label="CompartmentDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="code" type="FHIR.CompartmentType" />
    <element name="search" type="FHIR.boolean" />
    <element name="resource">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CompartmentDefinition.ResourceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="CompartmentDefinition.ResourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.ResourceType" />
    <element name="param">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CompartmentType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Composition" label="Composition" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.CompositionStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="class" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="author">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="title" type="FHIR.string" />
    <element name="confidentiality" type="FHIR.DocumentConfidentiality" />
    <element name="attester">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Composition.AttesterComponent" />
    </element>
    <element name="custodian" type="FHIR.Reference" />
    <element name="relatesTo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Composition.RelatesToComponent" />
    </element>
    <element name="event">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Composition.EventComponent" />
    </element>
    <element name="section">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Composition.SectionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Composition.AttesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CompositionAttestationMode" />
    </element>
    <element name="time" type="FHIR.dateTime" />
    <element name="party" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Composition.EventComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Composition.RelatesToComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.DocumentRelationshipType" />
    <element name="target">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Composition.SectionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="title" type="FHIR.string" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="text" type="FHIR.Narrative" />
    <element name="mode" type="FHIR.SectionMode" />
    <element name="orderedBy" type="FHIR.CodeableConcept" />
    <element name="entry">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="emptyReason" type="FHIR.CodeableConcept" />
    <element name="section">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Composition.SectionComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CompositionAttestationMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CompositionStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ConceptMap" label="ConceptMap" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="source">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="target">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="group">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ConceptMap.GroupComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ConceptMap.Group.Element.Target.DependsOnComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="property" type="FHIR.uri" />
    <element name="system" type="FHIR.uri" />
    <element name="code" type="FHIR.string" />
    <element name="display" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ConceptMap.Group.Element.TargetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="equivalence" type="FHIR.ConceptMapEquivalence" />
    <element name="comment" type="FHIR.string" />
    <element name="dependsOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ConceptMap.Group.Element.Target.DependsOnComponent" />
    </element>
    <element name="product">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ConceptMap.Group.Element.Target.DependsOnComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ConceptMap.Group.ElementComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ConceptMap.Group.Element.TargetComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ConceptMap.Group.UnmappedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="mode" type="FHIR.ConceptMapGroupUnmappedMode" />
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="url" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ConceptMap.GroupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="source" type="FHIR.uri" />
    <element name="target" type="FHIR.uri" />
    <element name="element">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ConceptMap.Group.ElementComponent" />
    </element>
    <element name="unmapped" type="FHIR.ConceptMap.Group.UnmappedComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConceptMapEquivalence">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConceptMapGroupUnmappedMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Condition" label="Condition" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="clinicalStatus" type="FHIR.ConditionClinicalStatus" />
    <element name="verificationStatus" type="FHIR.ConditionVerificationStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="severity" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="bodySite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="onset">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="abatement">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="assertedDate" type="FHIR.dateTime" />
    <element name="asserter" type="FHIR.Reference" />
    <element name="stage" type="FHIR.Condition.StageComponent" />
    <element name="evidence">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Condition.EvidenceComponent" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Condition.EvidenceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Condition.StageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="summary" type="FHIR.CodeableConcept" />
    <element name="assessment">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConditionClinicalStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConditionVerificationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConditionalDeleteStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConditionalReadStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Consent" label="Consent" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.ConsentState" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="patient" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="dateTime" type="FHIR.dateTime" />
    <element name="consentingParty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="actor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.ActorComponent" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="organization">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="source">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="policy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.PolicyComponent" />
    </element>
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="purpose">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="dataPeriod" type="FHIR.Period" />
    <element name="data">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.DataComponent" />
    </element>
    <element name="except">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.ExceptComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.ActorComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="reference" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.DataComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="meaning" type="FHIR.ConsentDataMeaning" />
    <element name="reference" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.Except.ActorComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="reference" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.Except.DataComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="meaning" type="FHIR.ConsentDataMeaning" />
    <element name="reference" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.ExceptComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ConsentExceptType" />
    <element name="period" type="FHIR.Period" />
    <element name="actor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.Except.ActorComponent" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="purpose">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="class">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="dataPeriod" type="FHIR.Period" />
    <element name="data">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Consent.Except.DataComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Consent.PolicyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="authority" type="FHIR.uri" />
    <element name="uri" type="FHIR.uri" />
    <element name="Rule" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConsentDataMeaning">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConsentExceptType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConsentState">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ConstraintSeverity">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContactDetail" label="ContactDetail">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContactPoint" label="ContactPoint">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.ContactPointSystem" />
    <element name="value" type="FHIR.string" />
    <element name="use" type="FHIR.ContactPointUse" />
    <element name="rank" type="FHIR.positiveInt" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContactPointSystem">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContactPointUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContentType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Contract" label="Contract" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.ContractStatus" />
    <element name="issued" type="FHIR.dateTime" />
    <element name="applies" type="FHIR.Period" />
    <element name="subject">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="authority">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="domain">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="decisionType" type="FHIR.CodeableConcept" />
    <element name="contentDerivative" type="FHIR.CodeableConcept" />
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="agent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.AgentComponent" />
    </element>
    <element name="signer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.SignerComponent" />
    </element>
    <element name="valuedItem">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.ValuedItemComponent" />
    </element>
    <element name="term">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.TermComponent" />
    </element>
    <element name="binding">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="friendly">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.FriendlyComponent" />
    </element>
    <element name="legal">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.LegalComponent" />
    </element>
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.RuleComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.AgentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="role">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.FriendlyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.LegalComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.SignerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.Coding" />
    <element name="party" type="FHIR.Reference" />
    <element name="signature">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Signature" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.Term.AgentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="role">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.Term.ValuedItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="entity">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="effectiveTime" type="FHIR.dateTime" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="points" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.TermComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="issued" type="FHIR.dateTime" />
    <element name="applies" type="FHIR.Period" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subType" type="FHIR.CodeableConcept" />
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="agent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.Term.AgentComponent" />
    </element>
    <element name="text" type="FHIR.string" />
    <element name="valuedItem">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contract.Term.ValuedItemComponent" />
    </element>
    <element name="group">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Contract.TermComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Contract.ValuedItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="entity">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="effectiveTime" type="FHIR.dateTime" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="points" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContractStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Contributor" label="Contributor">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ContributorType" />
    <element name="name" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ContributorType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="Count"/>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Coverage" label="Coverage" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.CoverageStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="policyHolder" type="FHIR.Reference" />
    <element name="subscriber" type="FHIR.Reference" />
    <element name="beneficiary" type="FHIR.Reference" />
    <element name="relationship" type="FHIR.CodeableConcept" />
    <element name="period" type="FHIR.Period" />
    <element name="payor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="grouping" type="FHIR.Coverage.GroupingComponent" />
    <element name="dependent" type="FHIR.string" />
    <element name="sequence" type="FHIR.string" />
    <element name="order" type="FHIR.positiveInt" />
    <element name="network" type="FHIR.string" />
    <element name="contract">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Coverage.GroupingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="group" type="FHIR.string" />
    <element name="subGroup" type="FHIR.string" />
    <element name="plan" type="FHIR.string" />
    <element name="subPlan" type="FHIR.string" />
    <element name="class" type="FHIR.string" />
    <element name="subClass" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="CoverageStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DataElement" label="DataElement" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="stringency" type="FHIR.DataElementStringency" />
    <element name="mapping">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataElement.MappingComponent" />
    </element>
    <element name="element">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ElementDefinition" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DataElement.MappingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identity" type="FHIR.id" />
    <element name="uri" type="FHIR.uri" />
    <element name="name" type="FHIR.string" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DataElementStringency">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DataRequirement" label="DataRequirement">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.FHIRAllTypes" />
    <element name="profile">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="mustSupport">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="codeFilter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
    <element name="dateFilter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DayOfWeek">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DaysOfWeek">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DetectedIssue" label="DetectedIssue" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.DetectedIssueStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="severity" type="FHIR.DetectedIssueSeverity" />
    <element name="patient" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="author" type="FHIR.Reference" />
    <element name="implicated">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="detail" type="FHIR.string" />
    <element name="reference" type="FHIR.uri" />
    <element name="mitigation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DetectedIssue.MitigationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DetectedIssue.MitigationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action" type="FHIR.CodeableConcept" />
    <element name="date" type="FHIR.dateTime" />
    <element name="author" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DetectedIssueSeverity">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DetectedIssueStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Device" label="Device" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="udi" type="FHIR.Device.UdiComponent" />
    <element name="status" type="FHIR.FHIRDeviceStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="lotNumber" type="FHIR.string" />
    <element name="manufacturer" type="FHIR.string" />
    <element name="manufactureDate" type="FHIR.dateTime" />
    <element name="expirationDate" type="FHIR.dateTime" />
    <element name="model" type="FHIR.string" />
    <element name="version" type="FHIR.string" />
    <element name="patient" type="FHIR.Reference" />
    <element name="owner" type="FHIR.Reference" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="url" type="FHIR.uri" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="safety">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Device.UdiComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="deviceIdentifier" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="jurisdiction" type="FHIR.uri" />
    <element name="carrierHRF" type="FHIR.string" />
    <element name="carrierAIDC" type="FHIR.base64Binary" />
    <element name="issuer" type="FHIR.uri" />
    <element name="entryType" type="FHIR.UDIEntryType" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DeviceComponent" label="DeviceComponent" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="lastSystemChange" type="FHIR.instant" />
    <element name="source" type="FHIR.Reference" />
    <element name="parent" type="FHIR.Reference" />
    <element name="operationalStatus">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="parameterGroup" type="FHIR.CodeableConcept" />
    <element name="measurementPrinciple" type="FHIR.MeasmntPrinciple" />
    <element name="productionSpecification">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DeviceComponent.ProductionSpecificationComponent" />
    </element>
    <element name="languageCode" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DeviceComponent.ProductionSpecificationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="specType" type="FHIR.CodeableConcept" />
    <element name="componentId" type="FHIR.Identifier" />
    <element name="productionSpec" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DeviceMetric" label="DeviceMetric" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="unit" type="FHIR.CodeableConcept" />
    <element name="source" type="FHIR.Reference" />
    <element name="parent" type="FHIR.Reference" />
    <element name="operationalStatus" type="FHIR.DeviceMetricOperationalStatus" />
    <element name="color" type="FHIR.DeviceMetricColor" />
    <element name="category" type="FHIR.DeviceMetricCategory" />
    <element name="measurementPeriod" type="FHIR.Timing" />
    <element name="calibration">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DeviceMetric.CalibrationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DeviceMetric.CalibrationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.DeviceMetricCalibrationType" />
    <element name="state" type="FHIR.DeviceMetricCalibrationState" />
    <element name="time" type="FHIR.instant" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceMetricCalibrationState">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceMetricCalibrationType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceMetricCategory">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceMetricColor">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceMetricOperationalStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DeviceRequest" label="DeviceRequest" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="priorRequest">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.DeviceRequestStatus" />
    <element name="intent" type="FHIR.CodeableConcept" />
    <element name="priority" type="FHIR.RequestPriority" />
    <element name="code">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.DeviceRequest.RequesterComponent" />
    <element name="performerType" type="FHIR.CodeableConcept" />
    <element name="performer" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="supportingInfo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="relevantHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DeviceRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DeviceUseStatement" label="DeviceUseStatement" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.DeviceUseStatementStatus" />
    <element name="subject" type="FHIR.Reference" />
    <element name="whenUsed" type="FHIR.Period" />
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
      </typeSpecifier>
    </element>
    <element name="recordedOn" type="FHIR.dateTime" />
    <element name="source" type="FHIR.Reference" />
    <element name="device" type="FHIR.Reference" />
    <element name="indication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="bodySite" type="FHIR.CodeableConcept" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DeviceUseStatementStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DiagnosticReport" label="DiagnosticReport" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.DiagnosticReportStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="effective">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="issued" type="FHIR.instant" />
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DiagnosticReport.PerformerComponent" />
    </element>
    <element name="specimen">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="result">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="imagingStudy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="image">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DiagnosticReport.ImageComponent" />
    </element>
    <element name="conclusion" type="FHIR.string" />
    <element name="codedDiagnosis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="presentedForm">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DiagnosticReport.ImageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="comment" type="FHIR.string" />
    <element name="link" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DiagnosticReport.PerformerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="actor" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DiagnosticReportStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DigitalMediaType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DiscriminatorType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="Distance"/>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DocumentConfidentiality">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DocumentManifest" label="DocumentManifest" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="masterIdentifier" type="FHIR.Identifier" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.DocumentReferenceStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="created" type="FHIR.dateTime" />
    <element name="author">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="recipient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="source" type="FHIR.uri" />
    <element name="description" type="FHIR.string" />
    <element name="content">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DocumentManifest.ContentComponent" />
    </element>
    <element name="related">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DocumentManifest.RelatedComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentManifest.ContentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="p">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentManifest.RelatedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="ref" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DocumentMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="DocumentReference" label="DocumentReference" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="masterIdentifier" type="FHIR.Identifier" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.DocumentReferenceStatus" />
    <element name="docStatus" type="FHIR.ReferredDocumentStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="class" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="created" type="FHIR.dateTime" />
    <element name="indexed" type="FHIR.instant" />
    <element name="author">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="authenticator" type="FHIR.Reference" />
    <element name="custodian" type="FHIR.Reference" />
    <element name="relatesTo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DocumentReference.RelatesToComponent" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="securityLabel">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DocumentReference.ContentComponent" />
    </element>
    <element name="context" type="FHIR.DocumentReference.ContextComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentReference.ContentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="attachment" type="FHIR.Attachment" />
    <element name="format" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentReference.Context.RelatedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="ref" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentReference.ContextComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="encounter" type="FHIR.Reference" />
    <element name="event">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="facilityType" type="FHIR.CodeableConcept" />
    <element name="practiceSetting" type="FHIR.CodeableConcept" />
    <element name="sourcePatientInfo" type="FHIR.Reference" />
    <element name="related">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DocumentReference.Context.RelatedComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="DocumentReference.RelatesToComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.DocumentRelationshipType" />
    <element name="target" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DocumentReferenceStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="DocumentRelationshipType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Resource" name="DomainResource" label="DomainResource" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Dosage" label="Dosage">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.integer" />
    <element name="text" type="FHIR.string" />
    <element name="additionalInstruction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="patientInstruction" type="FHIR.string" />
    <element name="timing" type="FHIR.Timing" />
    <element name="asNeeded">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="site" type="FHIR.CodeableConcept" />
    <element name="route" type="FHIR.CodeableConcept" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="dose">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SimpleQuantity" />
      </typeSpecifier>
    </element>
    <element name="maxDosePerPeriod" type="FHIR.Ratio" />
    <element name="maxDosePerAdministration" type="FHIR.SimpleQuantity" />
    <element name="maxDosePerLifetime" type="FHIR.SimpleQuantity" />
    <element name="rate">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SimpleQuantity" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="Duration"/>
  <typeInfo xsi:type="ClassInfo" name="Element" label="Element">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ElementDefinition" label="ElementDefinition">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="path" type="FHIR.string" />
    <element name="representation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PropertyRepresentation" />
    </element>
    <element name="sliceName" type="FHIR.string" />
    <element name="label" type="FHIR.string" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="slicing" type="FHIR.Element" />
    <element name="short" type="FHIR.string" />
    <element name="definition" type="FHIR.markdown" />
    <element name="comment" type="FHIR.markdown" />
    <element name="requirements" type="FHIR.markdown" />
    <element name="alias">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="min" type="FHIR.unsignedInt" />
    <element name="max" type="FHIR.string" />
    <element name="base" type="FHIR.Element" />
    <element name="contentReference" type="FHIR.uri" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
    <element name="defaultValue">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
    <element name="meaningWhenMissing" type="FHIR.markdown" />
    <element name="orderMeaning" type="FHIR.string" />
    <element name="fixed">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
    <element name="pattern">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
    <element name="example">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
    <element name="minValue">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
      </typeSpecifier>
    </element>
    <element name="maxValue">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
      </typeSpecifier>
    </element>
    <element name="maxLength" type="FHIR.integer" />
    <element name="condition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.id" />
    </element>
    <element name="constraint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
    <element name="mustSupport" type="FHIR.boolean" />
    <element name="isModifier" type="FHIR.boolean" />
    <element name="isSummary" type="FHIR.boolean" />
    <element name="binding" type="FHIR.Element" />
    <element name="mapping">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Element" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="EligibilityRequest" label="EligibilityRequest" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EligibilityRequestStatus" />
    <element name="priority" type="FHIR.CodeableConcept" />
    <element name="patient" type="FHIR.Reference" />
    <element name="serviced">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="created" type="FHIR.dateTime" />
    <element name="enterer" type="FHIR.Reference" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="facility" type="FHIR.Reference" />
    <element name="coverage" type="FHIR.Reference" />
    <element name="businessArrangement" type="FHIR.string" />
    <element name="benefitCategory" type="FHIR.CodeableConcept" />
    <element name="benefitSubCategory" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EligibilityRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="EligibilityResponse" label="EligibilityResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EligibilityResponseStatus" />
    <element name="created" type="FHIR.dateTime" />
    <element name="requestProvider" type="FHIR.Reference" />
    <element name="requestOrganization" type="FHIR.Reference" />
    <element name="request" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="inforce" type="FHIR.boolean" />
    <element name="insurance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.EligibilityResponse.InsuranceComponent" />
    </element>
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="error">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.EligibilityResponse.ErrorComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EligibilityResponse.ErrorComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EligibilityResponse.Insurance.BenefitBalance.FinancialComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="allowed">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
      </typeSpecifier>
    </element>
    <element name="used">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EligibilityResponse.Insurance.BenefitBalanceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="subCategory" type="FHIR.CodeableConcept" />
    <element name="excluded" type="FHIR.boolean" />
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="network" type="FHIR.CodeableConcept" />
    <element name="unit" type="FHIR.CodeableConcept" />
    <element name="term" type="FHIR.CodeableConcept" />
    <element name="financial">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.EligibilityResponse.Insurance.BenefitBalance.FinancialComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EligibilityResponse.InsuranceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="coverage" type="FHIR.Reference" />
    <element name="contract" type="FHIR.Reference" />
    <element name="benefitBalance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.EligibilityResponse.Insurance.BenefitBalanceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EligibilityResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Encounter" label="Encounter" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EncounterStatus" />
    <element name="class" type="FHIR.Coding" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="priority" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="episodeOfCare">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="incomingReferral">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Encounter.ParticipantComponent" />
    </element>
    <element name="appointment" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="length" type="FHIR.Duration" />
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="diagnosis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Encounter.DiagnosisComponent" />
    </element>
    <element name="account">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="hospitalization" type="FHIR.Encounter.HospitalizationComponent" />
    <element name="location">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Encounter.LocationComponent" />
    </element>
    <element name="serviceProvider" type="FHIR.Reference" />
    <element name="partOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.ClassHistoryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="class" type="FHIR.Coding" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.DiagnosisComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="condition" type="FHIR.Reference" />
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="rank" type="FHIR.positiveInt" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.HospitalizationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="preAdmissionIdentifier" type="FHIR.Identifier" />
    <element name="origin" type="FHIR.Reference" />
    <element name="admitSource" type="FHIR.CodeableConcept" />
    <element name="reAdmission" type="FHIR.CodeableConcept" />
    <element name="dietPreference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialCourtesy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialArrangement">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="destination" type="FHIR.Reference" />
    <element name="dischargeDisposition" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.LocationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="status" type="FHIR.EncounterLocationStatus" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="individual" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Encounter.StatusHistoryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="status" type="FHIR.EncounterStatus" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EncounterLocationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EncounterStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Endpoint" label="Endpoint" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EndpointStatus" />
    <element name="connectionType" type="FHIR.Coding" />
    <element name="name" type="FHIR.string" />
    <element name="managingOrganization" type="FHIR.Reference" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="payloadType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="payloadMimeType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MimeType" />
    </element>
    <element name="address" type="FHIR.uri" />
    <element name="header">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EndpointStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="EnrollmentRequest" label="EnrollmentRequest" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EnrollmentRequestStatus" />
    <element name="created" type="FHIR.dateTime" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="subject" type="FHIR.Reference" />
    <element name="coverage" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EnrollmentRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="EnrollmentResponse" label="EnrollmentResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EnrollmentResponseStatus" />
    <element name="request" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="created" type="FHIR.dateTime" />
    <element name="organization" type="FHIR.Reference" />
    <element name="requestProvider" type="FHIR.Reference" />
    <element name="requestOrganization" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EnrollmentResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="EpisodeOfCare" label="EpisodeOfCare" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.EpisodeOfCareStatus" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="diagnosis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.EpisodeOfCare.DiagnosisComponent" />
    </element>
    <element name="patient" type="FHIR.Reference" />
    <element name="managingOrganization" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="referralRequest">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="careManager" type="FHIR.Reference" />
    <element name="team">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="account">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EpisodeOfCare.DiagnosisComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="condition" type="FHIR.Reference" />
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="rank" type="FHIR.positiveInt" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="EpisodeOfCare.StatusHistoryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="status" type="FHIR.EpisodeOfCareStatus" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EpisodeOfCareStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EventCapabilityMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="EventTiming">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ExpansionProfile" label="ExpansionProfile" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="fixedVersion">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExpansionProfile.FixedVersionComponent" />
    </element>
    <element name="excludedSystem" type="FHIR.ExpansionProfile.ExcludedSystemComponent" />
    <element name="includeDesignations" type="FHIR.boolean" />
    <element name="designation" type="FHIR.ExpansionProfile.DesignationComponent" />
    <element name="includeDefinition" type="FHIR.boolean" />
    <element name="activeOnly" type="FHIR.boolean" />
    <element name="excludeNested" type="FHIR.boolean" />
    <element name="excludeNotForUI" type="FHIR.boolean" />
    <element name="excludePostCoordinated" type="FHIR.boolean" />
    <element name="displayLanguage" type="FHIR.code" />
    <element name="limitedExpansion" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.Designation.Exclude.DesignationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="language" type="FHIR.code" />
    <element name="use" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.Designation.ExcludeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="designation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExpansionProfile.Designation.Exclude.DesignationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.Designation.Include.DesignationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="language" type="FHIR.code" />
    <element name="use" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.Designation.IncludeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="designation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExpansionProfile.Designation.Include.DesignationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.DesignationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="include" type="FHIR.ExpansionProfile.Designation.IncludeComponent" />
    <element name="exclude" type="FHIR.ExpansionProfile.Designation.ExcludeComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.ExcludedSystemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExpansionProfile.FixedVersionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="mode" type="FHIR.SystemVersionProcessingMode" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ExplanationOfBenefit" label="ExplanationOfBenefit" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ExplanationOfBenefitStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="patient" type="FHIR.Reference" />
    <element name="billablePeriod" type="FHIR.Period" />
    <element name="created" type="FHIR.dateTime" />
    <element name="enterer" type="FHIR.Reference" />
    <element name="insurer" type="FHIR.Reference" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="referral" type="FHIR.Reference" />
    <element name="facility" type="FHIR.Reference" />
    <element name="claim" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="related">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.RelatedComponent" />
    </element>
    <element name="prescription" type="FHIR.Reference" />
    <element name="originalPrescription" type="FHIR.Reference" />
    <element name="payee" type="FHIR.ExplanationOfBenefit.PayeeComponent" />
    <element name="information">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.InformationComponent" />
    </element>
    <element name="careTeam">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.CareTeamComponent" />
    </element>
    <element name="diagnosis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.DiagnosisComponent" />
    </element>
    <element name="procedure">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.ProcedureComponent" />
    </element>
    <element name="precedence" type="FHIR.positiveInt" />
    <element name="insurance" type="FHIR.ExplanationOfBenefit.InsuranceComponent" />
    <element name="accident" type="FHIR.ExplanationOfBenefit.AccidentComponent" />
    <element name="employmentImpacted" type="FHIR.Period" />
    <element name="hospitalization" type="FHIR.Period" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.ItemComponent" />
    </element>
    <element name="addItem">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.AddItemComponent" />
    </element>
    <element name="totalCost" type="FHIR.Money" />
    <element name="unallocDeductable" type="FHIR.Money" />
    <element name="totalBenefit" type="FHIR.Money" />
    <element name="payment" type="FHIR.ExplanationOfBenefit.PaymentComponent" />
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="processNote">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.ProcessNoteComponent" />
    </element>
    <element name="benefitBalance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.BenefitBalanceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.AccidentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="date" type="FHIR.date" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="location">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.AddItem.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="fee" type="FHIR.Money" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.AddItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="fee" type="FHIR.Money" />
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.AddItem.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.BenefitBalance.FinancialComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="allowed">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
      </typeSpecifier>
    </element>
    <element name="used">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.BenefitBalanceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="subCategory" type="FHIR.CodeableConcept" />
    <element name="excluded" type="FHIR.boolean" />
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="network" type="FHIR.CodeableConcept" />
    <element name="unit" type="FHIR.CodeableConcept" />
    <element name="term" type="FHIR.CodeableConcept" />
    <element name="financial">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.BenefitBalance.FinancialComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.CareTeamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="provider" type="FHIR.Reference" />
    <element name="responsible" type="FHIR.boolean" />
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="qualification" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.DiagnosisComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="diagnosis">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="packageCode" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.InformationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="reason" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.InsuranceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="coverage" type="FHIR.Reference" />
    <element name="preAuthRef">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.Item.AdjudicationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="reason" type="FHIR.CodeableConcept" />
    <element name="amount" type="FHIR.Money" />
    <element name="value" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.Item.Detail.SubDetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.Item.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
      </typeSpecifier>
    </element>
    <element name="subDetail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.Item.Detail.SubDetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="careTeamLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="diagnosisLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="procedureLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="informationLinkId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="revenue" type="FHIR.CodeableConcept" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="service" type="FHIR.CodeableConcept" />
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="programCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="serviced">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="location">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="unitPrice" type="FHIR.Money" />
    <element name="factor" type="FHIR.decimal" />
    <element name="net" type="FHIR.Money" />
    <element name="udi">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="bodySite" type="FHIR.CodeableConcept" />
    <element name="subSite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="encounter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="noteNumber">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.positiveInt" />
    </element>
    <element name="adjudication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.Item.AdjudicationComponent" />
    </element>
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ExplanationOfBenefit.Item.DetailComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.PayeeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="resourceType" type="FHIR.CodeableConcept" />
    <element name="party" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.PaymentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="adjustment" type="FHIR.Money" />
    <element name="date" type="FHIR.date" />
    <element name="amount" type="FHIR.Money" />
    <element name="identifier" type="FHIR.Identifier" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.ProcedureComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequence" type="FHIR.positiveInt" />
    <element name="date" type="FHIR.dateTime" />
    <element name="procedure">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.ProcessNoteComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="number" type="FHIR.positiveInt" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="text" type="FHIR.string" />
    <element name="language" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ExplanationOfBenefit.RelatedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="claim" type="FHIR.Reference" />
    <element name="relationship" type="FHIR.CodeableConcept" />
    <element name="reference" type="FHIR.Identifier" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ExplanationOfBenefitStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Extension" label="Extension">
    <element name="id" type="FHIR.uri" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ExtensionContext">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FHIRAllTypes">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FHIRDefinedType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FHIRDeviceStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FHIRSubstanceStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FamilyHistoryStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="FamilyMemberHistory" label="FamilyMemberHistory" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.FamilyHistoryStatus" />
    <element name="notDone" type="FHIR.boolean" />
    <element name="patient" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="name" type="FHIR.string" />
    <element name="relationship" type="FHIR.CodeableConcept" />
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="born">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="age">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="estimatedAge" type="FHIR.boolean" />
    <element name="deceased">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="condition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.FamilyMemberHistory.ConditionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="FamilyMemberHistory.ConditionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="onset">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
      </typeSpecifier>
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FilterOperator">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Flag" label="Flag" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.FlagStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="author" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="FlagStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Goal" label="Goal" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.GoalStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="priority" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="start">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="target" type="FHIR.Goal.TargetComponent" />
    <element name="statusDate" type="FHIR.date" />
    <element name="statusReason" type="FHIR.string" />
    <element name="expressedBy" type="FHIR.Reference" />
    <element name="addresses">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="outcomeCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="outcomeReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Goal.TargetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="measure" type="FHIR.CodeableConcept" />
    <element name="detail">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="due">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GoalStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GraphCompartmentRule">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="GraphDefinition" label="GraphDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="start" type="FHIR.ResourceType" />
    <element name="profile" type="FHIR.uri" />
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.GraphDefinition.LinkComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="GraphDefinition.Link.Target.CompartmentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CompartmentCode" />
    <element name="rule" type="FHIR.GraphCompartmentRule" />
    <element name="expression" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="GraphDefinition.Link.TargetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ResourceType" />
    <element name="profile" type="FHIR.uri" />
    <element name="compartment">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.GraphDefinition.Link.Target.CompartmentComponent" />
    </element>
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="GraphDefinition.LinkComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="GraphDefinition.LinkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="path" type="FHIR.string" />
    <element name="sliceName" type="FHIR.string" />
    <element name="min" type="FHIR.integer" />
    <element name="max" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.GraphDefinition.Link.TargetComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Group" label="Group" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="type" type="FHIR.GroupType" />
    <element name="actual" type="FHIR.boolean" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="name" type="FHIR.string" />
    <element name="quantity" type="FHIR.unsignedInt" />
    <element name="characteristic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Group.CharacteristicComponent" />
    </element>
    <element name="member">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Group.MemberComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Group.CharacteristicComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
    <element name="exclude" type="FHIR.boolean" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Group.MemberComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="entity" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="inactive" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GroupType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="GuidanceResponse" label="GuidanceResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="requestId" type="FHIR.id" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="module" type="FHIR.Reference" />
    <element name="status" type="FHIR.GuidanceResponseStatus" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrenceDateTime" type="FHIR.dateTime" />
    <element name="performer" type="FHIR.Reference" />
    <element name="reason">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="evaluationMessage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="outputParameters" type="FHIR.Reference" />
    <element name="result" type="FHIR.Reference" />
    <element name="dataRequirement">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataRequirement" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GuidanceResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GuideDependencyType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="GuidePageKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="HTTPVerb">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="HealthcareService" label="HealthcareService" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="providedBy" type="FHIR.Reference" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="location">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="comment" type="FHIR.string" />
    <element name="extraDetails" type="FHIR.string" />
    <element name="photo" type="FHIR.Attachment" />
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="coverageArea">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="serviceProvisionCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="eligibility" type="FHIR.CodeableConcept" />
    <element name="programName">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="characteristic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="referralMethod">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="appointmentRequired" type="FHIR.boolean" />
    <element name="availableTime">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HealthcareService.AvailableTimeComponent" />
    </element>
    <element name="notAvailable">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HealthcareService.NotAvailableComponent" />
    </element>
    <element name="availabilityExceptions" type="FHIR.string" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="HealthcareService.AvailableTimeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="daysOfWeek">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DaysOfWeek" />
    </element>
    <element name="allDay" type="FHIR.boolean" />
    <element name="availableStartTime" type="FHIR.time" />
    <element name="availableEndTime" type="FHIR.time" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="HealthcareService.NotAvailableComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="during" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="HumanName" label="HumanName">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="use" type="FHIR.NameUse" />
    <element name="text" type="FHIR.string" />
    <element name="family" type="FHIR.string" />
    <element name="given">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="prefix">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="suffix">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Identifier" label="Identifier">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="use" type="FHIR.IdentifierUse" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="system" type="FHIR.uri" />
    <element name="value" type="FHIR.string" />
    <element name="period" type="FHIR.Period" />
    <element name="assigner" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="IdentifierUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="IdentityAssuranceLevel">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ImagingManifest" label="ImagingManifest" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="patient" type="FHIR.Reference" />
    <element name="authoringTime" type="FHIR.dateTime" />
    <element name="author" type="FHIR.Reference" />
    <element name="description" type="FHIR.string" />
    <element name="study">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImagingManifest.StudyComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImagingManifest.Study.Series.InstanceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sopClass" type="FHIR.oid" />
    <element name="uid" type="FHIR.oid" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImagingManifest.Study.SeriesComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="uid" type="FHIR.oid" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="instance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImagingManifest.Study.Series.InstanceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImagingManifest.StudyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="uid" type="FHIR.oid" />
    <element name="imagingStudy" type="FHIR.Reference" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="series">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImagingManifest.Study.SeriesComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ImagingStudy" label="ImagingStudy" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="uid" type="FHIR.oid" />
    <element name="accession" type="FHIR.Identifier" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="availability" type="FHIR.InstanceAvailability" />
    <element name="modalityList">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="patient" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="started" type="FHIR.dateTime" />
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="referrer" type="FHIR.Reference" />
    <element name="interpreter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="numberOfSeries" type="FHIR.unsignedInt" />
    <element name="numberOfInstances" type="FHIR.unsignedInt" />
    <element name="procedureReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="procedureCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reason" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.string" />
    <element name="series">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImagingStudy.SeriesComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImagingStudy.Series.InstanceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="uid" type="FHIR.oid" />
    <element name="number" type="FHIR.unsignedInt" />
    <element name="sopClass" type="FHIR.oid" />
    <element name="title" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImagingStudy.SeriesComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="uid" type="FHIR.oid" />
    <element name="number" type="FHIR.unsignedInt" />
    <element name="modality" type="FHIR.Coding" />
    <element name="description" type="FHIR.string" />
    <element name="numberOfInstances" type="FHIR.unsignedInt" />
    <element name="availability" type="FHIR.InstanceAvailability" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="bodySite" type="FHIR.Coding" />
    <element name="laterality" type="FHIR.Coding" />
    <element name="started" type="FHIR.dateTime" />
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="instance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImagingStudy.Series.InstanceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Immunization" label="Immunization" retrievable="true" primaryCodePath="vaccineCode">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ImmunizationStatus" />
    <element name="notGiven" type="FHIR.boolean" />
    <element name="vaccineCode" type="FHIR.CodeableConcept" />
    <element name="patient" type="FHIR.Reference" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="primarySource" type="FHIR.boolean" />
    <element name="reportOrigin" type="FHIR.CodeableConcept" />
    <element name="location" type="FHIR.Reference" />
    <element name="manufacturer" type="FHIR.Reference" />
    <element name="lotNumber" type="FHIR.string" />
    <element name="expirationDate" type="FHIR.date" />
    <element name="site" type="FHIR.CodeableConcept" />
    <element name="route" type="FHIR.CodeableConcept" />
    <element name="doseQuantity" type="FHIR.SimpleQuantity" />
    <element name="practitioner">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Immunization.PractitionerComponent" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="explanation" type="FHIR.Immunization.ExplanationComponent" />
    <element name="reaction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Immunization.ReactionComponent" />
    </element>
    <element name="vaccinationProtocol">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Immunization.VaccinationProtocolComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Immunization.ExplanationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Immunization.PractitionerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="actor" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Immunization.ReactionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="date" type="FHIR.dateTime" />
    <element name="detail" type="FHIR.Reference" />
    <element name="reported" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Immunization.VaccinationProtocolComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="doseSequence" type="FHIR.positiveInt" />
    <element name="description" type="FHIR.string" />
    <element name="authority" type="FHIR.Reference" />
    <element name="series" type="FHIR.string" />
    <element name="targetDisease">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="doseStatus" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ImmunizationRecommendation" label="ImmunizationRecommendation" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="patient" type="FHIR.Reference" />
    <element name="recommendation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImmunizationRecommendation.RecommendationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImmunizationRecommendation.Recommendation.DateCriterionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="value" type="FHIR.dateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImmunizationRecommendation.Recommendation.ProtocolComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="doseSequence" type="FHIR.positiveInt" />
    <element name="description" type="FHIR.string" />
    <element name="authority" type="FHIR.Reference" />
    <element name="series" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImmunizationRecommendation.RecommendationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="date" type="FHIR.dateTime" />
    <element name="vaccineCode" type="FHIR.CodeableConcept" />
    <element name="targetDisease" type="FHIR.CodeableConcept" />
    <element name="doseNumber" type="FHIR.positiveInt" />
    <element name="forecastStatus" type="FHIR.CodeableConcept" />
    <element name="dateCriterion">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImmunizationRecommendation.Recommendation.DateCriterionComponent" />
    </element>
    <element name="protocol" type="FHIR.ImmunizationRecommendation.Recommendation.ProtocolComponent" />
    <element name="supportingImmunization">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="supportingPatientInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ImmunizationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ImplementationGuide" label="ImplementationGuide" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="fhirVersion" type="FHIR.id" />
    <element name="dependency">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImplementationGuide.DependencyComponent" />
    </element>
    <element name="package">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImplementationGuide.PackageComponent" />
    </element>
    <element name="global">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImplementationGuide.GlobalComponent" />
    </element>
    <element name="binary">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="page" type="FHIR.ImplementationGuide.PageComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImplementationGuide.DependencyComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.GuideDependencyType" />
    <element name="uri" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImplementationGuide.GlobalComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ResourceType" />
    <element name="profile" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImplementationGuide.Package.ResourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="example" type="FHIR.boolean" />
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="acronym" type="FHIR.string" />
    <element name="source">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="exampleFor" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImplementationGuide.PackageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="resource">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ImplementationGuide.Package.ResourceComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ImplementationGuide.PageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="source" type="FHIR.uri" />
    <element name="title" type="FHIR.string" />
    <element name="kind" type="FHIR.GuidePageKind" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResourceType" />
    </element>
    <element name="package">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="format" type="FHIR.MimeType" />
    <element name="page">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ImplementationGuide.PageComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="InstanceAvailability">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="IssueSeverity">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="IssueType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Library" label="Library" retrievable="true" primaryCodePath="topic">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="usage" type="FHIR.string" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contributor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contributor" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="parameter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ParameterDefinition" />
    </element>
    <element name="dataRequirement">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataRequirement" />
    </element>
    <element name="content">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="LinkType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Linkage" label="Linkage" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="author" type="FHIR.Reference" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Linkage.ItemComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Linkage.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.LinkageType" />
    <element name="resource" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="LinkageType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="List" label="List" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ListStatus" />
    <element name="mode" type="FHIR.ListMode" />
    <element name="title" type="FHIR.string" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="source" type="FHIR.Reference" />
    <element name="orderedBy" type="FHIR.CodeableConcept" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="entry">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.List.EntryComponent" />
    </element>
    <element name="emptyReason" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="List.EntryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="flag" type="FHIR.CodeableConcept" />
    <element name="deleted" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="item" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ListMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ListStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Location" label="Location" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.LocationStatus" />
    <element name="operationalStatus" type="FHIR.Coding" />
    <element name="name" type="FHIR.string" />
    <element name="alias">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="mode" type="FHIR.LocationMode" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="address" type="FHIR.Address" />
    <element name="physicalType" type="FHIR.CodeableConcept" />
    <element name="position" type="FHIR.Location.PositionComponent" />
    <element name="managingOrganization" type="FHIR.Reference" />
    <element name="partOf" type="FHIR.Reference" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Location.PositionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="longitude" type="FHIR.decimal" />
    <element name="latitude" type="FHIR.decimal" />
    <element name="altitude" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="LocationMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="LocationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MeasmntPrinciple">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Measure" label="Measure" retrievable="true" primaryCodePath="topic">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="usage" type="FHIR.string" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contributor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contributor" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="library">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="disclaimer" type="FHIR.markdown" />
    <element name="scoring" type="FHIR.CodeableConcept" />
    <element name="compositeScoring" type="FHIR.CodeableConcept" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="riskAdjustment" type="FHIR.string" />
    <element name="rateAggregation" type="FHIR.string" />
    <element name="rationale" type="FHIR.markdown" />
    <element name="clinicalRecommendationStatement" type="FHIR.markdown" />
    <element name="improvementNotation" type="FHIR.string" />
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.markdown" />
    </element>
    <element name="guidance" type="FHIR.markdown" />
    <element name="set" type="FHIR.string" />
    <element name="group">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Measure.GroupComponent" />
    </element>
    <element name="supplementalData">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Measure.SupplementalDataComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Measure.Group.PopulationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="criteria" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Measure.Group.StratifierComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="criteria" type="FHIR.string" />
    <element name="path" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Measure.GroupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="population">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Measure.Group.PopulationComponent" />
    </element>
    <element name="stratifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Measure.Group.StratifierComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Measure.SupplementalDataComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="usage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="criteria" type="FHIR.string" />
    <element name="path" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MeasureReport" label="MeasureReport" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.MeasureReportStatus" />
    <element name="type" type="FHIR.MeasureReportType" />
    <element name="measure" type="FHIR.Reference" />
    <element name="patient" type="FHIR.Reference" />
    <element name="date" type="FHIR.dateTime" />
    <element name="reportingOrganization" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
    <element name="group">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MeasureReport.GroupComponent" />
    </element>
    <element name="evaluatedResources" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MeasureReport.Group.PopulationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="count" type="FHIR.integer" />
    <element name="patients" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MeasureReport.Group.Stratifier.Stratum.PopulationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="count" type="FHIR.integer" />
    <element name="patients" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MeasureReport.Group.Stratifier.StratumComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="FHIR.string" />
    <element name="population">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MeasureReport.Group.Stratifier.Stratum.PopulationComponent" />
    </element>
    <element name="measureScore" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MeasureReport.Group.StratifierComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="stratum">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MeasureReport.Group.Stratifier.StratumComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MeasureReport.GroupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="population">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MeasureReport.Group.PopulationComponent" />
    </element>
    <element name="measureScore" type="FHIR.decimal" />
    <element name="stratifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MeasureReport.Group.StratifierComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MeasureReportStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MeasureReportType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Media" label="Media" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="type" type="FHIR.DigitalMediaType" />
    <element name="subtype" type="FHIR.CodeableConcept" />
    <element name="view" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="operator" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="bodySite" type="FHIR.CodeableConcept" />
    <element name="device" type="FHIR.Reference" />
    <element name="height" type="FHIR.positiveInt" />
    <element name="width" type="FHIR.positiveInt" />
    <element name="frames" type="FHIR.positiveInt" />
    <element name="duration" type="FHIR.unsignedInt" />
    <element name="content" type="FHIR.Attachment" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Medication" label="Medication" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="status" type="FHIR.MedicationStatus" />
    <element name="isBrand" type="FHIR.boolean" />
    <element name="isOverTheCounter" type="FHIR.boolean" />
    <element name="manufacturer" type="FHIR.Reference" />
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="ingredient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Medication.IngredientComponent" />
    </element>
    <element name="package" type="FHIR.Medication.PackageComponent" />
    <element name="image">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Medication.IngredientComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="isActive" type="FHIR.boolean" />
    <element name="amount" type="FHIR.Ratio" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Medication.Package.BatchComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="lotNumber" type="FHIR.string" />
    <element name="expirationDate" type="FHIR.dateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Medication.Package.ContentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="amount" type="FHIR.SimpleQuantity" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Medication.PackageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="container" type="FHIR.CodeableConcept" />
    <element name="content">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Medication.Package.ContentComponent" />
    </element>
    <element name="batch">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Medication.Package.BatchComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MedicationAdministration" label="MedicationAdministration" retrievable="true" primaryCodePath="medication">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.MedicationAdministrationStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="medication">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="supportingInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="effective">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MedicationAdministration.PerformerComponent" />
    </element>
    <element name="notGiven" type="FHIR.boolean" />
    <element name="reasonNotGiven">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="prescription" type="FHIR.Reference" />
    <element name="device">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="dosage" type="FHIR.MedicationAdministration.DosageComponent" />
    <element name="eventHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationAdministration.DosageComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="text" type="FHIR.string" />
    <element name="site" type="FHIR.CodeableConcept" />
    <element name="route" type="FHIR.CodeableConcept" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="dose" type="FHIR.SimpleQuantity" />
    <element name="rate">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SimpleQuantity" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationAdministration.PerformerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationAdministrationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MedicationDispense" label="MedicationDispense" retrievable="true" primaryCodePath="medication">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.MedicationDispenseStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="medication">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="supportingInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MedicationDispense.PerformerComponent" />
    </element>
    <element name="authorizingPrescription">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="daysSupply" type="FHIR.SimpleQuantity" />
    <element name="whenPrepared" type="FHIR.dateTime" />
    <element name="whenHandedOver" type="FHIR.dateTime" />
    <element name="destination" type="FHIR.Reference" />
    <element name="receiver">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="dosageInstruction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Dosage" />
    </element>
    <element name="substitution" type="FHIR.MedicationDispense.SubstitutionComponent" />
    <element name="detectedIssue">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="notDone" type="FHIR.boolean" />
    <element name="eventHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationDispense.PerformerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actor" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationDispense.SubstitutionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="wasSubstituted" type="FHIR.boolean" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="responsibleParty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationDispenseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MedicationRequest" label="MedicationRequest" retrievable="true" primaryCodePath="medication">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.MedicationRequestStatus" />
    <element name="intent" type="FHIR.MedicationRequestIntent" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="priority" type="FHIR.MedicationRequestPriority" />
    <element name="medication">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="supportingInformation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.MedicationRequest.RequesterComponent" />
    <element name="recorder" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="dosageInstruction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Dosage" />
    </element>
    <element name="dispenseRequest" type="FHIR.MedicationRequest.DispenseRequestComponent" />
    <element name="substitution" type="FHIR.MedicationRequest.SubstitutionComponent" />
    <element name="priorPrescription" type="FHIR.Reference" />
    <element name="detectedIssue">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="eventHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationRequest.DispenseRequestComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="validityPeriod" type="FHIR.Period" />
    <element name="numberOfRepeatsAllowed" type="FHIR.positiveInt" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="expectedSupplyDuration" type="FHIR.Duration" />
    <element name="performer" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MedicationRequest.SubstitutionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="allowed" type="FHIR.boolean" />
    <element name="reason" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationRequestIntent">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationRequestPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MedicationStatement" label="MedicationStatement" retrievable="true" primaryCodePath="medication">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="context" type="FHIR.Reference" />
    <element name="status" type="FHIR.MedicationStatementStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="medication">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="effective">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="dateAsserted" type="FHIR.dateTime" />
    <element name="informationSource" type="FHIR.Reference" />
    <element name="subject" type="FHIR.Reference" />
    <element name="derivedFrom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="taken" type="FHIR.MedicationStatementTaken" />
    <element name="reasonNotTaken">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="dosage">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Dosage" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationStatementStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationStatementTaken">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MedicationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MessageDefinition" label="MessageDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="base" type="FHIR.Reference" />
    <element name="parent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="event" type="FHIR.Coding" />
    <element name="category" type="FHIR.MessageSignificanceCategory" />
    <element name="focus">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MessageDefinition.FocusComponent" />
    </element>
    <element name="responseRequired" type="FHIR.boolean" />
    <element name="allowedResponse">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MessageDefinition.AllowedResponseComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MessageDefinition.AllowedResponseComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="message" type="FHIR.Reference" />
    <element name="situation" type="FHIR.markdown" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MessageDefinition.FocusComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.ResourceType" />
    <element name="profile" type="FHIR.Reference" />
    <element name="min" type="FHIR.unsignedInt" />
    <element name="max" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="MessageHeader" label="MessageHeader" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="event" type="FHIR.Coding" />
    <element name="destination">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.MessageHeader.DestinationComponent" />
    </element>
    <element name="receiver" type="FHIR.Reference" />
    <element name="sender" type="FHIR.Reference" />
    <element name="timestamp" type="FHIR.instant" />
    <element name="enterer" type="FHIR.Reference" />
    <element name="author" type="FHIR.Reference" />
    <element name="source" type="FHIR.MessageHeader.SourceComponent" />
    <element name="responsible" type="FHIR.Reference" />
    <element name="reason" type="FHIR.CodeableConcept" />
    <element name="response" type="FHIR.MessageHeader.ResponseComponent" />
    <element name="focus">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MessageHeader.DestinationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="target" type="FHIR.Reference" />
    <element name="endpoint" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MessageHeader.ResponseComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.id" />
    <element name="code" type="FHIR.ResponseType" />
    <element name="details" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="MessageHeader.SourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="software" type="FHIR.string" />
    <element name="version" type="FHIR.string" />
    <element name="contact" type="FHIR.ContactPoint" />
    <element name="endpoint" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MessageSignificanceCategory">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Meta" label="Meta">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="versionId" type="FHIR.id" />
    <element name="lastUpdated" type="FHIR.instant" />
    <element name="profile">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="security">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="tag">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="MimeType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="Money"/>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="NameUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="NamingSystem" label="NamingSystem" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="kind" type="FHIR.NamingSystemType" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="responsible" type="FHIR.string" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="usage" type="FHIR.string" />
    <element name="uniqueId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.NamingSystem.UniqueIdComponent" />
    </element>
    <element name="replacedBy" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NamingSystem.UniqueIdComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.NamingSystemIdentifierType" />
    <element name="value" type="FHIR.string" />
    <element name="preferred" type="FHIR.boolean" />
    <element name="comment" type="FHIR.string" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="NamingSystemIdentifierType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="NamingSystemType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Narrative" label="Narrative">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="status" type="FHIR.NarrativeStatus" />
    <element name="div" type="FHIR.xhtml" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="NarrativeStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="NutritionOrder" label="NutritionOrder" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.NutritionOrderStatus" />
    <element name="patient" type="FHIR.Reference" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="dateTime" type="FHIR.dateTime" />
    <element name="orderer" type="FHIR.Reference" />
    <element name="allergyIntolerance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="foodPreferenceModifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="excludeFoodModifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="oralDiet" type="FHIR.NutritionOrder.OralDietComponent" />
    <element name="supplement">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.NutritionOrder.SupplementComponent" />
    </element>
    <element name="enteralFormula" type="FHIR.NutritionOrder.EnteralFormulaComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.EnteralFormula.AdministrationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="schedule" type="FHIR.Timing" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="rate">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SimpleQuantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.EnteralFormulaComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="baseFormulaType" type="FHIR.CodeableConcept" />
    <element name="baseFormulaProductName" type="FHIR.string" />
    <element name="additiveType" type="FHIR.CodeableConcept" />
    <element name="additiveProductName" type="FHIR.string" />
    <element name="caloricDensity" type="FHIR.SimpleQuantity" />
    <element name="routeofAdministration" type="FHIR.CodeableConcept" />
    <element name="administration">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.NutritionOrder.EnteralFormula.AdministrationComponent" />
    </element>
    <element name="maxVolumeToDeliver" type="FHIR.SimpleQuantity" />
    <element name="administrationInstruction" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.OralDiet.NutrientComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifier" type="FHIR.CodeableConcept" />
    <element name="amount" type="FHIR.SimpleQuantity" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.OralDiet.TextureComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifier" type="FHIR.CodeableConcept" />
    <element name="foodType" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.OralDietComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="schedule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Timing" />
    </element>
    <element name="nutrient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.NutritionOrder.OralDiet.NutrientComponent" />
    </element>
    <element name="texture">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.NutritionOrder.OralDiet.TextureComponent" />
    </element>
    <element name="fluidConsistencyType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="instruction" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="NutritionOrder.SupplementComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="productName" type="FHIR.string" />
    <element name="schedule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Timing" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="instruction" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="NutritionOrderStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Observation" label="Observation" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.ObservationStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="effective">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="issued" type="FHIR.instant" />
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="dataAbsentReason" type="FHIR.CodeableConcept" />
    <element name="interpretation" type="FHIR.CodeableConcept" />
    <element name="comment" type="FHIR.string" />
    <element name="bodySite" type="FHIR.CodeableConcept" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="specimen" type="FHIR.Reference" />
    <element name="device" type="FHIR.Reference" />
    <element name="referenceRange">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Observation.ReferenceRangeComponent" />
    </element>
    <element name="related">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Observation.RelatedComponent" />
    </element>
    <element name="component">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Observation.ComponentComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Observation.ComponentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="dataAbsentReason" type="FHIR.CodeableConcept" />
    <element name="interpretation" type="FHIR.CodeableConcept" />
    <element name="referenceRange">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Observation.ReferenceRangeComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Observation.ReferenceRangeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="low" type="FHIR.SimpleQuantity" />
    <element name="high" type="FHIR.SimpleQuantity" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="appliesTo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="age" type="FHIR.Range" />
    <element name="text" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Observation.RelatedComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ObservationRelationshipType" />
    <element name="target" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ObservationRelationshipType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ObservationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="OperationDefinition" label="OperationDefinition" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="kind" type="FHIR.OperationKind" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="idempotent" type="FHIR.boolean" />
    <element name="code" type="FHIR.code" />
    <element name="comment" type="FHIR.string" />
    <element name="base" type="FHIR.Reference" />
    <element name="resource">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResourceType" />
    </element>
    <element name="system" type="FHIR.boolean" />
    <element name="type" type="FHIR.boolean" />
    <element name="instance" type="FHIR.boolean" />
    <element name="parameter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.OperationDefinition.ParameterComponent" />
    </element>
    <element name="overload">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.OperationDefinition.OverloadComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="OperationDefinition.OverloadComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="parameterName">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="OperationDefinition.Parameter.BindingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="strength" type="FHIR.BindingStrength" />
    <element name="valueSet">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="OperationDefinition.ParameterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.code" />
    <element name="use" type="FHIR.OperationParameterUse" />
    <element name="min" type="FHIR.integer" />
    <element name="max" type="FHIR.string" />
    <element name="documentation" type="FHIR.string" />
    <element name="type" type="FHIR.FHIRAllTypes" />
    <element name="searchType" type="FHIR.SearchParamType" />
    <element name="profile" type="FHIR.Reference" />
    <element name="binding" type="FHIR.OperationDefinition.Parameter.BindingComponent" />
    <element name="part">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="OperationDefinition.ParameterComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="OperationKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="OperationOutcome" label="OperationOutcome" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="issue">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.OperationOutcome.IssueComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="OperationOutcome.IssueComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="severity" type="FHIR.IssueSeverity" />
    <element name="code" type="FHIR.IssueType" />
    <element name="details" type="FHIR.CodeableConcept" />
    <element name="diagnostics" type="FHIR.string" />
    <element name="location">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="expression">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="OperationParameterUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Organization" label="Organization" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="alias">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="address">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Address" />
    </element>
    <element name="partOf" type="FHIR.Reference" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Organization.ContactComponent" />
    </element>
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Organization.ContactComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="purpose" type="FHIR.CodeableConcept" />
    <element name="name" type="FHIR.HumanName" />
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="address" type="FHIR.Address" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ParameterDefinition" label="ParameterDefinition">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.code" />
    <element name="use" type="FHIR.ParameterUse" />
    <element name="min" type="FHIR.integer" />
    <element name="max" type="FHIR.string" />
    <element name="documentation" type="FHIR.string" />
    <element name="type" type="FHIR.FHIRAllTypes" />
    <element name="profile" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ParameterUse">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Resource" name="Parameters" label="Parameters" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="parameter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Parameters.ParameterComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Parameters.ParameterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
    <element name="resource" type="FHIR.Resource" />
    <element name="part">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Parameters.ParameterComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ParticipantRequired">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ParticipantStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ParticipationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Patient" label="Patient" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="name">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HumanName" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="birthDate" type="FHIR.date" />
    <element name="deceased">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
      </typeSpecifier>
    </element>
    <element name="address">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Address" />
    </element>
    <element name="maritalStatus" type="FHIR.CodeableConcept" />
    <element name="multipleBirth">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
      </typeSpecifier>
    </element>
    <element name="photo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Patient.ContactComponent" />
    </element>
    <element name="animal" type="FHIR.Patient.AnimalComponent" />
    <element name="communication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Patient.CommunicationComponent" />
    </element>
    <element name="generalPractitioner">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="managingOrganization" type="FHIR.Reference" />
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Patient.LinkComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Patient.AnimalComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="species" type="FHIR.CodeableConcept" />
    <element name="breed" type="FHIR.CodeableConcept" />
    <element name="genderStatus" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Patient.CommunicationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="language" type="FHIR.CodeableConcept" />
    <element name="preferred" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Patient.ContactComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="relationship">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="name" type="FHIR.HumanName" />
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="address" type="FHIR.Address" />
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="organization" type="FHIR.Reference" />
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Patient.LinkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="other" type="FHIR.Reference" />
    <element name="type" type="FHIR.LinkType" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="PaymentNotice" label="PaymentNotice" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.PaymentNoticeStatus" />
    <element name="request" type="FHIR.Reference" />
    <element name="response" type="FHIR.Reference" />
    <element name="statusDate" type="FHIR.date" />
    <element name="created" type="FHIR.dateTime" />
    <element name="target" type="FHIR.Reference" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="paymentStatus" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="PaymentNoticeStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="PaymentReconciliation" label="PaymentReconciliation" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.PaymentReconciliationStatus" />
    <element name="period" type="FHIR.Period" />
    <element name="created" type="FHIR.dateTime" />
    <element name="organization" type="FHIR.Reference" />
    <element name="request" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="requestProvider" type="FHIR.Reference" />
    <element name="requestOrganization" type="FHIR.Reference" />
    <element name="detail">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PaymentReconciliation.DetailComponent" />
    </element>
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="total" type="FHIR.Money" />
    <element name="processNote">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PaymentReconciliation.ProcessNoteComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PaymentReconciliation.DetailComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="request" type="FHIR.Reference" />
    <element name="response" type="FHIR.Reference" />
    <element name="submitter" type="FHIR.Reference" />
    <element name="payee" type="FHIR.Reference" />
    <element name="date" type="FHIR.date" />
    <element name="amount" type="FHIR.Money" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PaymentReconciliation.ProcessNoteComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="text" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="PaymentReconciliationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Period" label="Period">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="start" type="FHIR.dateTime" />
    <element name="end" type="FHIR.dateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Person" label="Person" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="name">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HumanName" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="birthDate" type="FHIR.date" />
    <element name="address">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Address" />
    </element>
    <element name="photo" type="FHIR.Attachment" />
    <element name="managingOrganization" type="FHIR.Reference" />
    <element name="active" type="FHIR.boolean" />
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Person.LinkComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Person.LinkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="target" type="FHIR.Reference" />
    <element name="assurance" type="FHIR.IdentityAssuranceLevel" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="PlanDefinition" label="PlanDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="usage" type="FHIR.string" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contributor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contributor" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="library">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="goal">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.GoalComponent" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.Action.ConditionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="kind" type="FHIR.ActionConditionKind" />
    <element name="description" type="FHIR.string" />
    <element name="language" type="FHIR.string" />
    <element name="expression" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.Action.DynamicValueComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="path" type="FHIR.string" />
    <element name="language" type="FHIR.string" />
    <element name="expression" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.Action.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.ActionParticipantType" />
    <element name="role" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.Action.RelatedActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actionId" type="FHIR.id" />
    <element name="relationship" type="FHIR.ActionRelationshipType" />
    <element name="offset">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="label" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="textEquivalent" type="FHIR.string" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="documentation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="goalId">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.id" />
    </element>
    <element name="triggerDefinition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TriggerDefinition" />
    </element>
    <element name="condition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.Action.ConditionComponent" />
    </element>
    <element name="input">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataRequirement" />
    </element>
    <element name="output">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataRequirement" />
    </element>
    <element name="relatedAction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.Action.RelatedActionComponent" />
    </element>
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.Action.ParticipantComponent" />
    </element>
    <element name="type" type="FHIR.Coding" />
    <element name="groupingBehavior" type="FHIR.ActionGroupingBehavior" />
    <element name="selectionBehavior" type="FHIR.ActionSelectionBehavior" />
    <element name="requiredBehavior" type="FHIR.ActionRequiredBehavior" />
    <element name="precheckBehavior" type="FHIR.ActionPrecheckBehavior" />
    <element name="cardinalityBehavior" type="FHIR.ActionCardinalityBehavior" />
    <element name="definition" type="FHIR.Reference" />
    <element name="transform" type="FHIR.Reference" />
    <element name="dynamicValue">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.Action.DynamicValueComponent" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="PlanDefinition.ActionComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.Goal.TargetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="measure" type="FHIR.CodeableConcept" />
    <element name="detail">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="due" type="FHIR.Duration" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PlanDefinition.GoalComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.CodeableConcept" />
    <element name="priority" type="FHIR.CodeableConcept" />
    <element name="start" type="FHIR.CodeableConcept" />
    <element name="addresses">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="documentation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PlanDefinition.Goal.TargetComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Practitioner" label="Practitioner" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="name">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HumanName" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="address">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Address" />
    </element>
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="birthDate" type="FHIR.date" />
    <element name="photo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
    <element name="qualification">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Practitioner.QualificationComponent" />
    </element>
    <element name="communication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Practitioner.QualificationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="period" type="FHIR.Period" />
    <element name="issuer" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="PractitionerRole" label="PractitionerRole" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="period" type="FHIR.Period" />
    <element name="practitioner" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="location">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="healthcareService">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="availableTime">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PractitionerRole.AvailableTimeComponent" />
    </element>
    <element name="notAvailable">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.PractitionerRole.NotAvailableComponent" />
    </element>
    <element name="availabilityExceptions" type="FHIR.string" />
    <element name="endpoint">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PractitionerRole.AvailableTimeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="daysOfWeek">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DaysOfWeek" />
    </element>
    <element name="allDay" type="FHIR.boolean" />
    <element name="availableStartTime" type="FHIR.time" />
    <element name="availableEndTime" type="FHIR.time" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="PractitionerRole.NotAvailableComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="during" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Procedure" label="Procedure" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.ProcedureStatus" />
    <element name="notDone" type="FHIR.boolean" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="performed">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="performer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Procedure.PerformerComponent" />
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="bodySite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="report">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="complication">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="followUp">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="focalDevice">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Procedure.FocalDeviceComponent" />
    </element>
    <element name="usedReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="usedCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Procedure.FocalDeviceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action" type="FHIR.CodeableConcept" />
    <element name="manipulated" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Procedure.PerformerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.CodeableConcept" />
    <element name="actor" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ProcedureRequest" label="ProcedureRequest" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="requisition" type="FHIR.Identifier" />
    <element name="status" type="FHIR.ProcedureRequestStatus" />
    <element name="intent" type="FHIR.ProcedureRequestIntent" />
    <element name="priority" type="FHIR.ProcedureRequestPriority" />
    <element name="doNotPerform" type="FHIR.boolean" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="asNeeded">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
      </typeSpecifier>
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.ProcedureRequest.RequesterComponent" />
    <element name="performerType" type="FHIR.CodeableConcept" />
    <element name="performer" type="FHIR.Reference" />
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="supportingInfo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="specimen">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="bodySite">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="relevantHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ProcedureRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcedureRequestIntent">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcedureRequestPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcedureRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcedureStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ProcessRequest" label="ProcessRequest" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ProcessRequestStatus" />
    <element name="action" type="FHIR.ActionList" />
    <element name="target" type="FHIR.Reference" />
    <element name="created" type="FHIR.dateTime" />
    <element name="provider" type="FHIR.Reference" />
    <element name="organization" type="FHIR.Reference" />
    <element name="request" type="FHIR.Reference" />
    <element name="response" type="FHIR.Reference" />
    <element name="nullify" type="FHIR.boolean" />
    <element name="reference" type="FHIR.string" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ProcessRequest.ItemComponent" />
    </element>
    <element name="include">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="exclude">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ProcessRequest.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="sequenceLinkId" type="FHIR.integer" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcessRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ProcessResponse" label="ProcessResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.ProcessResponseStatus" />
    <element name="created" type="FHIR.dateTime" />
    <element name="organization" type="FHIR.Reference" />
    <element name="request" type="FHIR.Reference" />
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="disposition" type="FHIR.string" />
    <element name="requestProvider" type="FHIR.Reference" />
    <element name="requestOrganization" type="FHIR.Reference" />
    <element name="form" type="FHIR.CodeableConcept" />
    <element name="processNote">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ProcessResponse.ProcessNoteComponent" />
    </element>
    <element name="error">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="communicationRequest">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ProcessResponse.ProcessNoteComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="text" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProcessResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="PropertyRepresentation">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="PropertyType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Provenance" label="Provenance" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="recorded" type="FHIR.instant" />
    <element name="policy">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="location" type="FHIR.Reference" />
    <element name="reason">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="activity" type="FHIR.Coding" />
    <element name="agent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Provenance.AgentComponent" />
    </element>
    <element name="entity">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Provenance.EntityComponent" />
    </element>
    <element name="signature">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Signature" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Provenance.AgentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="who">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="onBehalfOf">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="relatedAgentType" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Provenance.EntityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="role" type="FHIR.ProvenanceEntityRole" />
    <element name="what">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
      </typeSpecifier>
    </element>
    <element name="agent">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Provenance.AgentComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ProvenanceEntityRole">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="PublicationStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Quantity" label="Quantity" primaryCodePath="code">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="FHIR.decimal" />
    <element name="comparator" type="FHIR.QuantityComparator" />
    <element name="unit" type="FHIR.string" />
    <element name="system" type="FHIR.uri" />
    <element name="code" type="FHIR.code" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="QuantityComparator">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Questionnaire" label="Questionnaire" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="subjectType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResourceType" />
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Questionnaire.ItemComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Questionnaire.Item.EnableWhenComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="question" type="FHIR.string" />
    <element name="hasAnswer" type="FHIR.boolean" />
    <element name="answer">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Questionnaire.Item.OptionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Questionnaire.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="linkId" type="FHIR.string" />
    <element name="definition" type="FHIR.uri" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="prefix" type="FHIR.string" />
    <element name="text" type="FHIR.string" />
    <element name="type" type="FHIR.QuestionnaireItemType" />
    <element name="enableWhen">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Questionnaire.Item.EnableWhenComponent" />
    </element>
    <element name="required" type="FHIR.boolean" />
    <element name="repeats" type="FHIR.boolean" />
    <element name="readOnly" type="FHIR.boolean" />
    <element name="maxLength" type="FHIR.integer" />
    <element name="options" type="FHIR.Reference" />
    <element name="option">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Questionnaire.Item.OptionComponent" />
    </element>
    <element name="initial">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Questionnaire.ItemComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="QuestionnaireItemType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="QuestionnaireResponse" label="QuestionnaireResponse" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="parent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="questionnaire" type="FHIR.Reference" />
    <element name="status" type="FHIR.QuestionnaireResponseStatus" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="authored" type="FHIR.dateTime" />
    <element name="author" type="FHIR.Reference" />
    <element name="source" type="FHIR.Reference" />
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.QuestionnaireResponse.ItemComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="QuestionnaireResponse.Item.AnswerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="QuestionnaireResponse.ItemComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="QuestionnaireResponse.ItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="linkId" type="FHIR.string" />
    <element name="definition" type="FHIR.uri" />
    <element name="text" type="FHIR.string" />
    <element name="subject" type="FHIR.Reference" />
    <element name="answer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.QuestionnaireResponse.Item.AnswerComponent" />
    </element>
    <element name="item">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="QuestionnaireResponse.ItemComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="QuestionnaireResponseStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Range" label="Range">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="low" type="FHIR.SimpleQuantity" />
    <element name="high" type="FHIR.SimpleQuantity" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Ratio" label="Ratio">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="numerator" type="FHIR.Quantity" />
    <element name="denominator" type="FHIR.Quantity" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Reference" label="Reference">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="reference" type="FHIR.string" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="display" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferenceHandlingPolicy">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferenceVersionRules">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferralCategory">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferralPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ReferralRequest" label="ReferralRequest" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.ReferralRequestStatus" />
    <element name="intent" type="FHIR.ReferralCategory" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="priority" type="FHIR.ReferralPriority" />
    <element name="serviceRequested">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.ReferralRequest.RequesterComponent" />
    <element name="specialty" type="FHIR.CodeableConcept" />
    <element name="recipient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="reasonCode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="reasonReference">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="supportingInfo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="relevantHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ReferralRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferralRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ReferredDocumentStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RelatedArtifact" label="RelatedArtifact">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.RelatedArtifactType" />
    <element name="display" type="FHIR.string" />
    <element name="citation" type="FHIR.string" />
    <element name="url" type="FHIR.uri" />
    <element name="document" type="FHIR.Attachment" />
    <element name="resource" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RelatedArtifactType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="RelatedPerson" label="RelatedPerson" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="patient" type="FHIR.Reference" />
    <element name="relationship" type="FHIR.CodeableConcept" />
    <element name="name">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.HumanName" />
    </element>
    <element name="telecom">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="gender" type="FHIR.AdministrativeGender" />
    <element name="birthDate" type="FHIR.date" />
    <element name="address">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Address" />
    </element>
    <element name="photo">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Attachment" />
    </element>
    <element name="period" type="FHIR.Period" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="RequestGroup" label="RequestGroup" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="replaces">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.RequestStatus" />
    <element name="intent" type="FHIR.RequestIntent" />
    <element name="priority" type="FHIR.RequestPriority" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="author" type="FHIR.Reference" />
    <element name="reason">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RequestGroup.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="RequestGroup.Action.ConditionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="kind" type="FHIR.ActionConditionKind" />
    <element name="description" type="FHIR.string" />
    <element name="language" type="FHIR.string" />
    <element name="expression" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="RequestGroup.Action.RelatedActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="actionId" type="FHIR.id" />
    <element name="relationship" type="FHIR.ActionRelationshipType" />
    <element name="offset">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="RequestGroup.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="label" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="textEquivalent" type="FHIR.string" />
    <element name="code">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="documentation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="condition">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RequestGroup.Action.ConditionComponent" />
    </element>
    <element name="relatedAction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RequestGroup.Action.RelatedActionComponent" />
    </element>
    <element name="timing">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="type" type="FHIR.Coding" />
    <element name="groupingBehavior" type="FHIR.ActionGroupingBehavior" />
    <element name="selectionBehavior" type="FHIR.ActionSelectionBehavior" />
    <element name="requiredBehavior" type="FHIR.ActionRequiredBehavior" />
    <element name="precheckBehavior" type="FHIR.ActionPrecheckBehavior" />
    <element name="cardinalityBehavior" type="FHIR.ActionCardinalityBehavior" />
    <element name="resource" type="FHIR.Reference" />
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="RequestGroup.ActionComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RequestIntent">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RequestPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ResearchStudy" label="ResearchStudy" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="title" type="FHIR.string" />
    <element name="protocol">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.ResearchStudyStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="focus">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="keyword">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="enrollment">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="period" type="FHIR.Period" />
    <element name="sponsor" type="FHIR.Reference" />
    <element name="principalInvestigator" type="FHIR.Reference" />
    <element name="site">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="reasonStopped" type="FHIR.CodeableConcept" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="arm">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResearchStudy.ArmComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ResearchStudy.ArmComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ResearchStudyStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ResearchSubject" label="ResearchSubject" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.ResearchSubjectStatus" />
    <element name="period" type="FHIR.Period" />
    <element name="study" type="FHIR.Reference" />
    <element name="individual" type="FHIR.Reference" />
    <element name="assignedArm" type="FHIR.string" />
    <element name="actualArm" type="FHIR.string" />
    <element name="consent" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ResearchSubjectStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" name="Resource" label="Resource" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ResourceType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ResourceVersionPolicy">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="ResponseType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RestfulCapabilityMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="RiskAssessment" label="RiskAssessment" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="basedOn" type="FHIR.Reference" />
    <element name="parent" type="FHIR.Reference" />
    <element name="status" type="FHIR.RiskAssessmentStatus" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="condition" type="FHIR.Reference" />
    <element name="performer" type="FHIR.Reference" />
    <element name="reason">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="basis">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="prediction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RiskAssessment.PredictionComponent" />
    </element>
    <element name="mitigation" type="FHIR.string" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="RiskAssessment.PredictionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="outcome" type="FHIR.CodeableConcept" />
    <element name="probability">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
    <element name="qualitativeRisk" type="FHIR.CodeableConcept" />
    <element name="relativeRisk" type="FHIR.decimal" />
    <element name="when">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
    <element name="rationale" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="RiskAssessmentStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SampledData" label="SampledData">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="origin" type="FHIR.SimpleQuantity" />
    <element name="period" type="FHIR.decimal" />
    <element name="factor" type="FHIR.decimal" />
    <element name="lowerLimit" type="FHIR.decimal" />
    <element name="upperLimit" type="FHIR.decimal" />
    <element name="dimensions" type="FHIR.positiveInt" />
    <element name="data" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Schedule" label="Schedule" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="active" type="FHIR.boolean" />
    <element name="serviceCategory" type="FHIR.CodeableConcept" />
    <element name="serviceType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="actor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="planningHorizon" type="FHIR.Period" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SearchComparator">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SearchEntryMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SearchModifierCode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SearchParamType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="SearchParameter" label="SearchParameter" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="code" type="FHIR.code" />
    <element name="base">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResourceType" />
    </element>
    <element name="type" type="FHIR.SearchParamType" />
    <element name="derivedFrom" type="FHIR.uri" />
    <element name="description" type="FHIR.markdown" />
    <element name="expression" type="FHIR.string" />
    <element name="xpath" type="FHIR.string" />
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ResourceType" />
    </element>
    <element name="comparator">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.SearchComparator" />
    </element>
    <element name="modifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.SearchModifierCode" />
    </element>
    <element name="chain">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="component">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.SearchParameter.ComponentComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="SearchParameter.ComponentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="definition" type="FHIR.Reference" />
    <element name="expression" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SectionMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Sequence" label="Sequence" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="type" type="FHIR.code" />
    <element name="coordinateSystem" type="FHIR.integer" />
    <element name="patient" type="FHIR.Reference" />
    <element name="specimen" type="FHIR.Reference" />
    <element name="device" type="FHIR.Reference" />
    <element name="performer" type="FHIR.Reference" />
    <element name="quantity" type="FHIR.Quantity" />
    <element name="referenceSeq" type="FHIR.Sequence.ReferenceSeqComponent" />
    <element name="variant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Sequence.VariantComponent" />
    </element>
    <element name="observedSeq" type="FHIR.string" />
    <element name="quality">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Sequence.QualityComponent" />
    </element>
    <element name="readCoverage" type="FHIR.integer" />
    <element name="repository">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Sequence.RepositoryComponent" />
    </element>
    <element name="pointer">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Sequence.QualityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.qualityType" />
    <element name="standardSequence" type="FHIR.CodeableConcept" />
    <element name="start" type="FHIR.integer" />
    <element name="end" type="FHIR.integer" />
    <element name="score" type="FHIR.Quantity" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="truthTP" type="FHIR.decimal" />
    <element name="queryTP" type="FHIR.decimal" />
    <element name="truthFN" type="FHIR.decimal" />
    <element name="queryFP" type="FHIR.decimal" />
    <element name="gtFP" type="FHIR.decimal" />
    <element name="precision" type="FHIR.decimal" />
    <element name="recall" type="FHIR.decimal" />
    <element name="fScore" type="FHIR.decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Sequence.ReferenceSeqComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="chromosome" type="FHIR.CodeableConcept" />
    <element name="genomeBuild" type="FHIR.string" />
    <element name="referenceSeqId" type="FHIR.CodeableConcept" />
    <element name="referenceSeqPointer" type="FHIR.Reference" />
    <element name="referenceSeqString" type="FHIR.string" />
    <element name="strand" type="FHIR.integer" />
    <element name="windowStart" type="FHIR.integer" />
    <element name="windowEnd" type="FHIR.integer" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Sequence.RepositoryComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.repositoryType" />
    <element name="url" type="FHIR.uri" />
    <element name="name" type="FHIR.string" />
    <element name="datasetId" type="FHIR.string" />
    <element name="variantsetId" type="FHIR.string" />
    <element name="readsetId" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Sequence.VariantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="start" type="FHIR.integer" />
    <element name="end" type="FHIR.integer" />
    <element name="observedAllele" type="FHIR.string" />
    <element name="referenceAllele" type="FHIR.string" />
    <element name="cigar" type="FHIR.string" />
    <element name="variantPointer" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ServiceDefinition" label="ServiceDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="description" type="FHIR.markdown" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="usage" type="FHIR.string" />
    <element name="approvalDate" type="FHIR.date" />
    <element name="lastReviewDate" type="FHIR.date" />
    <element name="effectivePeriod" type="FHIR.Period" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="topic">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="contributor">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Contributor" />
    </element>
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="copyright" type="FHIR.markdown" />
    <element name="relatedArtifact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.RelatedArtifact" />
    </element>
    <element name="trigger">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TriggerDefinition" />
    </element>
    <element name="dataRequirement">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.DataRequirement" />
    </element>
    <element name="operationDefinition" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Signature" label="Signature">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="when" type="FHIR.instant" />
    <element name="who">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="onBehalfOf">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="contentType" type="FHIR.MimeType" />
    <element name="blob" type="FHIR.base64Binary" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Quantity" name="SimpleQuantity"/>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SlicingRules">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Slot" label="Slot" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="serviceCategory" type="FHIR.CodeableConcept" />
    <element name="serviceType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="specialty">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="appointmentType" type="FHIR.CodeableConcept" />
    <element name="schedule" type="FHIR.Reference" />
    <element name="status" type="FHIR.SlotStatus" />
    <element name="start" type="FHIR.instant" />
    <element name="end" type="FHIR.instant" />
    <element name="overbooked" type="FHIR.boolean" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SlotStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Specimen" label="Specimen" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="accessionIdentifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.SpecimenStatus" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="subject" type="FHIR.Reference" />
    <element name="receivedTime" type="FHIR.dateTime" />
    <element name="parent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="request">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="collection" type="FHIR.Specimen.CollectionComponent" />
    <element name="processing">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Specimen.ProcessingComponent" />
    </element>
    <element name="container">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Specimen.ContainerComponent" />
    </element>
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Specimen.CollectionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="collector" type="FHIR.Reference" />
    <element name="collected">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="method" type="FHIR.CodeableConcept" />
    <element name="bodySite" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Specimen.ContainerComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="capacity" type="FHIR.SimpleQuantity" />
    <element name="specimenQuantity" type="FHIR.SimpleQuantity" />
    <element name="additive">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Specimen.ProcessingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="description" type="FHIR.string" />
    <element name="procedure" type="FHIR.CodeableConcept" />
    <element name="additive">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="time">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SpecimenStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="StructureDefinition" label="StructureDefinition" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="keyword">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
    <element name="fhirVersion" type="FHIR.id" />
    <element name="mapping">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureDefinition.MappingComponent" />
    </element>
    <element name="kind" type="FHIR.StructureDefinitionKind" />
    <element name="abstract" type="FHIR.boolean" />
    <element name="contextType" type="FHIR.ExtensionContext" />
    <element name="context">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
    <element name="type" type="FHIR.code" />
    <element name="baseDefinition" type="FHIR.uri" />
    <element name="derivation" type="FHIR.TypeDerivationRule" />
    <element name="snapshot" type="FHIR.StructureDefinition.SnapshotComponent" />
    <element name="differential" type="FHIR.StructureDefinition.DifferentialComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureDefinition.DifferentialComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="element">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ElementDefinition" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureDefinition.MappingComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identity" type="FHIR.id" />
    <element name="uri" type="FHIR.uri" />
    <element name="name" type="FHIR.string" />
    <element name="comment" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureDefinition.SnapshotComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="element">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ElementDefinition" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureDefinitionKind">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="StructureMap" label="StructureMap" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="structure">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.StructureComponent" />
    </element>
    <element name="import">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="group">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.GroupComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.InputComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.id" />
    <element name="type" type="FHIR.string" />
    <element name="mode" type="FHIR.StructureMapInputMode" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.Rule.DependentComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.id" />
    <element name="variable">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.Rule.SourceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="context" type="FHIR.id" />
    <element name="min" type="FHIR.integer" />
    <element name="max" type="FHIR.string" />
    <element name="type" type="FHIR.string" />
    <element name="defaultValue">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
    <element name="element" type="FHIR.string" />
    <element name="listMode" type="FHIR.StructureMapSourceListMode" />
    <element name="variable" type="FHIR.id" />
    <element name="condition" type="FHIR.string" />
    <element name="check" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.Rule.Target.ParameterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.Rule.TargetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="context" type="FHIR.id" />
    <element name="element" type="FHIR.string" />
    <element name="variable" type="FHIR.id" />
    <element name="listMode">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMapTargetListMode" />
    </element>
    <element name="listRuleId" type="FHIR.id" />
    <element name="transform" type="FHIR.StructureMapTransform" />
    <element name="parameter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.Rule.Target.ParameterComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.Group.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.id" />
    <element name="source">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.Rule.SourceComponent" />
    </element>
    <element name="target">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.Rule.TargetComponent" />
    </element>
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="StructureMap.Group.RuleComponent" />
      </typeSpecifier>
    </element>
    <element name="dependent">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.Rule.DependentComponent" />
    </element>
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.GroupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.id" />
    <element name="extends" type="FHIR.id" />
    <element name="typeMode" type="FHIR.StructureMapGroupTypeMode" />
    <element name="documentation" type="FHIR.string" />
    <element name="input">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.InputComponent" />
    </element>
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.StructureMap.Group.RuleComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="StructureMap.StructureComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="mode" type="FHIR.StructureMapModelMode" />
    <element name="alias" type="FHIR.string" />
    <element name="documentation" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapContextType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapGroupTypeMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapInputMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapModelMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapSourceListMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapTargetListMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="StructureMapTransform">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Subscription" label="Subscription" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="status" type="FHIR.SubscriptionStatus" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactPoint" />
    </element>
    <element name="end" type="FHIR.instant" />
    <element name="reason" type="FHIR.string" />
    <element name="criteria" type="FHIR.string" />
    <element name="error" type="FHIR.string" />
    <element name="channel" type="FHIR.Subscription.ChannelComponent" />
    <element name="tag">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Coding" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Subscription.ChannelComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.SubscriptionChannelType" />
    <element name="endpoint" type="FHIR.uri" />
    <element name="payload" type="FHIR.string" />
    <element name="header">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.string" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SubscriptionChannelType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SubscriptionStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Substance" label="Substance" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.FHIRSubstanceStatus" />
    <element name="category">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.string" />
    <element name="instance">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Substance.InstanceComponent" />
    </element>
    <element name="ingredient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Substance.IngredientComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Substance.IngredientComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="quantity" type="FHIR.Ratio" />
    <element name="substance">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Substance.InstanceComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="expiry" type="FHIR.dateTime" />
    <element name="quantity" type="FHIR.SimpleQuantity" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="SupplyDelivery" label="SupplyDelivery" retrievable="true" primaryCodePath="type">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.SupplyDeliveryStatus" />
    <element name="patient" type="FHIR.Reference" />
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="suppliedItem" type="FHIR.SupplyDelivery.SuppliedItemComponent" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="supplier" type="FHIR.Reference" />
    <element name="destination" type="FHIR.Reference" />
    <element name="receiver">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="SupplyDelivery.SuppliedItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="quantity" type="FHIR.SimpleQuantity" />
    <element name="item">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SupplyDeliveryStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="SupplyRequest" label="SupplyRequest" retrievable="true" primaryCodePath="category">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="status" type="FHIR.SupplyRequestStatus" />
    <element name="category" type="FHIR.CodeableConcept" />
    <element name="priority" type="FHIR.RequestPriority" />
    <element name="orderedItem" type="FHIR.SupplyRequest.OrderedItemComponent" />
    <element name="occurrence">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
      </typeSpecifier>
    </element>
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.SupplyRequest.RequesterComponent" />
    <element name="supplier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="reason">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="deliverFrom" type="FHIR.Reference" />
    <element name="deliverTo" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="SupplyRequest.OrderedItemComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="quantity" type="FHIR.Quantity" />
    <element name="item">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="SupplyRequest.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SupplyRequestStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SystemRestfulInteraction">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="SystemVersionProcessingMode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="Task" label="Task" retrievable="true" primaryCodePath="code">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="definition">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="basedOn">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="groupIdentifier" type="FHIR.Identifier" />
    <element name="partOf">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="status" type="FHIR.TaskStatus" />
    <element name="businessStatus" type="FHIR.CodeableConcept" />
    <element name="intent" type="FHIR.TaskIntent" />
    <element name="priority" type="FHIR.TaskPriority" />
    <element name="code" type="FHIR.CodeableConcept" />
    <element name="description" type="FHIR.string" />
    <element name="focus" type="FHIR.Reference" />
    <element name="for" type="FHIR.Reference" />
    <element name="context" type="FHIR.Reference" />
    <element name="executionPeriod" type="FHIR.Period" />
    <element name="authoredOn" type="FHIR.dateTime" />
    <element name="lastModified" type="FHIR.dateTime" />
    <element name="requester" type="FHIR.Task.RequesterComponent" />
    <element name="performerType">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="owner" type="FHIR.Reference" />
    <element name="reason" type="FHIR.CodeableConcept" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
    <element name="relevantHistory">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="restriction" type="FHIR.Task.RestrictionComponent" />
    <element name="input">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Task.InputComponent" />
    </element>
    <element name="output">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Task.OutputComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Task.InputComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Task.OutputComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.CodeableConcept" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="base64Binary" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="id" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="instant" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="markdown" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="oid" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="positiveInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="time" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="unsignedInt" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Address" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Age" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Annotation" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Attachment" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Coding" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ContactPoint" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Count" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Distance" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Duration" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="HumanName" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Identifier" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Money" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Period" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Ratio" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="SampledData" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Signature" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Meta" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Task.RequesterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="agent" type="FHIR.Reference" />
    <element name="onBehalfOf" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="Task.RestrictionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="repetitions" type="FHIR.positiveInt" />
    <element name="period" type="FHIR.Period" />
    <element name="recipient">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TaskIntent">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TaskPriority">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TaskStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="TestReport" label="TestReport" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.Identifier" />
    <element name="name" type="FHIR.string" />
    <element name="status" type="FHIR.TestReportStatus" />
    <element name="testScript" type="FHIR.Reference" />
    <element name="result" type="FHIR.TestReportResult" />
    <element name="score" type="FHIR.decimal" />
    <element name="tester" type="FHIR.string" />
    <element name="issued" type="FHIR.dateTime" />
    <element name="participant">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestReport.ParticipantComponent" />
    </element>
    <element name="setup" type="FHIR.TestReport.SetupComponent" />
    <element name="test">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestReport.TestComponent" />
    </element>
    <element name="teardown" type="FHIR.TestReport.TeardownComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.ParticipantComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.TestReportParticipantType" />
    <element name="uri" type="FHIR.uri" />
    <element name="display" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.Setup.Action.AssertComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="result" type="FHIR.TestReportActionResult" />
    <element name="message" type="FHIR.markdown" />
    <element name="detail" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.Setup.Action.OperationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="result" type="FHIR.TestReportActionResult" />
    <element name="message" type="FHIR.markdown" />
    <element name="detail" type="FHIR.uri" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.Setup.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestReport.Setup.Action.OperationComponent" />
    <element name="assert" type="FHIR.TestReport.Setup.Action.AssertComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.SetupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestReport.Setup.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.Teardown.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestReport.Setup.Action.OperationComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.TeardownComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestReport.Teardown.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.Test.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestReport.Setup.Action.OperationComponent" />
    <element name="assert" type="FHIR.TestReport.Setup.Action.AssertComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestReport.TestComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestReport.Test.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TestReportActionResult">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TestReportParticipantType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TestReportResult">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TestReportStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="TestScript" label="TestScript" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier" type="FHIR.Identifier" />
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="origin">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.OriginComponent" />
    </element>
    <element name="destination">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.DestinationComponent" />
    </element>
    <element name="metadata" type="FHIR.TestScript.MetadataComponent" />
    <element name="fixture">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.FixtureComponent" />
    </element>
    <element name="profile">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Reference" />
    </element>
    <element name="variable">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.VariableComponent" />
    </element>
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.RuleComponent" />
    </element>
    <element name="setup" type="FHIR.TestScript.SetupComponent" />
    <element name="test">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.TestComponent" />
    </element>
    <element name="teardown" type="FHIR.TestScript.TeardownComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.DestinationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="index" type="FHIR.integer" />
    <element name="profile" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.FixtureComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="autocreate" type="FHIR.boolean" />
    <element name="autodelete" type="FHIR.boolean" />
    <element name="resource" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Metadata.CapabilityComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="required" type="FHIR.boolean" />
    <element name="validated" type="FHIR.boolean" />
    <element name="description" type="FHIR.string" />
    <element name="origin">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.integer" />
    </element>
    <element name="destination" type="FHIR.integer" />
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
    <element name="capabilities" type="FHIR.Reference" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Metadata.LinkComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="description" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.MetadataComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="link">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Metadata.LinkComponent" />
    </element>
    <element name="capability">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Metadata.CapabilityComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.OriginComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="index" type="FHIR.integer" />
    <element name="profile" type="FHIR.Coding" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Rule.ParamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="resource" type="FHIR.Reference" />
    <element name="param">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Rule.ParamComponent" />
    </element>
    <element name="set">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.RulesetComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Ruleset.Rule.ParamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Ruleset.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="ruleId" type="FHIR.id" />
    <element name="param">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Ruleset.Rule.ParamComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.RulesetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="resource" type="FHIR.Reference" />
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Ruleset.RuleComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Rule.ParamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Assert.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="ruleId" type="FHIR.id" />
    <element name="param">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Setup.Action.Assert.Rule.ParamComponent" />
    </element>
    <element name="set" type="FHIR.TestScript.Setup.Action.Assert.RulesetComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Ruleset.Rule.ParamComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Ruleset.RuleComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="ruleId" type="FHIR.id" />
    <element name="param">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Setup.Action.Assert.Ruleset.Rule.ParamComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Assert.RulesetComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="rulesetId" type="FHIR.id" />
    <element name="rule">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Setup.Action.Assert.Ruleset.RuleComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.AssertComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="label" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="direction" type="FHIR.AssertionDirectionType" />
    <element name="compareToSourceId" type="FHIR.string" />
    <element name="compareToSourceExpression" type="FHIR.string" />
    <element name="compareToSourcePath" type="FHIR.string" />
    <element name="contentType" type="FHIR.ContentType" />
    <element name="expression" type="FHIR.string" />
    <element name="headerField" type="FHIR.string" />
    <element name="minimumId" type="FHIR.string" />
    <element name="navigationLinks" type="FHIR.boolean" />
    <element name="operator" type="FHIR.AssertionOperatorType" />
    <element name="path" type="FHIR.string" />
    <element name="requestMethod" type="FHIR.TestScriptRequestMethodCode" />
    <element name="requestURL" type="FHIR.string" />
    <element name="resource" type="FHIR.FHIRDefinedType" />
    <element name="response" type="FHIR.AssertionResponseTypes" />
    <element name="rule" type="FHIR.TestScript.Setup.Action.Assert.RuleComponent" />
    <element name="sourceId" type="FHIR.id" />
    <element name="validateProfileId" type="FHIR.id" />
    <element name="value" type="FHIR.string" />
    <element name="warningOnly" type="FHIR.boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.Operation.RequestHeaderComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="field" type="FHIR.string" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.Action.OperationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.Coding" />
    <element name="resource" type="FHIR.FHIRDefinedType" />
    <element name="label" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="accept" type="FHIR.ContentType" />
    <element name="contentType" type="FHIR.ContentType" />
    <element name="destination" type="FHIR.integer" />
    <element name="encodeRequestUrl" type="FHIR.boolean" />
    <element name="origin" type="FHIR.integer" />
    <element name="params" type="FHIR.string" />
    <element name="requestHeader">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Setup.Action.Operation.RequestHeaderComponent" />
    </element>
    <element name="requestId" type="FHIR.id" />
    <element name="responseId" type="FHIR.id" />
    <element name="sourceId" type="FHIR.id" />
    <element name="targetId" type="FHIR.id" />
    <element name="url" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Setup.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestScript.Setup.Action.OperationComponent" />
    <element name="assert" type="FHIR.TestScript.Setup.Action.AssertComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.SetupComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Setup.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Teardown.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestScript.Setup.Action.OperationComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.TeardownComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Teardown.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.Test.ActionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="operation" type="FHIR.TestScript.Setup.Action.OperationComponent" />
    <element name="assert" type="FHIR.TestScript.Setup.Action.AssertComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.TestComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="action">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.TestScript.Test.ActionComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="TestScript.VariableComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="defaultValue" type="FHIR.string" />
    <element name="description" type="FHIR.string" />
    <element name="expression" type="FHIR.string" />
    <element name="headerField" type="FHIR.string" />
    <element name="hint" type="FHIR.string" />
    <element name="path" type="FHIR.string" />
    <element name="sourceId" type="FHIR.id" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TestScriptRequestMethodCode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Timing" label="Timing" primaryCodePath="code">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="event">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.dateTime" />
    </element>
    <element name="repeat" type="FHIR.Element" />
    <element name="code" type="FHIR.CodeableConcept" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TriggerDefinition" label="TriggerDefinition">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="type" type="FHIR.TriggerType" />
    <element name="eventName" type="FHIR.string" />
    <element name="eventTiming">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Timing" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="date" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="dateTime" />
      </typeSpecifier>
    </element>
    <element name="eventData" type="FHIR.DataRequirement" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TriggerType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TypeDerivationRule">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="TypeRestfulInteraction">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="UDIEntryType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="UnitsOfTime">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="UnknownContentCode">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="UsageContext" label="UsageContext" primaryCodePath="code">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.Coding" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Quantity" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Range" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="Use">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="ValueSet" label="ValueSet" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="url" type="FHIR.uri" />
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="version" type="FHIR.string" />
    <element name="name" type="FHIR.string" />
    <element name="title" type="FHIR.string" />
    <element name="status" type="FHIR.PublicationStatus" />
    <element name="experimental" type="FHIR.boolean" />
    <element name="date" type="FHIR.dateTime" />
    <element name="publisher" type="FHIR.string" />
    <element name="contact">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ContactDetail" />
    </element>
    <element name="description" type="FHIR.markdown" />
    <element name="useContext">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.UsageContext" />
    </element>
    <element name="jurisdiction">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.CodeableConcept" />
    </element>
    <element name="immutable" type="FHIR.boolean" />
    <element name="purpose" type="FHIR.markdown" />
    <element name="copyright" type="FHIR.markdown" />
    <element name="extensible" type="FHIR.boolean" />
    <element name="compose" type="FHIR.ValueSet.ComposeComponent" />
    <element name="expansion" type="FHIR.ValueSet.ExpansionComponent" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Compose.Include.Concept.DesignationComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="language" type="FHIR.code" />
    <element name="use" type="FHIR.Coding" />
    <element name="value" type="FHIR.string" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Compose.Include.ConceptComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="designation">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Compose.Include.Concept.DesignationComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Compose.Include.FilterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="property" type="FHIR.code" />
    <element name="op" type="FHIR.FilterOperator" />
    <element name="value" type="FHIR.code" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Compose.IncludeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.uri" />
    <element name="version" type="FHIR.string" />
    <element name="concept">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Compose.Include.ConceptComponent" />
    </element>
    <element name="filter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Compose.Include.FilterComponent" />
    </element>
    <element name="valueSet">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.uri" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.ComposeComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="lockedDate" type="FHIR.date" />
    <element name="inactive" type="FHIR.boolean" />
    <element name="include">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Compose.IncludeComponent" />
    </element>
    <element name="exclude">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ValueSet.Compose.IncludeComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Expansion.ContainsComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="system" type="FHIR.uri" />
    <element name="abstract" type="FHIR.boolean" />
    <element name="inactive" type="FHIR.boolean" />
    <element name="version" type="FHIR.string" />
    <element name="code" type="FHIR.code" />
    <element name="display" type="FHIR.string" />
    <element name="designation">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ValueSet.Compose.Include.Concept.DesignationComponent" />
      </typeSpecifier>
    </element>
    <element name="contains">
      <typeSpecifier xsi:type="ListTypeSpecifier">
        <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="FHIR" name="ValueSet.Expansion.ContainsComponent" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.Expansion.ParameterComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="name" type="FHIR.string" />
    <element name="value">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="string" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="boolean" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="integer" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="decimal" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="uri" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="code" />
      </typeSpecifier>
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="ValueSet.ExpansionComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier" type="FHIR.uri" />
    <element name="timestamp" type="FHIR.dateTime" />
    <element name="total" type="FHIR.integer" />
    <element name="offset" type="FHIR.integer" />
    <element name="parameter">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Expansion.ParameterComponent" />
    </element>
    <element name="contains">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.ValueSet.Expansion.ContainsComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="VisionBase">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="VisionEyes">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.DomainResource" name="VisionPrescription" label="VisionPrescription" retrievable="true">
    <element name="id" type="FHIR.id" />
    <element name="meta" type="FHIR.Meta" />
    <element name="implicitRules" type="FHIR.uri" />
    <element name="language" type="FHIR.code" />
    <element name="text" type="FHIR.Narrative" />
    <element name="contained">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Resource" />
    </element>
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="identifier">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Identifier" />
    </element>
    <element name="status" type="FHIR.VisionStatus" />
    <element name="patient" type="FHIR.Reference" />
    <element name="encounter" type="FHIR.Reference" />
    <element name="dateWritten" type="FHIR.dateTime" />
    <element name="prescriber" type="FHIR.Reference" />
    <element name="reason">
      <typeSpecifier xsi:type="ChoiceTypeSpecifier">
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="CodeableConcept" />
        <choice xsi:type="NamedTypeSpecifier" modelName="FHIR" name="Reference" />
      </typeSpecifier>
    </element>
    <element name="dispense">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.VisionPrescription.DispenseComponent" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.BackboneElement" name="VisionPrescription.DispenseComponent">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="modifierExtension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="product" type="FHIR.CodeableConcept" />
    <element name="eye" type="FHIR.VisionEyes" />
    <element name="sphere" type="FHIR.decimal" />
    <element name="cylinder" type="FHIR.decimal" />
    <element name="axis" type="FHIR.integer" />
    <element name="prism" type="FHIR.decimal" />
    <element name="base" type="FHIR.VisionBase" />
    <element name="add" type="FHIR.decimal" />
    <element name="power" type="FHIR.decimal" />
    <element name="backCurve" type="FHIR.decimal" />
    <element name="diameter" type="FHIR.decimal" />
    <element name="duration" type="FHIR.SimpleQuantity" />
    <element name="color" type="FHIR.string" />
    <element name="brand" type="FHIR.string" />
    <element name="note">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Annotation" />
    </element>
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="VisionStatus">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="XPathUsageType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="base64Binary" label="base64Binary">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="boolean" label="boolean">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Boolean" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.string" name="code" label="code">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="date" label="date">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.DateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="dateTime" label="dateTime">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.DateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="decimal" label="decimal">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Decimal" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.string" name="id" label="id">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="instant" label="instant">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.DateTime" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="integer" label="integer">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Integer" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.string" name="markdown" label="markdown">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.uri" name="oid" label="oid">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.integer" name="positiveInt" label="positiveInt">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Integer" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="qualityType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="repositoryType">
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="string" label="string">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="time" label="time">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Time" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.integer" name="unsignedInt" label="unsignedInt">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.Integer" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="uri" label="uri">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.uri" name="uuid" label="uuid">
    <element name="id" type="FHIR.string" />
    <element name="extension">
      <typeSpecifier xsi:type="ListTypeSpecifier" elementType="FHIR.Extension" />
    </element>
    <element name="value" type="System.String" />
  </typeInfo>
  <typeInfo xsi:type="ClassInfo" baseType="FHIR.Element" name="xhtml" label="xhtml">
    <element name="id" type="FHIR.string" />
    <element name="extension" type="FHIR.Extension" />
    <element name="value" type="System.String" />
  </typeInfo>
  <conversionInfo functionName="FHIRHelpers.ToBoolean" fromType="boolean" toType="System.Boolean" />
  <conversionInfo functionName="FHIRHelpers.ToDate" fromType="date" toType="System.Date" />
  <conversionInfo functionName="FHIRHelpers.ToDateTime" fromType="instant" toType="System.DateTime" />
  <conversionInfo functionName="FHIRHelpers.ToDateTime" fromType="dateTime" toType="System.DateTime" />
  <conversionInfo functionName="FHIRHelpers.ToDecimal" fromType="decimal" toType="System.Decimal" />
  <conversionInfo functionName="FHIRHelpers.ToInteger" fromType="positiveInt" toType="System.Integer" />
  <conversionInfo functionName="FHIRHelpers.ToInteger" fromType="unsignedInt" toType="System.Integer" />
  <conversionInfo functionName="FHIRHelpers.ToInteger" fromType="integer" toType="System.Integer" />
  <conversionInfo functionName="FHIRHelpers.ToTime" fromType="time" toType="System.Time" />
  <conversionInfo functionName="FHIRHelpers.ToConcept" fromType="CodeableConcept" toType="System.Concept" />
  <conversionInfo functionName="FHIRHelpers.ToCode" fromType="Coding" toType="System.Code" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="string" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="id" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="code" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="markdown" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="uri" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="oid" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="uuid" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="base64Binary" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToRatio" fromType="Ratio" toType="System.Ratio"/>
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AccountStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionCardinalityBehavior" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionConditionKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionGroupingBehavior" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionList" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionParticipantType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionPrecheckBehavior" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionRelationshipType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionRequiredBehavior" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActionSelectionBehavior" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActivityDefinitionKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ActivityParticipantType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AddressType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AddressUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AdministrativeGender" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AdverseEventCategory" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AdverseEventCausality" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AggregationMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceCategory" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceClinicalStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceCriticality" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceSeverity" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AllergyIntoleranceVerificationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AppointmentStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AssertionDirectionType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AssertionOperatorType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AssertionResponseTypes" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AuditEventAction" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AuditEventAgentNetworkType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="AuditEventOutcome" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="BindingStrength" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="BundleType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CapabilityStatementKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CarePlanActivityStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CarePlanIntent" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CarePlanStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CareTeamStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ChargeItemStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ClaimResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ClaimStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ClinicalImpressionStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CodeSystemContentMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CodeSystemHierarchyMeaning" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CommunicationPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CommunicationRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CommunicationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CompartmentCode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CompartmentType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CompositionAttestationMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CompositionStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConceptMapEquivalence" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConceptMapGroupUnmappedMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConditionClinicalStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConditionVerificationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConditionalDeleteStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConditionalReadStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConsentDataMeaning" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConsentExceptType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConsentState" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ConstraintSeverity" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ContactPointSystem" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ContactPointUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ContentType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ContractStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ContributorType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="CoverageStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DataElementStringency" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DayOfWeek" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DaysOfWeek" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DetectedIssueSeverity" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DetectedIssueStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceMetricCalibrationState" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceMetricCalibrationType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceMetricCategory" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceMetricColor" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceMetricOperationalStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DeviceUseStatementStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DiagnosticReportStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DigitalMediaType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DiscriminatorType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DocumentConfidentiality" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DocumentMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DocumentReferenceStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="DocumentRelationshipType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EligibilityRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EligibilityResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EncounterLocationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EncounterStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EndpointStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EnrollmentRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EnrollmentResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EpisodeOfCareStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EventCapabilityMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="EventTiming" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ExplanationOfBenefitStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ExtensionContext" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FHIRAllTypes" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FHIRDefinedType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FHIRDeviceStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FHIRSubstanceStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FamilyHistoryStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FilterOperator" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="FlagStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GoalStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GraphCompartmentRule" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GroupType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GuidanceResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GuideDependencyType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="GuidePageKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="HTTPVerb" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="IdentifierUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="IdentityAssuranceLevel" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ImmunizationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="InstanceAvailability" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="IssueSeverity" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="IssueType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="LinkType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="LinkageType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ListMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ListStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="LocationMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="LocationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MeasmntPrinciple" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MeasureReportStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MeasureReportType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationAdministrationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationDispenseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationRequestIntent" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationRequestPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationStatementStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationStatementTaken" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MedicationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MessageSignificanceCategory" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="MimeType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="NameUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="NamingSystemIdentifierType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="NamingSystemType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="NarrativeStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="NutritionOrderStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ObservationRelationshipType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ObservationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="OperationKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="OperationParameterUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ParameterUse" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ParticipantRequired" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ParticipantStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ParticipationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="PaymentNoticeStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="PaymentReconciliationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcedureRequestIntent" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcedureRequestPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcedureRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcedureStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcessRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProcessResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="PropertyRepresentation" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="PropertyType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ProvenanceEntityRole" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="PublicationStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="QuantityComparator" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="QuestionnaireItemType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="QuestionnaireResponseStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferenceHandlingPolicy" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferenceVersionRules" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferralCategory" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferralPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferralRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ReferredDocumentStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RelatedArtifactType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RequestIntent" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RequestPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ResearchStudyStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ResearchSubjectStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ResourceType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ResourceVersionPolicy" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="ResponseType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RestfulCapabilityMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="RiskAssessmentStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SearchComparator" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SearchEntryMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SearchModifierCode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SearchParamType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SectionMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SlicingRules" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SlotStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SpecimenStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureDefinitionKind" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapContextType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapGroupTypeMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapInputMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapModelMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapSourceListMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapTargetListMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="StructureMapTransform" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SubscriptionChannelType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SubscriptionStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SupplyDeliveryStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SupplyRequestStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SystemRestfulInteraction" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="SystemVersionProcessingMode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TaskIntent" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TaskPriority" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TaskStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TestReportActionResult" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TestReportParticipantType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TestReportResult" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TestReportStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TestScriptRequestMethodCode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TriggerType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TypeDerivationRule" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="TypeRestfulInteraction" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="UDIEntryType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="UnitsOfTime" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="UnknownContentCode" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="Use" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="VisionBase" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="VisionEyes" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="VisionStatus" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="XPathUsageType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="qualityType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToString" fromType="repositoryType" toType="System.String" />
  <conversionInfo functionName="FHIRHelpers.ToInterval" fromType="Period" toType="Interval&lt;System.DateTime&gt;" />
  <conversionInfo functionName="FHIRHelpers.ToInterval" fromType="Range" toType="Interval&lt;System.Quantity&gt;" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Quantity" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Age" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Count" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Distance" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Duration" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="SimpleQuantity" toType="System.Quantity" />
  <conversionInfo functionName="FHIRHelpers.ToQuantity" fromType="Money" toType="System.Quantity" />
</modelInfo>''';