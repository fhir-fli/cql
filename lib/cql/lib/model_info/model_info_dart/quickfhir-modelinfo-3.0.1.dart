const quickfhirmodelinfo301 = r'''<?xml version="1.0" encoding="utf-8"?>
<modelInfo xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" name="QUICKFHIR" version="3.0.1" url="http://hl7.org/fhir" patientClassName="QUICKFHIR.Patient" patientBirthDatePropertyName="birthDate" xmlns="urn:hl7-org:elm-modelinfo:r1">
    <requiredModelInfo name="System" version="1.0.0" />
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Account" label="Account" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="name" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="active">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="balance" type="System.Quantity" />
        <element name="coverage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Account.CoverageComponent" />
        </element>
        <element name="owner" type="QUICKFHIR.Reference" />
        <element name="description" type="System.String" />
        <element name="guarantor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Account.GuarantorComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Account.CoverageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="priority" type="System.Integer" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Account.GuarantorComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="party" type="QUICKFHIR.Reference" />
        <element name="onHold" type="System.Boolean" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ActivityDefinition" label="ActivityDefinition" retrievable="true" primaryCodePath="topic">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="usage" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contributor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contributor" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="library">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="kind" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ActivityDefinition.ParticipantComponent" />
        </element>
        <element name="product">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="dosage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Dosage" />
        </element>
        <element name="bodySite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="transform" type="QUICKFHIR.Reference" />
        <element name="dynamicValue">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ActivityDefinition.DynamicValueComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ActivityDefinition.DynamicValueComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="path" type="System.String" />
        <element name="language" type="System.String" />
        <element name="expression" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ActivityDefinition.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="role" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Address" label="Address">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="use" type="System.String" />
        <element name="type" type="System.String" />
        <element name="text" type="System.String" />
        <element name="line">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="city" type="System.String" />
        <element name="district" type="System.String" />
        <element name="state" type="System.String" />
        <element name="postalCode" type="System.String" />
        <element name="country" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="AdverseEvent" label="AdverseEvent" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="category" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="reaction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="seriousness" type="System.Concept" />
        <element name="outcome" type="System.Concept" />
        <element name="recorder" type="QUICKFHIR.Reference" />
        <element name="eventParticipant" type="QUICKFHIR.Reference" />
        <element name="description" type="System.String" />
        <element name="suspectEntity">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.AdverseEvent.SuspectEntityComponent" />
        </element>
        <element name="subjectMedicalHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="referenceDocument">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="study">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AdverseEvent.SuspectEntityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="instance" type="QUICKFHIR.Reference" />
        <element name="causality" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="AllergyIntolerance" label="AllergyIntolerance" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="clinicalStatus" type="System.String" />
        <element name="verificationStatus" type="System.String" />
        <element name="type" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="criticality" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="onset">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="assertedDate" type="System.DateTime" />
        <element name="recorder" type="QUICKFHIR.Reference" />
        <element name="asserter" type="QUICKFHIR.Reference" />
        <element name="lastOccurrence" type="System.DateTime" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="reaction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.AllergyIntolerance.ReactionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AllergyIntolerance.ReactionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="substance" type="System.Concept" />
        <element name="manifestation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="description" type="System.String" />
        <element name="onset" type="System.DateTime" />
        <element name="severity" type="System.String" />
        <element name="exposureRoute" type="System.Concept" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Annotation" label="Annotation">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="author">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="time" type="System.DateTime" />
        <element name="text" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Appointment" label="Appointment" retrievable="true" primaryCodePath="serviceType">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="serviceCategory" type="System.Concept" />
        <element name="serviceType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="appointmentType" type="System.Concept" />
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="indication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="priority" type="System.Integer" />
        <element name="description" type="System.String" />
        <element name="supportingInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="start" type="System.DateTime" />
        <element name="end" type="System.DateTime" />
        <element name="minutesDuration" type="System.Integer" />
        <element name="slot">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="created" type="System.DateTime" />
        <element name="comment" type="System.String" />
        <element name="incomingReferral">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Appointment.ParticipantComponent" />
        </element>
        <element name="requestedPeriod">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Appointment.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="required" type="System.String" />
        <element name="status" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="AppointmentResponse" label="AppointmentResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="appointment" type="QUICKFHIR.Reference" />
        <element name="start" type="System.DateTime" />
        <element name="end" type="System.DateTime" />
        <element name="participantType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="participantStatus" type="System.String" />
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Attachment" label="Attachment">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="contentType" type="System.String" />
        <element name="language" type="System.String" />
        <element name="data" type="System.String" />
        <element name="url" type="System.String" />
        <element name="size" type="System.Integer" />
        <element name="hash" type="System.String" />
        <element name="title" type="System.String" />
        <element name="creation" type="System.DateTime" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="AuditEvent" label="AuditEvent" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Code" />
        <element name="subtype">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="action" type="System.String" />
        <element name="recorded" type="System.DateTime" />
        <element name="outcome" type="System.String" />
        <element name="purposeOfEvent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="agent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.AuditEvent.AgentComponent" />
        </element>
        <element name="source" type="QUICKFHIR.AuditEvent.SourceComponent" />
        <element name="entity">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.AuditEvent.EntityComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AuditEvent.Agent.NetworkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="address" type="System.String" />
        <element name="type" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AuditEvent.AgentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reference" type="QUICKFHIR.Reference" />
        <element name="userId" type="QUICKFHIR.Identifier" />
        <element name="altId" type="System.String" />
        <element name="name" type="System.String" />
        <element name="requestor" type="System.Boolean" />
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="policy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="media" type="System.Code" />
        <element name="network" type="QUICKFHIR.AuditEvent.Agent.NetworkComponent" />
        <element name="purposeOfUse">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AuditEvent.Entity.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AuditEvent.EntityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="reference" type="QUICKFHIR.Reference" />
        <element name="type" type="System.Code" />
        <element name="role" type="System.Code" />
        <element name="lifecycle" type="System.Code" />
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="query" type="System.String" />
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.AuditEvent.Entity.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="AuditEvent.SourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="site" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="BackboneElement" label="BackboneElement">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Basic" label="Basic" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="created" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Resource" name="Binary" label="Binary" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="contentType" type="System.String" />
        <element name="securityContext" type="QUICKFHIR.Reference" />
        <element name="content" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="BodySite" label="BodySite" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="code" type="System.Concept" />
        <element name="qualifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="description" type="System.String" />
        <element name="image">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Resource" name="Bundle" label="Bundle" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="type" type="System.String" />
        <element name="total" type="System.Integer" />
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Bundle.LinkComponent" />
        </element>
        <element name="entry">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Bundle.EntryComponent" />
        </element>
        <element name="signature" type="QUICKFHIR.Signature" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Bundle.Entry.RequestComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="method" type="System.String" />
        <element name="url" type="System.String" />
        <element name="ifNoneMatch" type="System.String" />
        <element name="ifModifiedSince" type="System.DateTime" />
        <element name="ifMatch" type="System.String" />
        <element name="ifNoneExist" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Bundle.Entry.ResponseComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="status" type="System.String" />
        <element name="location" type="System.String" />
        <element name="etag" type="System.String" />
        <element name="lastModified" type="System.DateTime" />
        <element name="outcome" type="QUICKFHIR.Resource" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Bundle.Entry.SearchComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode" type="System.String" />
        <element name="score" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Bundle.EntryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Bundle.LinkComponent" />
            </typeSpecifier>
        </element>
        <element name="fullUrl" type="System.String" />
        <element name="resource" type="QUICKFHIR.Resource" />
        <element name="search" type="QUICKFHIR.Bundle.Entry.SearchComponent" />
        <element name="request" type="QUICKFHIR.Bundle.Entry.RequestComponent" />
        <element name="response" type="QUICKFHIR.Bundle.Entry.ResponseComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Bundle.LinkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="relation" type="System.String" />
        <element name="url" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CapabilityStatement" label="CapabilityStatement" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="kind" type="System.String" />
        <element name="instantiates">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="software" type="QUICKFHIR.CapabilityStatement.SoftwareComponent" />
        <element name="implementation" type="QUICKFHIR.CapabilityStatement.ImplementationComponent" />
        <element name="fhirVersion" type="System.String" />
        <element name="acceptUnknown" type="System.String" />
        <element name="format">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="patchFormat">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="implementationGuide">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="profile">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="rest">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.RestComponent" />
        </element>
        <element name="messaging">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.MessagingComponent" />
        </element>
        <element name="document">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.DocumentComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.DocumentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode" type="System.String" />
        <element name="documentation" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.ImplementationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="url" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Messaging.EndpointComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="protocol" type="System.Code" />
        <element name="address" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Messaging.EventComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Code" />
        <element name="category" type="System.String" />
        <element name="mode" type="System.String" />
        <element name="focus" type="System.String" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="response" type="QUICKFHIR.Reference" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Messaging.SupportedMessageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode" type="System.String" />
        <element name="definition" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.MessagingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Messaging.EndpointComponent" />
        </element>
        <element name="reliableCache" type="System.Integer" />
        <element name="documentation" type="System.String" />
        <element name="supportedMessage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Messaging.SupportedMessageComponent" />
        </element>
        <element name="event">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Messaging.EventComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.InteractionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.OperationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="definition" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.Resource.InteractionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.Resource.SearchParamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="definition" type="System.String" />
        <element name="type" type="System.String" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.ResourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
        <element name="documentation" type="System.String" />
        <element name="interaction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.Resource.InteractionComponent" />
        </element>
        <element name="versioning" type="System.String" />
        <element name="readHistory" type="System.Boolean" />
        <element name="updateCreate" type="System.Boolean" />
        <element name="conditionalCreate" type="System.Boolean" />
        <element name="conditionalRead" type="System.String" />
        <element name="conditionalUpdate" type="System.Boolean" />
        <element name="conditionalDelete" type="System.String" />
        <element name="referencePolicy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="searchInclude">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="searchRevInclude">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="searchParam">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.Resource.SearchParamComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.Security.CertificateComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="blob" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.Rest.SecurityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="cors" type="System.Boolean" />
        <element name="service">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="description" type="System.String" />
        <element name="certificate">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.Security.CertificateComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.RestComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode" type="System.String" />
        <element name="documentation" type="System.String" />
        <element name="security" type="QUICKFHIR.CapabilityStatement.Rest.SecurityComponent" />
        <element name="resource">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.ResourceComponent" />
        </element>
        <element name="interaction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.InteractionComponent" />
        </element>
        <element name="searchParam">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="CapabilityStatement.Rest.Resource.SearchParamComponent" />
            </typeSpecifier>
        </element>
        <element name="operation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CapabilityStatement.Rest.OperationComponent" />
        </element>
        <element name="compartment">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CapabilityStatement.SoftwareComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="version" type="System.String" />
        <element name="releaseDate" type="System.DateTime" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CarePlan" label="CarePlan" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="intent" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="title" type="System.String" />
        <element name="description" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="author">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="careTeam">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="addresses">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="supportingInfo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="goal">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="activity">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CarePlan.ActivityComponent" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CarePlan.Activity.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="definition" type="QUICKFHIR.Reference" />
        <element name="code" type="System.Concept" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="goal">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="prohibited" type="System.Boolean" />
        <element name="scheduled">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="product">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="dailyAmount" type="System.Quantity" />
        <element name="quantity" type="System.Quantity" />
        <element name="description" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CarePlan.ActivityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="outcomeCodeableConcept">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="outcomeReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="progress">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="reference" type="QUICKFHIR.Reference" />
        <element name="detail" type="QUICKFHIR.CarePlan.Activity.DetailComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CareTeam" label="CareTeam" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="name" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CareTeam.ParticipantComponent" />
        </element>
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="managingOrganization">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CareTeam.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="member" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ChargeItem" label="ChargeItem" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="status" type="System.String" />
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ChargeItem.ParticipantComponent" />
        </element>
        <element name="performingOrganization" type="QUICKFHIR.Reference" />
        <element name="requestingOrganization" type="QUICKFHIR.Reference" />
        <element name="quantity" type="System.Quantity" />
        <element name="bodysite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="factorOverride" type="System.Decimal" />
        <element name="priceOverride" type="System.Quantity" />
        <element name="overrideReason" type="System.String" />
        <element name="enterer" type="QUICKFHIR.Reference" />
        <element name="enteredDate" type="System.DateTime" />
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="service">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="account">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="supportingInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ChargeItem.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="actor" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Claim" label="Claim" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="subType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="use" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="billablePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="created" type="System.DateTime" />
        <element name="enterer" type="QUICKFHIR.Reference" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="priority" type="System.Concept" />
        <element name="fundsReserve" type="System.Concept" />
        <element name="related">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.RelatedComponent" />
        </element>
        <element name="prescription" type="QUICKFHIR.Reference" />
        <element name="originalPrescription" type="QUICKFHIR.Reference" />
        <element name="payee" type="QUICKFHIR.Claim.PayeeComponent" />
        <element name="referral" type="QUICKFHIR.Reference" />
        <element name="facility" type="QUICKFHIR.Reference" />
        <element name="careTeam">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.CareTeamComponent" />
        </element>
        <element name="information">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.InformationComponent" />
        </element>
        <element name="diagnosis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.DiagnosisComponent" />
        </element>
        <element name="procedure">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.ProcedureComponent" />
        </element>
        <element name="insurance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.InsuranceComponent" />
        </element>
        <element name="accident" type="QUICKFHIR.Claim.AccidentComponent" />
        <element name="employmentImpacted">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="hospitalization">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.ItemComponent" />
        </element>
        <element name="total" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.AccidentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="date" type="System.DateTime" />
        <element name="type" type="System.Concept" />
        <element name="location">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.CareTeamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="responsible" type="System.Boolean" />
        <element name="role" type="System.Concept" />
        <element name="qualification" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.DiagnosisComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="diagnosis">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="packageCode" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.InformationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="category" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="reason" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.InsuranceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="focal" type="System.Boolean" />
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="businessArrangement" type="System.String" />
        <element name="preAuthRef">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="claimResponse" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.Item.Detail.SubDetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.Item.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="subDetail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.Item.Detail.SubDetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="careTeamLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="diagnosisLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="procedureLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="informationLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="serviced">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="location">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="bodySite" type="System.Concept" />
        <element name="subSite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="encounter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Claim.Item.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.PayeeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="resourceType" type="System.Code" />
        <element name="party" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.ProcedureComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="date" type="System.DateTime" />
        <element name="procedure">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Claim.RelatedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="claim" type="QUICKFHIR.Reference" />
        <element name="relationship" type="System.Concept" />
        <element name="reference" type="QUICKFHIR.Identifier" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ClaimResponse" label="ClaimResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="created" type="System.DateTime" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="requestProvider" type="QUICKFHIR.Reference" />
        <element name="requestOrganization" type="QUICKFHIR.Reference" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="payeeType" type="System.Concept" />
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.ItemComponent" />
        </element>
        <element name="addItem">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.AddItemComponent" />
        </element>
        <element name="error">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.ErrorComponent" />
        </element>
        <element name="totalCost" type="System.Quantity" />
        <element name="unallocDeductable" type="System.Quantity" />
        <element name="totalBenefit" type="System.Quantity" />
        <element name="payment" type="QUICKFHIR.ClaimResponse.PaymentComponent" />
        <element name="reserved" type="System.Code" />
        <element name="form" type="System.Concept" />
        <element name="processNote">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.ProcessNoteComponent" />
        </element>
        <element name="communicationRequest">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="insurance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.InsuranceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.AddItem.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="fee" type="System.Quantity" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ClaimResponse.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.AddItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="fee" type="System.Quantity" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ClaimResponse.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.AddItem.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.ErrorComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId" type="System.Integer" />
        <element name="detailSequenceLinkId" type="System.Integer" />
        <element name="subdetailSequenceLinkId" type="System.Integer" />
        <element name="code" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.InsuranceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="focal" type="System.Boolean" />
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="businessArrangement" type="System.String" />
        <element name="preAuthRef">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="claimResponse" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.Item.AdjudicationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="reason" type="System.Concept" />
        <element name="amount" type="System.Quantity" />
        <element name="value" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.Item.Detail.SubDetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId" type="System.Integer" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ClaimResponse.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.Item.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId" type="System.Integer" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ClaimResponse.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
        <element name="subDetail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.Item.Detail.SubDetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId" type="System.Integer" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.Item.AdjudicationComponent" />
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClaimResponse.Item.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.PaymentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="adjustment" type="System.Quantity" />
        <element name="date" type="System.DateTime" />
        <element name="amount" type="System.Quantity" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClaimResponse.ProcessNoteComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="number" type="System.Integer" />
        <element name="type" type="System.Concept" />
        <element name="text" type="System.String" />
        <element name="language" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ClinicalImpression" label="ClinicalImpression" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="description" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="effective">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="date" type="System.DateTime" />
        <element name="assessor" type="QUICKFHIR.Reference" />
        <element name="previous" type="QUICKFHIR.Reference" />
        <element name="problem">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="investigation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClinicalImpression.InvestigationComponent" />
        </element>
        <element name="protocol">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="summary" type="System.String" />
        <element name="finding">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ClinicalImpression.FindingComponent" />
        </element>
        <element name="prognosisCodeableConcept">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="prognosisReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClinicalImpression.FindingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="basis" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ClinicalImpression.InvestigationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CodeSystem" label="CodeSystem" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="caseSensitive" type="System.Boolean" />
        <element name="valueSet" type="System.String" />
        <element name="hierarchyMeaning" type="System.String" />
        <element name="compositional" type="System.Boolean" />
        <element name="versionNeeded" type="System.Boolean" />
        <element name="content" type="System.String" />
        <element name="count" type="System.Integer" />
        <element name="filter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CodeSystem.FilterComponent" />
        </element>
        <element name="property">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CodeSystem.PropertyComponent" />
        </element>
        <element name="concept">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CodeSystem.ConceptComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CodeSystem.Concept.DesignationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="language" type="System.String" />
        <element name="use" type="System.Code" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CodeSystem.Concept.PropertyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CodeSystem.ConceptComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="definition" type="System.String" />
        <element name="designation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CodeSystem.Concept.DesignationComponent" />
        </element>
        <element name="property">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CodeSystem.Concept.PropertyComponent" />
        </element>
        <element name="concept">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="CodeSystem.ConceptComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CodeSystem.FilterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="description" type="System.String" />
        <element name="operator">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CodeSystem.PropertyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="uri" type="System.String" />
        <element name="description" type="System.String" />
        <element name="type" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Communication" label="Communication" retrievable="true" primaryCodePath="reasonCode">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="notDone" type="System.Boolean" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="medium">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="recipient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="sent" type="System.DateTime" />
        <element name="received" type="System.DateTime" />
        <element name="sender" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="payload">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Communication.PayloadComponent" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Communication.PayloadComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CommunicationRequest" label="CommunicationRequest" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="priority" type="System.String" />
        <element name="medium">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="recipient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="payload">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CommunicationRequest.PayloadComponent" />
        </element>
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="sender" type="QUICKFHIR.Reference" />
        <element name="requester" type="QUICKFHIR.CommunicationRequest.RequesterComponent" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CommunicationRequest.PayloadComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CommunicationRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="CompartmentDefinition" label="CompartmentDefinition" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="code" type="System.String" />
        <element name="search" type="System.Boolean" />
        <element name="resource">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.CompartmentDefinition.ResourceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="CompartmentDefinition.ResourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="param">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Composition" label="Composition" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="class" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="author">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="title" type="System.String" />
        <element name="confidentiality" type="System.String" />
        <element name="attester">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Composition.AttesterComponent" />
        </element>
        <element name="custodian" type="QUICKFHIR.Reference" />
        <element name="relatesTo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Composition.RelatesToComponent" />
        </element>
        <element name="event">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Composition.EventComponent" />
        </element>
        <element name="section">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Composition.SectionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Composition.AttesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="time" type="System.DateTime" />
        <element name="party" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Composition.EventComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Composition.RelatesToComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="target">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Composition.SectionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="title" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="mode" type="System.String" />
        <element name="orderedBy" type="System.Concept" />
        <element name="entry">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="emptyReason" type="System.Concept" />
        <element name="section">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Composition.SectionComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ConceptMap" label="ConceptMap" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="source">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="target">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="group">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ConceptMap.GroupComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ConceptMap.Group.Element.Target.DependsOnComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="property" type="System.String" />
        <element name="system" type="System.String" />
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ConceptMap.Group.Element.TargetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="equivalence" type="System.String" />
        <element name="comment" type="System.String" />
        <element name="dependsOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ConceptMap.Group.Element.Target.DependsOnComponent" />
        </element>
        <element name="product">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ConceptMap.Group.Element.Target.DependsOnComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ConceptMap.Group.ElementComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ConceptMap.Group.Element.TargetComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ConceptMap.Group.UnmappedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="mode" type="System.String" />
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="url" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ConceptMap.GroupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="source" type="System.String" />
        <element name="target" type="System.String" />
        <element name="element">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ConceptMap.Group.ElementComponent" />
        </element>
        <element name="unmapped" type="QUICKFHIR.ConceptMap.Group.UnmappedComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Condition" label="Condition" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="clinicalStatus" type="System.String" />
        <element name="verificationStatus" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="severity" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="bodySite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="onset">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="abatement">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="assertedDate" type="System.DateTime" />
        <element name="asserter" type="QUICKFHIR.Reference" />
        <element name="stage" type="QUICKFHIR.Condition.StageComponent" />
        <element name="evidence">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Condition.EvidenceComponent" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Condition.EvidenceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Condition.StageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="summary" type="System.Concept" />
        <element name="assessment">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Consent" label="Consent" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="dateTime" type="System.DateTime" />
        <element name="consentingParty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="actor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.ActorComponent" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="organization">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="source">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="policy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.PolicyComponent" />
        </element>
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="purpose">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="dataPeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="data">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.DataComponent" />
        </element>
        <element name="except">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.ExceptComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.ActorComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="reference" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.DataComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="meaning" type="System.String" />
        <element name="reference" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.Except.ActorComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="reference" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.Except.DataComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="meaning" type="System.String" />
        <element name="reference" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.ExceptComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="actor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.Except.ActorComponent" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="purpose">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="class">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="dataPeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="data">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Consent.Except.DataComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Consent.PolicyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="authority" type="System.String" />
        <element name="uri" type="System.String" />
        <element name="Rule" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="ContactDetail" label="ContactDetail">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="ContactPoint" label="ContactPoint">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="system" type="System.String" />
        <element name="value" type="System.String" />
        <element name="use" type="System.String" />
        <element name="rank" type="System.Integer" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Contract" label="Contract" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="issued" type="System.DateTime" />
        <element name="applies">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="subject">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="authority">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="domain">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="subType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="decisionType" type="System.Concept" />
        <element name="contentDerivative" type="System.Concept" />
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="agent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.AgentComponent" />
        </element>
        <element name="signer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.SignerComponent" />
        </element>
        <element name="valuedItem">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.ValuedItemComponent" />
        </element>
        <element name="term">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.TermComponent" />
        </element>
        <element name="binding">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="friendly">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.FriendlyComponent" />
        </element>
        <element name="legal">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.LegalComponent" />
        </element>
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.RuleComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.AgentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="role">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.FriendlyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.LegalComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.SignerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Code" />
        <element name="party" type="QUICKFHIR.Reference" />
        <element name="signature">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Signature" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.Term.AgentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="role">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.Term.ValuedItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="entity">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="effectiveTime" type="System.DateTime" />
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="points" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.TermComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="issued" type="System.DateTime" />
        <element name="applies">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="subType" type="System.Concept" />
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="agent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.Term.AgentComponent" />
        </element>
        <element name="text" type="System.String" />
        <element name="valuedItem">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contract.Term.ValuedItemComponent" />
        </element>
        <element name="group">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Contract.TermComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Contract.ValuedItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="entity">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="effectiveTime" type="System.DateTime" />
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="points" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Contributor" label="Contributor">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="name" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Coverage" label="Coverage" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="policyHolder" type="QUICKFHIR.Reference" />
        <element name="subscriber" type="QUICKFHIR.Reference" />
        <element name="beneficiary" type="QUICKFHIR.Reference" />
        <element name="relationship" type="System.Concept" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="payor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="grouping" type="QUICKFHIR.Coverage.GroupingComponent" />
        <element name="dependent" type="System.String" />
        <element name="sequence" type="System.String" />
        <element name="order" type="System.Integer" />
        <element name="network" type="System.String" />
        <element name="contract">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Coverage.GroupingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="group" type="System.String" />
        <element name="subGroup" type="System.String" />
        <element name="plan" type="System.String" />
        <element name="subPlan" type="System.String" />
        <element name="class" type="System.String" />
        <element name="subClass" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DataElement" label="DataElement" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="stringency" type="System.String" />
        <element name="mapping">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataElement.MappingComponent" />
        </element>
        <element name="element">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ElementDefinition" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DataElement.MappingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identity" type="System.String" />
        <element name="uri" type="System.String" />
        <element name="name" type="System.String" />
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="DataRequirement" label="DataRequirement">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="profile">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="mustSupport">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="codeFilter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
        <element name="dateFilter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DetectedIssue" label="DetectedIssue" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="severity" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="implicated">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="detail" type="System.String" />
        <element name="reference" type="System.String" />
        <element name="mitigation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DetectedIssue.MitigationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DetectedIssue.MitigationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action" type="System.Concept" />
        <element name="date" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Device" label="Device" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="udi" type="QUICKFHIR.Device.UdiComponent" />
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="lotNumber" type="System.String" />
        <element name="manufacturer" type="System.String" />
        <element name="manufactureDate" type="System.DateTime" />
        <element name="expirationDate" type="System.DateTime" />
        <element name="model" type="System.String" />
        <element name="version" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="owner" type="QUICKFHIR.Reference" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="url" type="System.String" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="safety">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Device.UdiComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="deviceIdentifier" type="System.String" />
        <element name="name" type="System.String" />
        <element name="jurisdiction" type="System.String" />
        <element name="carrierHRF" type="System.String" />
        <element name="carrierAIDC" type="System.String" />
        <element name="issuer" type="System.String" />
        <element name="entryType" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DeviceComponent" label="DeviceComponent" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="type" type="System.Concept" />
        <element name="lastSystemChange" type="System.DateTime" />
        <element name="source" type="QUICKFHIR.Reference" />
        <element name="parent" type="QUICKFHIR.Reference" />
        <element name="operationalStatus">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="parameterGroup" type="System.Concept" />
        <element name="measurementPrinciple" type="System.String" />
        <element name="productionSpecification">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DeviceComponent.ProductionSpecificationComponent" />
        </element>
        <element name="languageCode" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DeviceComponent.ProductionSpecificationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="specType" type="System.Concept" />
        <element name="componentId" type="QUICKFHIR.Identifier" />
        <element name="productionSpec" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DeviceMetric" label="DeviceMetric" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="type" type="System.Concept" />
        <element name="unit" type="System.Concept" />
        <element name="source" type="QUICKFHIR.Reference" />
        <element name="parent" type="QUICKFHIR.Reference" />
        <element name="operationalStatus" type="System.String" />
        <element name="color" type="System.String" />
        <element name="category" type="System.String" />
        <element name="measurementPeriod" type="QUICKFHIR.Timing" />
        <element name="calibration">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DeviceMetric.CalibrationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DeviceMetric.CalibrationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="state" type="System.String" />
        <element name="time" type="System.DateTime" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DeviceRequest" label="DeviceRequest" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="priorRequest">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="intent" type="System.Concept" />
        <element name="priority" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.DeviceRequest.RequesterComponent" />
        <element name="performerType" type="System.Concept" />
        <element name="performer" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="supportingInfo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="relevantHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DeviceRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DeviceUseStatement" label="DeviceUseStatement" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="whenUsed">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
            </typeSpecifier>
        </element>
        <element name="recordedOn" type="System.DateTime" />
        <element name="source" type="QUICKFHIR.Reference" />
        <element name="device" type="QUICKFHIR.Reference" />
        <element name="indication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="bodySite" type="System.Concept" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DiagnosticReport" label="DiagnosticReport" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="effective">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="issued" type="System.DateTime" />
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DiagnosticReport.PerformerComponent" />
        </element>
        <element name="specimen">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="result">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="imagingStudy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="image">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DiagnosticReport.ImageComponent" />
        </element>
        <element name="conclusion" type="System.String" />
        <element name="codedDiagnosis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="presentedForm">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DiagnosticReport.ImageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="comment" type="System.String" />
        <element name="link" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DiagnosticReport.PerformerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="actor" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DocumentManifest" label="DocumentManifest" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="masterIdentifier" type="QUICKFHIR.Identifier" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="created" type="System.DateTime" />
        <element name="author">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="recipient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="source" type="System.String" />
        <element name="description" type="System.String" />
        <element name="content">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DocumentManifest.ContentComponent" />
        </element>
        <element name="related">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DocumentManifest.RelatedComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentManifest.ContentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="p">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentManifest.RelatedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="ref" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="DocumentReference" label="DocumentReference" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="masterIdentifier" type="QUICKFHIR.Identifier" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="docStatus" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="class" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="created" type="System.DateTime" />
        <element name="indexed" type="System.DateTime" />
        <element name="author">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="authenticator" type="QUICKFHIR.Reference" />
        <element name="custodian" type="QUICKFHIR.Reference" />
        <element name="relatesTo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DocumentReference.RelatesToComponent" />
        </element>
        <element name="description" type="System.String" />
        <element name="securityLabel">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DocumentReference.ContentComponent" />
        </element>
        <element name="context" type="QUICKFHIR.DocumentReference.ContextComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentReference.ContentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="attachment" type="QUICKFHIR.Attachment" />
        <element name="format" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentReference.Context.RelatedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="ref" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentReference.ContextComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="event">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="facilityType" type="System.Concept" />
        <element name="practiceSetting" type="System.Concept" />
        <element name="sourcePatientInfo" type="QUICKFHIR.Reference" />
        <element name="related">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DocumentReference.Context.RelatedComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="DocumentReference.RelatesToComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="target" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Resource" name="DomainResource" label="DomainResource" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Dosage" label="Dosage">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="text" type="System.String" />
        <element name="additionalInstruction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="patientInstruction" type="System.String" />
        <element name="timing" type="QUICKFHIR.Timing" />
        <element name="asNeeded">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="site" type="System.Concept" />
        <element name="route" type="System.Concept" />
        <element name="method" type="System.Concept" />
        <element name="dose">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
        <element name="maxDosePerPeriod" type="System.Ratio" />
        <element name="maxDosePerAdministration" type="System.Quantity" />
        <element name="maxDosePerLifetime" type="System.Quantity" />
        <element name="rate">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" name="Element" label="Element">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="ElementDefinition" label="ElementDefinition">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="path" type="System.String" />
        <element name="representation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="sliceName" type="System.String" />
        <element name="label" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="slicing" type="QUICKFHIR.Element" />
        <element name="short" type="System.String" />
        <element name="definition" type="System.String" />
        <element name="comment" type="System.String" />
        <element name="requirements" type="System.String" />
        <element name="alias">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
        <element name="base" type="QUICKFHIR.Element" />
        <element name="contentReference" type="System.String" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
        <element name="defaultValue">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
        <element name="meaningWhenMissing" type="System.String" />
        <element name="orderMeaning" type="System.String" />
        <element name="fixed">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
        <element name="pattern">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
        <element name="example">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
        <element name="minValue">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
        <element name="maxValue">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
        <element name="maxLength" type="System.Integer" />
        <element name="condition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="constraint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
        <element name="mustSupport" type="System.Boolean" />
        <element name="isModifier" type="System.Boolean" />
        <element name="isSummary" type="System.Boolean" />
        <element name="binding" type="QUICKFHIR.Element" />
        <element name="mapping">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Element" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="EligibilityRequest" label="EligibilityRequest" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="priority" type="System.Concept" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="serviced">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="created" type="System.DateTime" />
        <element name="enterer" type="QUICKFHIR.Reference" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="facility" type="QUICKFHIR.Reference" />
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="businessArrangement" type="System.String" />
        <element name="benefitCategory" type="System.Concept" />
        <element name="benefitSubCategory" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="EligibilityResponse" label="EligibilityResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="created" type="System.DateTime" />
        <element name="requestProvider" type="QUICKFHIR.Reference" />
        <element name="requestOrganization" type="QUICKFHIR.Reference" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="inforce" type="System.Boolean" />
        <element name="insurance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.EligibilityResponse.InsuranceComponent" />
        </element>
        <element name="form" type="System.Concept" />
        <element name="error">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.EligibilityResponse.ErrorComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EligibilityResponse.ErrorComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EligibilityResponse.Insurance.BenefitBalance.FinancialComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="allowed">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
        <element name="used">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EligibilityResponse.Insurance.BenefitBalanceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="subCategory" type="System.Concept" />
        <element name="excluded" type="System.Boolean" />
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="network" type="System.Concept" />
        <element name="unit" type="System.Concept" />
        <element name="term" type="System.Concept" />
        <element name="financial">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.EligibilityResponse.Insurance.BenefitBalance.FinancialComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EligibilityResponse.InsuranceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="contract" type="QUICKFHIR.Reference" />
        <element name="benefitBalance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.EligibilityResponse.Insurance.BenefitBalanceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Encounter" label="Encounter" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="class" type="System.Code" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="priority" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="episodeOfCare">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="incomingReferral">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Encounter.ParticipantComponent" />
        </element>
        <element name="appointment" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="length" type="System.Quantity" />
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="diagnosis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Encounter.DiagnosisComponent" />
        </element>
        <element name="account">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="hospitalization" type="QUICKFHIR.Encounter.HospitalizationComponent" />
        <element name="location">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Encounter.LocationComponent" />
        </element>
        <element name="serviceProvider" type="QUICKFHIR.Reference" />
        <element name="partOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.ClassHistoryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="class" type="System.Code" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.DiagnosisComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="condition" type="QUICKFHIR.Reference" />
        <element name="role" type="System.Concept" />
        <element name="rank" type="System.Integer" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.HospitalizationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="preAdmissionIdentifier" type="QUICKFHIR.Identifier" />
        <element name="origin" type="QUICKFHIR.Reference" />
        <element name="admitSource" type="System.Concept" />
        <element name="reAdmission" type="System.Concept" />
        <element name="dietPreference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialCourtesy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialArrangement">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="destination" type="QUICKFHIR.Reference" />
        <element name="dischargeDisposition" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.LocationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="individual" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Encounter.StatusHistoryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="status" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Endpoint" label="Endpoint" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="connectionType" type="System.Code" />
        <element name="name" type="System.String" />
        <element name="managingOrganization" type="QUICKFHIR.Reference" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="payloadType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="payloadMimeType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="address" type="System.String" />
        <element name="header">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="EnrollmentRequest" label="EnrollmentRequest" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="created" type="System.DateTime" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="coverage" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="EnrollmentResponse" label="EnrollmentResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="created" type="System.DateTime" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="requestProvider" type="QUICKFHIR.Reference" />
        <element name="requestOrganization" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="EpisodeOfCare" label="EpisodeOfCare" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="diagnosis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.EpisodeOfCare.DiagnosisComponent" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="managingOrganization" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="referralRequest">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="careManager" type="QUICKFHIR.Reference" />
        <element name="team">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="account">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EpisodeOfCare.DiagnosisComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="condition" type="QUICKFHIR.Reference" />
        <element name="role" type="System.Concept" />
        <element name="rank" type="System.Integer" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="EpisodeOfCare.StatusHistoryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="status" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ExpansionProfile" label="ExpansionProfile" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="fixedVersion">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExpansionProfile.FixedVersionComponent" />
        </element>
        <element name="excludedSystem" type="QUICKFHIR.ExpansionProfile.ExcludedSystemComponent" />
        <element name="includeDesignations" type="System.Boolean" />
        <element name="designation" type="QUICKFHIR.ExpansionProfile.DesignationComponent" />
        <element name="includeDefinition" type="System.Boolean" />
        <element name="activeOnly" type="System.Boolean" />
        <element name="excludeNested" type="System.Boolean" />
        <element name="excludeNotForUI" type="System.Boolean" />
        <element name="excludePostCoordinated" type="System.Boolean" />
        <element name="displayLanguage" type="System.String" />
        <element name="limitedExpansion" type="System.Boolean" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.Designation.Exclude.DesignationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="language" type="System.String" />
        <element name="use" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.Designation.ExcludeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="designation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExpansionProfile.Designation.Exclude.DesignationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.Designation.Include.DesignationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="language" type="System.String" />
        <element name="use" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.Designation.IncludeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="designation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExpansionProfile.Designation.Include.DesignationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.DesignationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="include" type="QUICKFHIR.ExpansionProfile.Designation.IncludeComponent" />
        <element name="exclude" type="QUICKFHIR.ExpansionProfile.Designation.ExcludeComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.ExcludedSystemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="system" type="System.String" />
        <element name="version" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExpansionProfile.FixedVersionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="system" type="System.String" />
        <element name="version" type="System.String" />
        <element name="mode" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ExplanationOfBenefit" label="ExplanationOfBenefit" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="subType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="billablePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="created" type="System.DateTime" />
        <element name="enterer" type="QUICKFHIR.Reference" />
        <element name="insurer" type="QUICKFHIR.Reference" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="referral" type="QUICKFHIR.Reference" />
        <element name="facility" type="QUICKFHIR.Reference" />
        <element name="claim" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="related">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.RelatedComponent" />
        </element>
        <element name="prescription" type="QUICKFHIR.Reference" />
        <element name="originalPrescription" type="QUICKFHIR.Reference" />
        <element name="payee" type="QUICKFHIR.ExplanationOfBenefit.PayeeComponent" />
        <element name="information">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.InformationComponent" />
        </element>
        <element name="careTeam">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.CareTeamComponent" />
        </element>
        <element name="diagnosis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.DiagnosisComponent" />
        </element>
        <element name="procedure">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.ProcedureComponent" />
        </element>
        <element name="precedence" type="System.Integer" />
        <element name="insurance" type="QUICKFHIR.ExplanationOfBenefit.InsuranceComponent" />
        <element name="accident" type="QUICKFHIR.ExplanationOfBenefit.AccidentComponent" />
        <element name="employmentImpacted">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="hospitalization">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.ItemComponent" />
        </element>
        <element name="addItem">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.AddItemComponent" />
        </element>
        <element name="totalCost" type="System.Quantity" />
        <element name="unallocDeductable" type="System.Quantity" />
        <element name="totalBenefit" type="System.Quantity" />
        <element name="payment" type="QUICKFHIR.ExplanationOfBenefit.PaymentComponent" />
        <element name="form" type="System.Concept" />
        <element name="processNote">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.ProcessNoteComponent" />
        </element>
        <element name="benefitBalance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.BenefitBalanceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.AccidentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="date" type="System.DateTime" />
        <element name="type" type="System.Concept" />
        <element name="location">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.AddItem.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="fee" type="System.Quantity" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.AddItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="fee" type="System.Quantity" />
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.AddItem.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.BenefitBalance.FinancialComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="allowed">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
        <element name="used">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.BenefitBalanceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="subCategory" type="System.Concept" />
        <element name="excluded" type="System.Boolean" />
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="network" type="System.Concept" />
        <element name="unit" type="System.Concept" />
        <element name="term" type="System.Concept" />
        <element name="financial">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.BenefitBalance.FinancialComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.CareTeamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="responsible" type="System.Boolean" />
        <element name="role" type="System.Concept" />
        <element name="qualification" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.DiagnosisComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="diagnosis">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="packageCode" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.InformationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="category" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="reason" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.InsuranceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="coverage" type="QUICKFHIR.Reference" />
        <element name="preAuthRef">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.Item.AdjudicationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="reason" type="System.Concept" />
        <element name="amount" type="System.Quantity" />
        <element name="value" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.Item.Detail.SubDetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="type" type="System.Concept" />
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.Item.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="type" type="System.Concept" />
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ExplanationOfBenefit.Item.AdjudicationComponent" />
            </typeSpecifier>
        </element>
        <element name="subDetail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.Item.Detail.SubDetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="careTeamLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="diagnosisLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="procedureLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="informationLinkId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="revenue" type="System.Concept" />
        <element name="category" type="System.Concept" />
        <element name="service" type="System.Concept" />
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="programCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="serviced">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="location">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="unitPrice" type="System.Quantity" />
        <element name="factor" type="System.Decimal" />
        <element name="net" type="System.Quantity" />
        <element name="udi">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="bodySite" type="System.Concept" />
        <element name="subSite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="encounter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="noteNumber">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="adjudication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.Item.AdjudicationComponent" />
        </element>
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ExplanationOfBenefit.Item.DetailComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.PayeeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="resourceType" type="System.Concept" />
        <element name="party" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.PaymentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="adjustment" type="System.Quantity" />
        <element name="date" type="System.DateTime" />
        <element name="amount" type="System.Quantity" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.ProcedureComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequence" type="System.Integer" />
        <element name="date" type="System.DateTime" />
        <element name="procedure">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.ProcessNoteComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="number" type="System.Integer" />
        <element name="type" type="System.Concept" />
        <element name="text" type="System.String" />
        <element name="language" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ExplanationOfBenefit.RelatedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="claim" type="QUICKFHIR.Reference" />
        <element name="relationship" type="System.Concept" />
        <element name="reference" type="QUICKFHIR.Identifier" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Extension" label="Extension">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="FamilyMemberHistory" label="FamilyMemberHistory" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="notDone" type="System.Boolean" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="name" type="System.String" />
        <element name="relationship" type="System.Concept" />
        <element name="gender" type="System.String" />
        <element name="born">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="age">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="estimatedAge" type="System.Boolean" />
        <element name="deceased">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="condition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.FamilyMemberHistory.ConditionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="FamilyMemberHistory.ConditionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="outcome" type="System.Concept" />
        <element name="onset">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
            </typeSpecifier>
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Flag" label="Flag" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="author" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Goal" label="Goal" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="priority" type="System.Concept" />
        <element name="description" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="start">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="target" type="QUICKFHIR.Goal.TargetComponent" />
        <element name="statusDate" type="System.DateTime" />
        <element name="statusReason" type="System.String" />
        <element name="expressedBy" type="QUICKFHIR.Reference" />
        <element name="addresses">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="outcomeCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="outcomeReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Goal.TargetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="measure" type="System.Concept" />
        <element name="detail">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="due">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="GraphDefinition" label="GraphDefinition" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="start" type="System.String" />
        <element name="profile" type="System.String" />
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.GraphDefinition.LinkComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="GraphDefinition.Link.Target.CompartmentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="rule" type="System.String" />
        <element name="expression" type="System.String" />
        <element name="description" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="GraphDefinition.Link.TargetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="profile" type="System.String" />
        <element name="compartment">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.GraphDefinition.Link.Target.CompartmentComponent" />
        </element>
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="GraphDefinition.LinkComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="GraphDefinition.LinkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="path" type="System.String" />
        <element name="sliceName" type="System.String" />
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
        <element name="description" type="System.String" />
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.GraphDefinition.Link.TargetComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Group" label="Group" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="type" type="System.String" />
        <element name="actual" type="System.Boolean" />
        <element name="code" type="System.Concept" />
        <element name="name" type="System.String" />
        <element name="quantity" type="System.Integer" />
        <element name="characteristic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Group.CharacteristicComponent" />
        </element>
        <element name="member">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Group.MemberComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Group.CharacteristicComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
        <element name="exclude" type="System.Boolean" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Group.MemberComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="entity" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="inactive" type="System.Boolean" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="GuidanceResponse" label="GuidanceResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="requestId" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="module" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrenceDateTime" type="System.DateTime" />
        <element name="performer" type="QUICKFHIR.Reference" />
        <element name="reason">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="evaluationMessage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="outputParameters" type="QUICKFHIR.Reference" />
        <element name="result" type="QUICKFHIR.Reference" />
        <element name="dataRequirement">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataRequirement" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="HealthcareService" label="HealthcareService" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="providedBy" type="QUICKFHIR.Reference" />
        <element name="category" type="System.Concept" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="location">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="name" type="System.String" />
        <element name="comment" type="System.String" />
        <element name="extraDetails" type="System.String" />
        <element name="photo" type="QUICKFHIR.Attachment" />
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="coverageArea">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="serviceProvisionCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="eligibility" type="System.Concept" />
        <element name="programName">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="characteristic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="referralMethod">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="appointmentRequired" type="System.Boolean" />
        <element name="availableTime">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HealthcareService.AvailableTimeComponent" />
        </element>
        <element name="notAvailable">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HealthcareService.NotAvailableComponent" />
        </element>
        <element name="availabilityExceptions" type="System.String" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="HealthcareService.AvailableTimeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="daysOfWeek">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="allDay" type="System.Boolean" />
        <element name="availableStartTime" type="System.Time" />
        <element name="availableEndTime" type="System.Time" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="HealthcareService.NotAvailableComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="during">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="HumanName" label="HumanName">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="use" type="System.String" />
        <element name="text" type="System.String" />
        <element name="family" type="System.String" />
        <element name="given">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="prefix">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="suffix">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Identifier" label="Identifier">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="use" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="system" type="System.String" />
        <element name="value" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="assigner" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ImagingManifest" label="ImagingManifest" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="authoringTime" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="description" type="System.String" />
        <element name="study">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImagingManifest.StudyComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImagingManifest.Study.Series.InstanceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sopClass" type="System.String" />
        <element name="uid" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImagingManifest.Study.SeriesComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="uid" type="System.String" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="instance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImagingManifest.Study.Series.InstanceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImagingManifest.StudyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="uid" type="System.String" />
        <element name="imagingStudy" type="QUICKFHIR.Reference" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="series">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImagingManifest.Study.SeriesComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ImagingStudy" label="ImagingStudy" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="uid" type="System.String" />
        <element name="accession" type="QUICKFHIR.Identifier" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="availability" type="System.String" />
        <element name="modalityList">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="started" type="System.DateTime" />
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="referrer" type="QUICKFHIR.Reference" />
        <element name="interpreter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="numberOfSeries" type="System.Integer" />
        <element name="numberOfInstances" type="System.Integer" />
        <element name="procedureReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="procedureCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reason" type="System.Concept" />
        <element name="description" type="System.String" />
        <element name="series">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImagingStudy.SeriesComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImagingStudy.Series.InstanceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="uid" type="System.String" />
        <element name="number" type="System.Integer" />
        <element name="sopClass" type="System.String" />
        <element name="title" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImagingStudy.SeriesComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="uid" type="System.String" />
        <element name="number" type="System.Integer" />
        <element name="modality" type="System.Code" />
        <element name="description" type="System.String" />
        <element name="numberOfInstances" type="System.Integer" />
        <element name="availability" type="System.String" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="bodySite" type="System.Code" />
        <element name="laterality" type="System.Code" />
        <element name="started" type="System.DateTime" />
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="instance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImagingStudy.Series.InstanceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Immunization" label="Immunization" retrievable="true" primaryCodePath="vaccineCode">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="notGiven" type="System.Boolean" />
        <element name="vaccineCode" type="System.Concept" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="primarySource" type="System.Boolean" />
        <element name="reportOrigin" type="System.Concept" />
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="manufacturer" type="QUICKFHIR.Reference" />
        <element name="lotNumber" type="System.String" />
        <element name="expirationDate" type="System.DateTime" />
        <element name="site" type="System.Concept" />
        <element name="route" type="System.Concept" />
        <element name="doseQuantity" type="System.Quantity" />
        <element name="practitioner">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Immunization.PractitionerComponent" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="explanation" type="QUICKFHIR.Immunization.ExplanationComponent" />
        <element name="reaction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Immunization.ReactionComponent" />
        </element>
        <element name="vaccinationProtocol">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Immunization.VaccinationProtocolComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Immunization.ExplanationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Immunization.PractitionerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="actor" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Immunization.ReactionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="date" type="System.DateTime" />
        <element name="detail" type="QUICKFHIR.Reference" />
        <element name="reported" type="System.Boolean" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Immunization.VaccinationProtocolComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="doseSequence" type="System.Integer" />
        <element name="description" type="System.String" />
        <element name="authority" type="QUICKFHIR.Reference" />
        <element name="series" type="System.String" />
        <element name="targetDisease">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="doseStatus" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ImmunizationRecommendation" label="ImmunizationRecommendation" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="recommendation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImmunizationRecommendation.RecommendationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImmunizationRecommendation.Recommendation.DateCriterionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="value" type="System.DateTime" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImmunizationRecommendation.Recommendation.ProtocolComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="doseSequence" type="System.Integer" />
        <element name="description" type="System.String" />
        <element name="authority" type="QUICKFHIR.Reference" />
        <element name="series" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImmunizationRecommendation.RecommendationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="date" type="System.DateTime" />
        <element name="vaccineCode" type="System.Concept" />
        <element name="targetDisease" type="System.Concept" />
        <element name="doseNumber" type="System.Integer" />
        <element name="forecastStatus" type="System.Concept" />
        <element name="dateCriterion">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImmunizationRecommendation.Recommendation.DateCriterionComponent" />
        </element>
        <element name="protocol" type="QUICKFHIR.ImmunizationRecommendation.Recommendation.ProtocolComponent" />
        <element name="supportingImmunization">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="supportingPatientInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ImplementationGuide" label="ImplementationGuide" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="fhirVersion" type="System.String" />
        <element name="dependency">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImplementationGuide.DependencyComponent" />
        </element>
        <element name="package">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImplementationGuide.PackageComponent" />
        </element>
        <element name="global">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImplementationGuide.GlobalComponent" />
        </element>
        <element name="binary">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="page" type="QUICKFHIR.ImplementationGuide.PageComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImplementationGuide.DependencyComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="uri" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImplementationGuide.GlobalComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImplementationGuide.Package.ResourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="example" type="System.Boolean" />
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="acronym" type="System.String" />
        <element name="source">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="exampleFor" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImplementationGuide.PackageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="resource">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ImplementationGuide.Package.ResourceComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ImplementationGuide.PageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="source" type="System.String" />
        <element name="title" type="System.String" />
        <element name="kind" type="System.String" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="package">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="format" type="System.String" />
        <element name="page">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ImplementationGuide.PageComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Library" label="Library" retrievable="true" primaryCodePath="topic">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="type" type="System.Concept" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="usage" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contributor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contributor" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="parameter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ParameterDefinition" />
        </element>
        <element name="dataRequirement">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataRequirement" />
        </element>
        <element name="content">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Linkage" label="Linkage" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Linkage.ItemComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Linkage.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="resource" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="List" label="List" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="mode" type="System.String" />
        <element name="title" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="source" type="QUICKFHIR.Reference" />
        <element name="orderedBy" type="System.Concept" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="entry">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.List.EntryComponent" />
        </element>
        <element name="emptyReason" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="List.EntryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="flag" type="System.Concept" />
        <element name="deleted" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="item" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Location" label="Location" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="operationalStatus" type="System.Code" />
        <element name="name" type="System.String" />
        <element name="alias">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="description" type="System.String" />
        <element name="mode" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="address" type="QUICKFHIR.Address" />
        <element name="physicalType" type="System.Concept" />
        <element name="position" type="QUICKFHIR.Location.PositionComponent" />
        <element name="managingOrganization" type="QUICKFHIR.Reference" />
        <element name="partOf" type="QUICKFHIR.Reference" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Location.PositionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="longitude" type="System.Decimal" />
        <element name="latitude" type="System.Decimal" />
        <element name="altitude" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Measure" label="Measure" retrievable="true" primaryCodePath="topic">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="usage" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contributor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contributor" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="library">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="disclaimer" type="System.String" />
        <element name="scoring" type="System.Concept" />
        <element name="compositeScoring" type="System.Concept" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="riskAdjustment" type="System.String" />
        <element name="rateAggregation" type="System.String" />
        <element name="rationale" type="System.String" />
        <element name="clinicalRecommendationStatement" type="System.String" />
        <element name="improvementNotation" type="System.String" />
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="guidance" type="System.String" />
        <element name="set" type="System.String" />
        <element name="group">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Measure.GroupComponent" />
        </element>
        <element name="supplementalData">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Measure.SupplementalDataComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Measure.Group.PopulationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="code" type="System.Concept" />
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="criteria" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Measure.Group.StratifierComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="criteria" type="System.String" />
        <element name="path" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Measure.GroupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="population">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Measure.Group.PopulationComponent" />
        </element>
        <element name="stratifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Measure.Group.StratifierComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Measure.SupplementalDataComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="usage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="criteria" type="System.String" />
        <element name="path" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MeasureReport" label="MeasureReport" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="type" type="System.String" />
        <element name="measure" type="QUICKFHIR.Reference" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="reportingOrganization" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="group">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MeasureReport.GroupComponent" />
        </element>
        <element name="evaluatedResources" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MeasureReport.Group.PopulationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="code" type="System.Concept" />
        <element name="count" type="System.Integer" />
        <element name="patients" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MeasureReport.Group.Stratifier.Stratum.PopulationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="code" type="System.Concept" />
        <element name="count" type="System.Integer" />
        <element name="patients" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MeasureReport.Group.Stratifier.StratumComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="value" type="System.String" />
        <element name="population">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MeasureReport.Group.Stratifier.Stratum.PopulationComponent" />
        </element>
        <element name="measureScore" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MeasureReport.Group.StratifierComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="stratum">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MeasureReport.Group.Stratifier.StratumComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MeasureReport.GroupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="population">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MeasureReport.Group.PopulationComponent" />
        </element>
        <element name="measureScore" type="System.Decimal" />
        <element name="stratifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MeasureReport.Group.StratifierComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Media" label="Media" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="type" type="System.String" />
        <element name="subtype" type="System.Concept" />
        <element name="view" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="operator" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="bodySite" type="System.Concept" />
        <element name="device" type="QUICKFHIR.Reference" />
        <element name="height" type="System.Integer" />
        <element name="width" type="System.Integer" />
        <element name="frames" type="System.Integer" />
        <element name="duration" type="System.Integer" />
        <element name="content" type="QUICKFHIR.Attachment" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Medication" label="Medication" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="status" type="System.String" />
        <element name="isBrand" type="System.Boolean" />
        <element name="isOverTheCounter" type="System.Boolean" />
        <element name="manufacturer" type="QUICKFHIR.Reference" />
        <element name="form" type="System.Concept" />
        <element name="ingredient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Medication.IngredientComponent" />
        </element>
        <element name="package" type="QUICKFHIR.Medication.PackageComponent" />
        <element name="image">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Medication.IngredientComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="isActive" type="System.Boolean" />
        <element name="amount" type="System.Ratio" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Medication.Package.BatchComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="lotNumber" type="System.String" />
        <element name="expirationDate" type="System.DateTime" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Medication.Package.ContentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="amount" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Medication.PackageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="container" type="System.Concept" />
        <element name="content">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Medication.Package.ContentComponent" />
        </element>
        <element name="batch">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Medication.Package.BatchComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MedicationAdministration" label="MedicationAdministration" retrievable="true" primaryCodePath="medication">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="medication">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="supportingInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="effective">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MedicationAdministration.PerformerComponent" />
        </element>
        <element name="notGiven" type="System.Boolean" />
        <element name="reasonNotGiven">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="prescription" type="QUICKFHIR.Reference" />
        <element name="device">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="dosage" type="QUICKFHIR.MedicationAdministration.DosageComponent" />
        <element name="eventHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationAdministration.DosageComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="text" type="System.String" />
        <element name="site" type="System.Concept" />
        <element name="route" type="System.Concept" />
        <element name="method" type="System.Concept" />
        <element name="dose" type="System.Quantity" />
        <element name="rate">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationAdministration.PerformerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MedicationDispense" label="MedicationDispense" retrievable="true" primaryCodePath="medication">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="medication">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="supportingInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MedicationDispense.PerformerComponent" />
        </element>
        <element name="authorizingPrescription">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="quantity" type="System.Quantity" />
        <element name="daysSupply" type="System.Quantity" />
        <element name="whenPrepared" type="System.DateTime" />
        <element name="whenHandedOver" type="System.DateTime" />
        <element name="destination" type="QUICKFHIR.Reference" />
        <element name="receiver">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="dosageInstruction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Dosage" />
        </element>
        <element name="substitution" type="QUICKFHIR.MedicationDispense.SubstitutionComponent" />
        <element name="detectedIssue">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="notDone" type="System.Boolean" />
        <element name="eventHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationDispense.PerformerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationDispense.SubstitutionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="wasSubstituted" type="System.Boolean" />
        <element name="type" type="System.Concept" />
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="responsibleParty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MedicationRequest" label="MedicationRequest" retrievable="true" primaryCodePath="medication">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="intent" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="priority" type="System.String" />
        <element name="medication">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="supportingInformation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.MedicationRequest.RequesterComponent" />
        <element name="recorder" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="dosageInstruction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Dosage" />
        </element>
        <element name="dispenseRequest" type="QUICKFHIR.MedicationRequest.DispenseRequestComponent" />
        <element name="substitution" type="QUICKFHIR.MedicationRequest.SubstitutionComponent" />
        <element name="priorPrescription" type="QUICKFHIR.Reference" />
        <element name="detectedIssue">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="eventHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationRequest.DispenseRequestComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="validityPeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="numberOfRepeatsAllowed" type="System.Integer" />
        <element name="quantity" type="System.Quantity" />
        <element name="expectedSupplyDuration" type="System.Quantity" />
        <element name="performer" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MedicationRequest.SubstitutionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="allowed" type="System.Boolean" />
        <element name="reason" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MedicationStatement" label="MedicationStatement" retrievable="true" primaryCodePath="medication">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="medication">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="effective">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="dateAsserted" type="System.DateTime" />
        <element name="informationSource" type="QUICKFHIR.Reference" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="derivedFrom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="taken" type="System.String" />
        <element name="reasonNotTaken">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="dosage">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Dosage" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MessageDefinition" label="MessageDefinition" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="base" type="QUICKFHIR.Reference" />
        <element name="parent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="event" type="System.Code" />
        <element name="category" type="System.String" />
        <element name="focus">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MessageDefinition.FocusComponent" />
        </element>
        <element name="responseRequired" type="System.Boolean" />
        <element name="allowedResponse">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MessageDefinition.AllowedResponseComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MessageDefinition.AllowedResponseComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="message" type="QUICKFHIR.Reference" />
        <element name="situation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MessageDefinition.FocusComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="MessageHeader" label="MessageHeader" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="event" type="System.Code" />
        <element name="destination">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.MessageHeader.DestinationComponent" />
        </element>
        <element name="receiver" type="QUICKFHIR.Reference" />
        <element name="sender" type="QUICKFHIR.Reference" />
        <element name="timestamp" type="System.DateTime" />
        <element name="enterer" type="QUICKFHIR.Reference" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="source" type="QUICKFHIR.MessageHeader.SourceComponent" />
        <element name="responsible" type="QUICKFHIR.Reference" />
        <element name="reason" type="System.Concept" />
        <element name="response" type="QUICKFHIR.MessageHeader.ResponseComponent" />
        <element name="focus">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MessageHeader.DestinationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="target" type="QUICKFHIR.Reference" />
        <element name="endpoint" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MessageHeader.ResponseComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="System.String" />
        <element name="code" type="System.String" />
        <element name="details" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="MessageHeader.SourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="software" type="System.String" />
        <element name="version" type="System.String" />
        <element name="contact" type="QUICKFHIR.ContactPoint" />
        <element name="endpoint" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Meta" label="Meta">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="versionId" type="System.String" />
        <element name="lastUpdated" type="System.DateTime" />
        <element name="profile">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="security">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="tag">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="NamingSystem" label="NamingSystem" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="kind" type="System.String" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="responsible" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="usage" type="System.String" />
        <element name="uniqueId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.NamingSystem.UniqueIdComponent" />
        </element>
        <element name="replacedBy" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NamingSystem.UniqueIdComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="value" type="System.String" />
        <element name="preferred" type="System.Boolean" />
        <element name="comment" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Narrative" label="Narrative">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="status" type="System.String" />
        <element name="div" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="NutritionOrder" label="NutritionOrder" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="dateTime" type="System.DateTime" />
        <element name="orderer" type="QUICKFHIR.Reference" />
        <element name="allergyIntolerance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="foodPreferenceModifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="excludeFoodModifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="oralDiet" type="QUICKFHIR.NutritionOrder.OralDietComponent" />
        <element name="supplement">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.NutritionOrder.SupplementComponent" />
        </element>
        <element name="enteralFormula" type="QUICKFHIR.NutritionOrder.EnteralFormulaComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.EnteralFormula.AdministrationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="schedule" type="QUICKFHIR.Timing" />
        <element name="quantity" type="System.Quantity" />
        <element name="rate">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.EnteralFormulaComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="baseFormulaType" type="System.Concept" />
        <element name="baseFormulaProductName" type="System.String" />
        <element name="additiveType" type="System.Concept" />
        <element name="additiveProductName" type="System.String" />
        <element name="caloricDensity" type="System.Quantity" />
        <element name="routeofAdministration" type="System.Concept" />
        <element name="administration">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.NutritionOrder.EnteralFormula.AdministrationComponent" />
        </element>
        <element name="maxVolumeToDeliver" type="System.Quantity" />
        <element name="administrationInstruction" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.OralDiet.NutrientComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifier" type="System.Concept" />
        <element name="amount" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.OralDiet.TextureComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifier" type="System.Concept" />
        <element name="foodType" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.OralDietComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="schedule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Timing" />
        </element>
        <element name="nutrient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.NutritionOrder.OralDiet.NutrientComponent" />
        </element>
        <element name="texture">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.NutritionOrder.OralDiet.TextureComponent" />
        </element>
        <element name="fluidConsistencyType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="instruction" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="NutritionOrder.SupplementComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="productName" type="System.String" />
        <element name="schedule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Timing" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="instruction" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Observation" label="Observation" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="effective">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="issued" type="System.DateTime" />
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="dataAbsentReason" type="System.Concept" />
        <element name="interpretation" type="System.Concept" />
        <element name="comment" type="System.String" />
        <element name="bodySite" type="System.Concept" />
        <element name="method" type="System.Concept" />
        <element name="specimen" type="QUICKFHIR.Reference" />
        <element name="device" type="QUICKFHIR.Reference" />
        <element name="referenceRange">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Observation.ReferenceRangeComponent" />
        </element>
        <element name="related">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Observation.RelatedComponent" />
        </element>
        <element name="component">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Observation.ComponentComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Observation.ComponentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="dataAbsentReason" type="System.Concept" />
        <element name="interpretation" type="System.Concept" />
        <element name="referenceRange">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Observation.ReferenceRangeComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Observation.ReferenceRangeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="low" type="System.Quantity" />
        <element name="high" type="System.Quantity" />
        <element name="type" type="System.Concept" />
        <element name="appliesTo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="age">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
        </element>
        <element name="text" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Observation.RelatedComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="target" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="OperationDefinition" label="OperationDefinition" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="kind" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="idempotent" type="System.Boolean" />
        <element name="code" type="System.String" />
        <element name="comment" type="System.String" />
        <element name="base" type="QUICKFHIR.Reference" />
        <element name="resource">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="system" type="System.Boolean" />
        <element name="type" type="System.Boolean" />
        <element name="instance" type="System.Boolean" />
        <element name="parameter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.OperationDefinition.ParameterComponent" />
        </element>
        <element name="overload">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.OperationDefinition.OverloadComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="OperationDefinition.OverloadComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="parameterName">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="OperationDefinition.Parameter.BindingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="strength" type="System.String" />
        <element name="valueSet">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="OperationDefinition.ParameterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="use" type="System.String" />
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
        <element name="documentation" type="System.String" />
        <element name="type" type="System.String" />
        <element name="searchType" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
        <element name="binding" type="QUICKFHIR.OperationDefinition.Parameter.BindingComponent" />
        <element name="part">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="OperationDefinition.ParameterComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="OperationOutcome" label="OperationOutcome" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="issue">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.OperationOutcome.IssueComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="OperationOutcome.IssueComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="severity" type="System.String" />
        <element name="code" type="System.String" />
        <element name="details" type="System.Concept" />
        <element name="diagnostics" type="System.String" />
        <element name="location">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="expression">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Organization" label="Organization" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="name" type="System.String" />
        <element name="alias">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="address">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Address" />
        </element>
        <element name="partOf" type="QUICKFHIR.Reference" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Organization.ContactComponent" />
        </element>
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Organization.ContactComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="purpose" type="System.Concept" />
        <element name="name" type="QUICKFHIR.HumanName" />
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="address" type="QUICKFHIR.Address" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="ParameterDefinition" label="ParameterDefinition">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="use" type="System.String" />
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
        <element name="documentation" type="System.String" />
        <element name="type" type="System.String" />
        <element name="profile" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Resource" name="Parameters" label="Parameters" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="parameter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Parameters.ParameterComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Parameters.ParameterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
        <element name="resource" type="QUICKFHIR.Resource" />
        <element name="part">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Parameters.ParameterComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Patient" label="Patient" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="name">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HumanName" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="gender" type="System.String" />
        <element name="birthDate" type="System.DateTime" />
        <element name="deceased">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
            </typeSpecifier>
        </element>
        <element name="address">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Address" />
        </element>
        <element name="maritalStatus" type="System.Concept" />
        <element name="multipleBirth">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
            </typeSpecifier>
        </element>
        <element name="photo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Patient.ContactComponent" />
        </element>
        <element name="animal" type="QUICKFHIR.Patient.AnimalComponent" />
        <element name="communication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Patient.CommunicationComponent" />
        </element>
        <element name="generalPractitioner">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="managingOrganization" type="QUICKFHIR.Reference" />
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Patient.LinkComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Patient.AnimalComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="species" type="System.Concept" />
        <element name="breed" type="System.Concept" />
        <element name="genderStatus" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Patient.CommunicationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="language" type="System.Concept" />
        <element name="preferred" type="System.Boolean" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Patient.ContactComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="relationship">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="name" type="QUICKFHIR.HumanName" />
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="address" type="QUICKFHIR.Address" />
        <element name="gender" type="System.String" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Patient.LinkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="other" type="QUICKFHIR.Reference" />
        <element name="type" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="PaymentNotice" label="PaymentNotice" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="response" type="QUICKFHIR.Reference" />
        <element name="statusDate" type="System.DateTime" />
        <element name="created" type="System.DateTime" />
        <element name="target" type="QUICKFHIR.Reference" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="paymentStatus" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="PaymentReconciliation" label="PaymentReconciliation" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="created" type="System.DateTime" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="requestProvider" type="QUICKFHIR.Reference" />
        <element name="requestOrganization" type="QUICKFHIR.Reference" />
        <element name="detail">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PaymentReconciliation.DetailComponent" />
        </element>
        <element name="form" type="System.Concept" />
        <element name="total" type="System.Quantity" />
        <element name="processNote">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PaymentReconciliation.ProcessNoteComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PaymentReconciliation.DetailComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="response" type="QUICKFHIR.Reference" />
        <element name="submitter" type="QUICKFHIR.Reference" />
        <element name="payee" type="QUICKFHIR.Reference" />
        <element name="date" type="System.DateTime" />
        <element name="amount" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PaymentReconciliation.ProcessNoteComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="text" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Person" label="Person" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="name">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HumanName" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="gender" type="System.String" />
        <element name="birthDate" type="System.DateTime" />
        <element name="address">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Address" />
        </element>
        <element name="photo" type="QUICKFHIR.Attachment" />
        <element name="managingOrganization" type="QUICKFHIR.Reference" />
        <element name="active" type="System.Boolean" />
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Person.LinkComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Person.LinkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="target" type="QUICKFHIR.Reference" />
        <element name="assurance" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="PlanDefinition" label="PlanDefinition" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="usage" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contributor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contributor" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="library">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="goal">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.GoalComponent" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.Action.ConditionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="kind" type="System.String" />
        <element name="description" type="System.String" />
        <element name="language" type="System.String" />
        <element name="expression" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.Action.DynamicValueComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="path" type="System.String" />
        <element name="language" type="System.String" />
        <element name="expression" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.Action.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="role" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.Action.RelatedActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actionId" type="System.String" />
        <element name="relationship" type="System.String" />
        <element name="offset">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="label" type="System.String" />
        <element name="title" type="System.String" />
        <element name="description" type="System.String" />
        <element name="textEquivalent" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="documentation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="goalId">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="triggerDefinition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TriggerDefinition" />
        </element>
        <element name="condition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.Action.ConditionComponent" />
        </element>
        <element name="input">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataRequirement" />
        </element>
        <element name="output">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataRequirement" />
        </element>
        <element name="relatedAction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.Action.RelatedActionComponent" />
        </element>
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.Action.ParticipantComponent" />
        </element>
        <element name="type" type="System.Code" />
        <element name="groupingBehavior" type="System.String" />
        <element name="selectionBehavior" type="System.String" />
        <element name="requiredBehavior" type="System.String" />
        <element name="precheckBehavior" type="System.String" />
        <element name="cardinalityBehavior" type="System.String" />
        <element name="definition" type="QUICKFHIR.Reference" />
        <element name="transform" type="QUICKFHIR.Reference" />
        <element name="dynamicValue">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.Action.DynamicValueComponent" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="PlanDefinition.ActionComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.Goal.TargetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="measure" type="System.Concept" />
        <element name="detail">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="due" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PlanDefinition.GoalComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="category" type="System.Concept" />
        <element name="description" type="System.Concept" />
        <element name="priority" type="System.Concept" />
        <element name="start" type="System.Concept" />
        <element name="addresses">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="documentation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PlanDefinition.Goal.TargetComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Practitioner" label="Practitioner" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="name">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HumanName" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="address">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Address" />
        </element>
        <element name="gender" type="System.String" />
        <element name="birthDate" type="System.DateTime" />
        <element name="photo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
        <element name="qualification">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Practitioner.QualificationComponent" />
        </element>
        <element name="communication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Practitioner.QualificationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="issuer" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="PractitionerRole" label="PractitionerRole" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="practitioner" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="location">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="healthcareService">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="availableTime">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PractitionerRole.AvailableTimeComponent" />
        </element>
        <element name="notAvailable">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.PractitionerRole.NotAvailableComponent" />
        </element>
        <element name="availabilityExceptions" type="System.String" />
        <element name="endpoint">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PractitionerRole.AvailableTimeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="daysOfWeek">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="allDay" type="System.Boolean" />
        <element name="availableStartTime" type="System.Time" />
        <element name="availableEndTime" type="System.Time" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="PractitionerRole.NotAvailableComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="during">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Procedure" label="Procedure" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="notDone" type="System.Boolean" />
        <element name="category" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="performed">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="performer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Procedure.PerformerComponent" />
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="bodySite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="outcome" type="System.Concept" />
        <element name="report">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="complication">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="followUp">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="focalDevice">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Procedure.FocalDeviceComponent" />
        </element>
        <element name="usedReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="usedCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Procedure.FocalDeviceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action" type="System.Concept" />
        <element name="manipulated" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Procedure.PerformerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.Concept" />
        <element name="actor" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ProcedureRequest" label="ProcedureRequest" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="requisition" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="intent" type="System.String" />
        <element name="priority" type="System.String" />
        <element name="doNotPerform" type="System.Boolean" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="asNeeded">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
            </typeSpecifier>
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.ProcedureRequest.RequesterComponent" />
        <element name="performerType" type="System.Concept" />
        <element name="performer" type="QUICKFHIR.Reference" />
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="supportingInfo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="specimen">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="bodySite">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="relevantHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ProcedureRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ProcessRequest" label="ProcessRequest" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="action" type="System.String" />
        <element name="target" type="QUICKFHIR.Reference" />
        <element name="created" type="System.DateTime" />
        <element name="provider" type="QUICKFHIR.Reference" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="response" type="QUICKFHIR.Reference" />
        <element name="nullify" type="System.Boolean" />
        <element name="reference" type="System.String" />
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ProcessRequest.ItemComponent" />
        </element>
        <element name="include">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="exclude">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ProcessRequest.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="sequenceLinkId" type="System.Integer" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ProcessResponse" label="ProcessResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="created" type="System.DateTime" />
        <element name="organization" type="QUICKFHIR.Reference" />
        <element name="request" type="QUICKFHIR.Reference" />
        <element name="outcome" type="System.Concept" />
        <element name="disposition" type="System.String" />
        <element name="requestProvider" type="QUICKFHIR.Reference" />
        <element name="requestOrganization" type="QUICKFHIR.Reference" />
        <element name="form" type="System.Concept" />
        <element name="processNote">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ProcessResponse.ProcessNoteComponent" />
        </element>
        <element name="error">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="communicationRequest">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ProcessResponse.ProcessNoteComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="text" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Provenance" label="Provenance" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="recorded" type="System.DateTime" />
        <element name="policy">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="location" type="QUICKFHIR.Reference" />
        <element name="reason">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="activity" type="System.Code" />
        <element name="agent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Provenance.AgentComponent" />
        </element>
        <element name="entity">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Provenance.EntityComponent" />
        </element>
        <element name="signature">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Signature" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Provenance.AgentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="who">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="onBehalfOf">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="relatedAgentType" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Provenance.EntityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="role" type="System.String" />
        <element name="what">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
            </typeSpecifier>
        </element>
        <element name="agent">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Provenance.AgentComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Quantity" label="Quantity" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="value" type="System.Decimal" />
        <element name="comparator" type="System.String" />
        <element name="unit" type="System.String" />
        <element name="system" type="System.String" />
        <element name="code" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Questionnaire" label="Questionnaire" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="subjectType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Questionnaire.ItemComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Questionnaire.Item.EnableWhenComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="question" type="System.String" />
        <element name="hasAnswer" type="System.Boolean" />
        <element name="answer">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Questionnaire.Item.OptionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Questionnaire.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="linkId" type="System.String" />
        <element name="definition" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="prefix" type="System.String" />
        <element name="text" type="System.String" />
        <element name="type" type="System.String" />
        <element name="enableWhen">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Questionnaire.Item.EnableWhenComponent" />
        </element>
        <element name="required" type="System.Boolean" />
        <element name="repeats" type="System.Boolean" />
        <element name="readOnly" type="System.Boolean" />
        <element name="maxLength" type="System.Integer" />
        <element name="options" type="QUICKFHIR.Reference" />
        <element name="option">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Questionnaire.Item.OptionComponent" />
        </element>
        <element name="initial">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Questionnaire.ItemComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="QuestionnaireResponse" label="QuestionnaireResponse" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="parent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="questionnaire" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="authored" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="source" type="QUICKFHIR.Reference" />
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.QuestionnaireResponse.ItemComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="QuestionnaireResponse.Item.AnswerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="QuestionnaireResponse.ItemComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="QuestionnaireResponse.ItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="linkId" type="System.String" />
        <element name="definition" type="System.String" />
        <element name="text" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="answer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.QuestionnaireResponse.Item.AnswerComponent" />
        </element>
        <element name="item">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="QuestionnaireResponse.ItemComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Reference" label="Reference">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="reference" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="display" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ReferralRequest" label="ReferralRequest" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="intent" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="priority" type="System.String" />
        <element name="serviceRequested">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.ReferralRequest.RequesterComponent" />
        <element name="specialty" type="System.Concept" />
        <element name="recipient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="reasonCode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="reasonReference">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="description" type="System.String" />
        <element name="supportingInfo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="relevantHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ReferralRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="RelatedArtifact" label="RelatedArtifact">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="display" type="System.String" />
        <element name="citation" type="System.String" />
        <element name="url" type="System.String" />
        <element name="document" type="QUICKFHIR.Attachment" />
        <element name="resource" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="RelatedPerson" label="RelatedPerson" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="relationship" type="System.Concept" />
        <element name="name">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.HumanName" />
        </element>
        <element name="telecom">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="gender" type="System.String" />
        <element name="birthDate" type="System.DateTime" />
        <element name="address">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Address" />
        </element>
        <element name="photo">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Attachment" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="RequestGroup" label="RequestGroup" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="replaces">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="intent" type="System.String" />
        <element name="priority" type="System.String" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="authoredOn" type="System.DateTime" />
        <element name="author" type="QUICKFHIR.Reference" />
        <element name="reason">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RequestGroup.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="RequestGroup.Action.ConditionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="kind" type="System.String" />
        <element name="description" type="System.String" />
        <element name="language" type="System.String" />
        <element name="expression" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="RequestGroup.Action.RelatedActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="actionId" type="System.String" />
        <element name="relationship" type="System.String" />
        <element name="offset">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="RequestGroup.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="label" type="System.String" />
        <element name="title" type="System.String" />
        <element name="description" type="System.String" />
        <element name="textEquivalent" type="System.String" />
        <element name="code">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="documentation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="condition">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RequestGroup.Action.ConditionComponent" />
        </element>
        <element name="relatedAction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RequestGroup.Action.RelatedActionComponent" />
        </element>
        <element name="timing">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="type" type="System.Code" />
        <element name="groupingBehavior" type="System.String" />
        <element name="selectionBehavior" type="System.String" />
        <element name="requiredBehavior" type="System.String" />
        <element name="precheckBehavior" type="System.String" />
        <element name="cardinalityBehavior" type="System.String" />
        <element name="resource" type="QUICKFHIR.Reference" />
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="RequestGroup.ActionComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ResearchStudy" label="ResearchStudy" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="title" type="System.String" />
        <element name="protocol">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="focus">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="keyword">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="description" type="System.String" />
        <element name="enrollment">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="sponsor" type="QUICKFHIR.Reference" />
        <element name="principalInvestigator" type="QUICKFHIR.Reference" />
        <element name="site">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="reasonStopped" type="System.Concept" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="arm">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ResearchStudy.ArmComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ResearchStudy.ArmComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="description" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ResearchSubject" label="ResearchSubject" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="study" type="QUICKFHIR.Reference" />
        <element name="individual" type="QUICKFHIR.Reference" />
        <element name="assignedArm" type="System.String" />
        <element name="actualArm" type="System.String" />
        <element name="consent" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" name="Resource" label="Resource" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="RiskAssessment" label="RiskAssessment" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="basedOn" type="QUICKFHIR.Reference" />
        <element name="parent" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="method" type="System.Concept" />
        <element name="code" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="condition" type="QUICKFHIR.Reference" />
        <element name="performer" type="QUICKFHIR.Reference" />
        <element name="reason">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="basis">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="prediction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RiskAssessment.PredictionComponent" />
        </element>
        <element name="mitigation" type="System.String" />
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="RiskAssessment.PredictionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="outcome" type="System.Concept" />
        <element name="probability">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
        <element name="qualitativeRisk" type="System.Concept" />
        <element name="relativeRisk" type="System.Decimal" />
        <element name="when">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
        <element name="rationale" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="SampledData" label="SampledData">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="origin" type="System.Quantity" />
        <element name="period" type="System.Decimal" />
        <element name="factor" type="System.Decimal" />
        <element name="lowerLimit" type="System.Decimal" />
        <element name="upperLimit" type="System.Decimal" />
        <element name="dimensions" type="System.Integer" />
        <element name="data" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Schedule" label="Schedule" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="active" type="System.Boolean" />
        <element name="serviceCategory" type="System.Concept" />
        <element name="serviceType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="actor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="planningHorizon">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="SearchParameter" label="SearchParameter" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="code" type="System.String" />
        <element name="base">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="type" type="System.String" />
        <element name="derivedFrom" type="System.String" />
        <element name="description" type="System.String" />
        <element name="expression" type="System.String" />
        <element name="xpath" type="System.String" />
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="comparator">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="modifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="chain">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="component">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.SearchParameter.ComponentComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="SearchParameter.ComponentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="definition" type="QUICKFHIR.Reference" />
        <element name="expression" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Sequence" label="Sequence" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="type" type="System.String" />
        <element name="coordinateSystem" type="System.Integer" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="specimen" type="QUICKFHIR.Reference" />
        <element name="device" type="QUICKFHIR.Reference" />
        <element name="performer" type="QUICKFHIR.Reference" />
        <element name="quantity" type="System.Quantity" />
        <element name="referenceSeq" type="QUICKFHIR.Sequence.ReferenceSeqComponent" />
        <element name="variant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Sequence.VariantComponent" />
        </element>
        <element name="observedSeq" type="System.String" />
        <element name="quality">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Sequence.QualityComponent" />
        </element>
        <element name="readCoverage" type="System.Integer" />
        <element name="repository">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Sequence.RepositoryComponent" />
        </element>
        <element name="pointer">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Sequence.QualityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="standardSequence" type="System.Concept" />
        <element name="start" type="System.Integer" />
        <element name="end" type="System.Integer" />
        <element name="score" type="System.Quantity" />
        <element name="method" type="System.Concept" />
        <element name="truthTP" type="System.Decimal" />
        <element name="queryTP" type="System.Decimal" />
        <element name="truthFN" type="System.Decimal" />
        <element name="queryFP" type="System.Decimal" />
        <element name="gtFP" type="System.Decimal" />
        <element name="precision" type="System.Decimal" />
        <element name="recall" type="System.Decimal" />
        <element name="fScore" type="System.Decimal" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Sequence.ReferenceSeqComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="chromosome" type="System.Concept" />
        <element name="genomeBuild" type="System.String" />
        <element name="referenceSeqId" type="System.Concept" />
        <element name="referenceSeqPointer" type="QUICKFHIR.Reference" />
        <element name="referenceSeqString" type="System.String" />
        <element name="strand" type="System.Integer" />
        <element name="windowStart" type="System.Integer" />
        <element name="windowEnd" type="System.Integer" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Sequence.RepositoryComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="url" type="System.String" />
        <element name="name" type="System.String" />
        <element name="datasetId" type="System.String" />
        <element name="variantsetId" type="System.String" />
        <element name="readsetId" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Sequence.VariantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="start" type="System.Integer" />
        <element name="end" type="System.Integer" />
        <element name="observedAllele" type="System.String" />
        <element name="referenceAllele" type="System.String" />
        <element name="cigar" type="System.String" />
        <element name="variantPointer" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ServiceDefinition" label="ServiceDefinition" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="description" type="System.String" />
        <element name="purpose" type="System.String" />
        <element name="usage" type="System.String" />
        <element name="approvalDate" type="System.DateTime" />
        <element name="lastReviewDate" type="System.DateTime" />
        <element name="effectivePeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="topic">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="contributor">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Contributor" />
        </element>
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="copyright" type="System.String" />
        <element name="relatedArtifact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.RelatedArtifact" />
        </element>
        <element name="trigger">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TriggerDefinition" />
        </element>
        <element name="dataRequirement">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.DataRequirement" />
        </element>
        <element name="operationDefinition" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Signature" label="Signature">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="when" type="System.DateTime" />
        <element name="who">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="onBehalfOf">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="contentType" type="System.String" />
        <element name="blob" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Slot" label="Slot" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="serviceCategory" type="System.Concept" />
        <element name="serviceType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="specialty">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="appointmentType" type="System.Concept" />
        <element name="schedule" type="QUICKFHIR.Reference" />
        <element name="status" type="System.String" />
        <element name="start" type="System.DateTime" />
        <element name="end" type="System.DateTime" />
        <element name="overbooked" type="System.Boolean" />
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Specimen" label="Specimen" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="accessionIdentifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="subject" type="QUICKFHIR.Reference" />
        <element name="receivedTime" type="System.DateTime" />
        <element name="parent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="request">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="collection" type="QUICKFHIR.Specimen.CollectionComponent" />
        <element name="processing">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Specimen.ProcessingComponent" />
        </element>
        <element name="container">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Specimen.ContainerComponent" />
        </element>
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Specimen.CollectionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="collector" type="QUICKFHIR.Reference" />
        <element name="collected">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="method" type="System.Concept" />
        <element name="bodySite" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Specimen.ContainerComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="description" type="System.String" />
        <element name="type" type="System.Concept" />
        <element name="capacity" type="System.Quantity" />
        <element name="specimenQuantity" type="System.Quantity" />
        <element name="additive">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Specimen.ProcessingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="description" type="System.String" />
        <element name="procedure" type="System.Concept" />
        <element name="additive">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="time">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="StructureDefinition" label="StructureDefinition" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="keyword">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
        <element name="fhirVersion" type="System.String" />
        <element name="mapping">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureDefinition.MappingComponent" />
        </element>
        <element name="kind" type="System.String" />
        <element name="abstract" type="System.Boolean" />
        <element name="contextType" type="System.String" />
        <element name="context">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="type" type="System.String" />
        <element name="baseDefinition" type="System.String" />
        <element name="derivation" type="System.String" />
        <element name="snapshot" type="QUICKFHIR.StructureDefinition.SnapshotComponent" />
        <element name="differential" type="QUICKFHIR.StructureDefinition.DifferentialComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureDefinition.DifferentialComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="element">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ElementDefinition" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureDefinition.MappingComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identity" type="System.String" />
        <element name="uri" type="System.String" />
        <element name="name" type="System.String" />
        <element name="comment" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureDefinition.SnapshotComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="element">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ElementDefinition" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="StructureMap" label="StructureMap" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="structure">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.StructureComponent" />
        </element>
        <element name="import">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="group">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.GroupComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.InputComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="type" type="System.String" />
        <element name="mode" type="System.String" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.Rule.DependentComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="variable">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.Rule.SourceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="context" type="System.String" />
        <element name="min" type="System.Integer" />
        <element name="max" type="System.String" />
        <element name="type" type="System.String" />
        <element name="defaultValue">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
        <element name="element" type="System.String" />
        <element name="listMode" type="System.String" />
        <element name="variable" type="System.String" />
        <element name="condition" type="System.String" />
        <element name="check" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.Rule.Target.ParameterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.Rule.TargetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="context" type="System.String" />
        <element name="element" type="System.String" />
        <element name="variable" type="System.String" />
        <element name="listMode">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="listRuleId" type="System.String" />
        <element name="transform" type="System.String" />
        <element name="parameter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.Rule.Target.ParameterComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.Group.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="source">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.Rule.SourceComponent" />
        </element>
        <element name="target">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.Rule.TargetComponent" />
        </element>
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="StructureMap.Group.RuleComponent" />
            </typeSpecifier>
        </element>
        <element name="dependent">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.Rule.DependentComponent" />
        </element>
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.GroupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="extends" type="System.String" />
        <element name="typeMode" type="System.String" />
        <element name="documentation" type="System.String" />
        <element name="input">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.InputComponent" />
        </element>
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.StructureMap.Group.RuleComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="StructureMap.StructureComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="mode" type="System.String" />
        <element name="alias" type="System.String" />
        <element name="documentation" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Subscription" label="Subscription" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="status" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactPoint" />
        </element>
        <element name="end" type="System.DateTime" />
        <element name="reason" type="System.String" />
        <element name="criteria" type="System.String" />
        <element name="error" type="System.String" />
        <element name="channel" type="QUICKFHIR.Subscription.ChannelComponent" />
        <element name="tag">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Code" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Subscription.ChannelComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="endpoint" type="System.String" />
        <element name="payload" type="System.String" />
        <element name="header">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Substance" label="Substance" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="category">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="code" type="System.Concept" />
        <element name="description" type="System.String" />
        <element name="instance">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Substance.InstanceComponent" />
        </element>
        <element name="ingredient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Substance.IngredientComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Substance.IngredientComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="quantity" type="System.Ratio" />
        <element name="substance">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Substance.InstanceComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="expiry" type="System.DateTime" />
        <element name="quantity" type="System.Quantity" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="SupplyDelivery" label="SupplyDelivery" retrievable="true" primaryCodePath="type">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="type" type="System.Concept" />
        <element name="suppliedItem" type="QUICKFHIR.SupplyDelivery.SuppliedItemComponent" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="supplier" type="QUICKFHIR.Reference" />
        <element name="destination" type="QUICKFHIR.Reference" />
        <element name="receiver">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="SupplyDelivery.SuppliedItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="item">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="SupplyRequest" label="SupplyRequest" retrievable="true" primaryCodePath="category">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="status" type="System.String" />
        <element name="category" type="System.Concept" />
        <element name="priority" type="System.String" />
        <element name="orderedItem" type="QUICKFHIR.SupplyRequest.OrderedItemComponent" />
        <element name="occurrence">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
            </typeSpecifier>
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.SupplyRequest.RequesterComponent" />
        <element name="supplier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="reason">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="deliverFrom" type="QUICKFHIR.Reference" />
        <element name="deliverTo" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="SupplyRequest.OrderedItemComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="quantity" type="System.Quantity" />
        <element name="item">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="SupplyRequest.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="Task" label="Task" retrievable="true" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="definition">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="basedOn">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="groupIdentifier" type="QUICKFHIR.Identifier" />
        <element name="partOf">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="status" type="System.String" />
        <element name="businessStatus" type="System.Concept" />
        <element name="intent" type="System.String" />
        <element name="priority" type="System.String" />
        <element name="code" type="System.Concept" />
        <element name="description" type="System.String" />
        <element name="focus" type="QUICKFHIR.Reference" />
        <element name="for" type="QUICKFHIR.Reference" />
        <element name="context" type="QUICKFHIR.Reference" />
        <element name="executionPeriod">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="authoredOn" type="System.DateTime" />
        <element name="lastModified" type="System.DateTime" />
        <element name="requester" type="QUICKFHIR.Task.RequesterComponent" />
        <element name="performerType">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="owner" type="QUICKFHIR.Reference" />
        <element name="reason" type="System.Concept" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
        <element name="relevantHistory">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="restriction" type="QUICKFHIR.Task.RestrictionComponent" />
        <element name="input">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Task.InputComponent" />
        </element>
        <element name="output">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Task.OutputComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Task.InputComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Task.OutputComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Concept" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Time" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Address" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Annotation" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Attachment" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Code" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ContactPoint" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="HumanName" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Identifier" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Ratio" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="SampledData" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Signature" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Meta" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Task.RequesterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="agent" type="QUICKFHIR.Reference" />
        <element name="onBehalfOf" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="Task.RestrictionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="repetitions" type="System.Integer" />
        <element name="period">
            <typeSpecifier xsi:type="IntervalTypeSpecifier" pointType="System.DateTime" />
        </element>
        <element name="recipient">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="TestReport" label="TestReport" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="name" type="System.String" />
        <element name="status" type="System.String" />
        <element name="testScript" type="QUICKFHIR.Reference" />
        <element name="result" type="System.String" />
        <element name="score" type="System.Decimal" />
        <element name="tester" type="System.String" />
        <element name="issued" type="System.DateTime" />
        <element name="participant">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestReport.ParticipantComponent" />
        </element>
        <element name="setup" type="QUICKFHIR.TestReport.SetupComponent" />
        <element name="test">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestReport.TestComponent" />
        </element>
        <element name="teardown" type="QUICKFHIR.TestReport.TeardownComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.ParticipantComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="uri" type="System.String" />
        <element name="display" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.Setup.Action.AssertComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="result" type="System.String" />
        <element name="message" type="System.String" />
        <element name="detail" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.Setup.Action.OperationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="result" type="System.String" />
        <element name="message" type="System.String" />
        <element name="detail" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.Setup.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestReport.Setup.Action.OperationComponent" />
        <element name="assert" type="QUICKFHIR.TestReport.Setup.Action.AssertComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.SetupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestReport.Setup.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.Teardown.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestReport.Setup.Action.OperationComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.TeardownComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestReport.Teardown.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.Test.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestReport.Setup.Action.OperationComponent" />
        <element name="assert" type="QUICKFHIR.TestReport.Setup.Action.AssertComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestReport.TestComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestReport.Test.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="TestScript" label="TestScript" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier" type="QUICKFHIR.Identifier" />
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="origin">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.OriginComponent" />
        </element>
        <element name="destination">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.DestinationComponent" />
        </element>
        <element name="metadata" type="QUICKFHIR.TestScript.MetadataComponent" />
        <element name="fixture">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.FixtureComponent" />
        </element>
        <element name="profile">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Reference" />
        </element>
        <element name="variable">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.VariableComponent" />
        </element>
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.RuleComponent" />
        </element>
        <element name="setup" type="QUICKFHIR.TestScript.SetupComponent" />
        <element name="test">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.TestComponent" />
        </element>
        <element name="teardown" type="QUICKFHIR.TestScript.TeardownComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.DestinationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="index" type="System.Integer" />
        <element name="profile" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.FixtureComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="autocreate" type="System.Boolean" />
        <element name="autodelete" type="System.Boolean" />
        <element name="resource" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Metadata.CapabilityComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="required" type="System.Boolean" />
        <element name="validated" type="System.Boolean" />
        <element name="description" type="System.String" />
        <element name="origin">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Integer" />
        </element>
        <element name="destination" type="System.Integer" />
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
        <element name="capabilities" type="QUICKFHIR.Reference" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Metadata.LinkComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="description" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.MetadataComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="link">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Metadata.LinkComponent" />
        </element>
        <element name="capability">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Metadata.CapabilityComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.OriginComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="index" type="System.Integer" />
        <element name="profile" type="System.Code" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Rule.ParamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="resource" type="QUICKFHIR.Reference" />
        <element name="param">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Rule.ParamComponent" />
        </element>
        <element name="set">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.RulesetComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Ruleset.Rule.ParamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Ruleset.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="ruleId" type="System.String" />
        <element name="param">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Ruleset.Rule.ParamComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.RulesetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="resource" type="QUICKFHIR.Reference" />
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Ruleset.RuleComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Rule.ParamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Assert.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="ruleId" type="System.String" />
        <element name="param">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Setup.Action.Assert.Rule.ParamComponent" />
        </element>
        <element name="set" type="QUICKFHIR.TestScript.Setup.Action.Assert.RulesetComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Ruleset.Rule.ParamComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Assert.Ruleset.RuleComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="ruleId" type="System.String" />
        <element name="param">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Setup.Action.Assert.Ruleset.Rule.ParamComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Assert.RulesetComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="rulesetId" type="System.String" />
        <element name="rule">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Setup.Action.Assert.Ruleset.RuleComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.AssertComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="label" type="System.String" />
        <element name="description" type="System.String" />
        <element name="direction" type="System.String" />
        <element name="compareToSourceId" type="System.String" />
        <element name="compareToSourceExpression" type="System.String" />
        <element name="compareToSourcePath" type="System.String" />
        <element name="contentType" type="System.String" />
        <element name="expression" type="System.String" />
        <element name="headerField" type="System.String" />
        <element name="minimumId" type="System.String" />
        <element name="navigationLinks" type="System.Boolean" />
        <element name="operator" type="System.String" />
        <element name="path" type="System.String" />
        <element name="requestMethod" type="System.String" />
        <element name="requestURL" type="System.String" />
        <element name="resource" type="System.String" />
        <element name="response" type="System.String" />
        <element name="rule" type="QUICKFHIR.TestScript.Setup.Action.Assert.RuleComponent" />
        <element name="sourceId" type="System.String" />
        <element name="validateProfileId" type="System.String" />
        <element name="value" type="System.String" />
        <element name="warningOnly" type="System.Boolean" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.Operation.RequestHeaderComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="field" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.Action.OperationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.Code" />
        <element name="resource" type="System.String" />
        <element name="label" type="System.String" />
        <element name="description" type="System.String" />
        <element name="accept" type="System.String" />
        <element name="contentType" type="System.String" />
        <element name="destination" type="System.Integer" />
        <element name="encodeRequestUrl" type="System.Boolean" />
        <element name="origin" type="System.Integer" />
        <element name="params" type="System.String" />
        <element name="requestHeader">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Setup.Action.Operation.RequestHeaderComponent" />
        </element>
        <element name="requestId" type="System.String" />
        <element name="responseId" type="System.String" />
        <element name="sourceId" type="System.String" />
        <element name="targetId" type="System.String" />
        <element name="url" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Setup.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestScript.Setup.Action.OperationComponent" />
        <element name="assert" type="QUICKFHIR.TestScript.Setup.Action.AssertComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.SetupComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Setup.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Teardown.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestScript.Setup.Action.OperationComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.TeardownComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Teardown.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.Test.ActionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="operation" type="QUICKFHIR.TestScript.Setup.Action.OperationComponent" />
        <element name="assert" type="QUICKFHIR.TestScript.Setup.Action.AssertComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.TestComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="description" type="System.String" />
        <element name="action">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.TestScript.Test.ActionComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="TestScript.VariableComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="defaultValue" type="System.String" />
        <element name="description" type="System.String" />
        <element name="expression" type="System.String" />
        <element name="headerField" type="System.String" />
        <element name="hint" type="System.String" />
        <element name="path" type="System.String" />
        <element name="sourceId" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="Timing" label="Timing" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="event">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.DateTime" />
        </element>
        <element name="repeat" type="QUICKFHIR.Element" />
        <element name="code" type="System.Concept" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="TriggerDefinition" label="TriggerDefinition">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="type" type="System.String" />
        <element name="eventName" type="System.String" />
        <element name="eventTiming">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Timing" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="DateTime" />
            </typeSpecifier>
        </element>
        <element name="eventData" type="QUICKFHIR.DataRequirement" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.Element" name="UsageContext" label="UsageContext" primaryCodePath="code">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.Code" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Quantity" />
                <choice xsi:type="IntervalTypeSpecifier" pointType="System.Quantity" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="ValueSet" label="ValueSet" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="url" type="System.String" />
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="version" type="System.String" />
        <element name="name" type="System.String" />
        <element name="title" type="System.String" />
        <element name="status" type="System.String" />
        <element name="experimental" type="System.Boolean" />
        <element name="date" type="System.DateTime" />
        <element name="publisher" type="System.String" />
        <element name="contact">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ContactDetail" />
        </element>
        <element name="description" type="System.String" />
        <element name="useContext">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.UsageContext" />
        </element>
        <element name="jurisdiction">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.Concept" />
        </element>
        <element name="immutable" type="System.Boolean" />
        <element name="purpose" type="System.String" />
        <element name="copyright" type="System.String" />
        <element name="extensible" type="System.Boolean" />
        <element name="compose" type="QUICKFHIR.ValueSet.ComposeComponent" />
        <element name="expansion" type="QUICKFHIR.ValueSet.ExpansionComponent" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Compose.Include.Concept.DesignationComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="language" type="System.String" />
        <element name="use" type="System.Code" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Compose.Include.ConceptComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="designation">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Compose.Include.Concept.DesignationComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Compose.Include.FilterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="property" type="System.String" />
        <element name="op" type="System.String" />
        <element name="value" type="System.String" />
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Compose.IncludeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="system" type="System.String" />
        <element name="version" type="System.String" />
        <element name="concept">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Compose.Include.ConceptComponent" />
        </element>
        <element name="filter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Compose.Include.FilterComponent" />
        </element>
        <element name="valueSet">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="System.String" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.ComposeComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="lockedDate" type="System.DateTime" />
        <element name="inactive" type="System.Boolean" />
        <element name="include">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Compose.IncludeComponent" />
        </element>
        <element name="exclude">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ValueSet.Compose.IncludeComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Expansion.ContainsComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="system" type="System.String" />
        <element name="abstract" type="System.Boolean" />
        <element name="inactive" type="System.Boolean" />
        <element name="version" type="System.String" />
        <element name="code" type="System.String" />
        <element name="display" type="System.String" />
        <element name="designation">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ValueSet.Compose.Include.Concept.DesignationComponent" />
            </typeSpecifier>
        </element>
        <element name="contains">
            <typeSpecifier xsi:type="ListTypeSpecifier">
                <elementTypeSpecifier xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="ValueSet.Expansion.ContainsComponent" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.Expansion.ParameterComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="name" type="System.String" />
        <element name="value">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="String" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Boolean" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Integer" />
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Decimal" />
            </typeSpecifier>
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="ValueSet.ExpansionComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier" type="System.String" />
        <element name="timestamp" type="System.DateTime" />
        <element name="total" type="System.Integer" />
        <element name="offset" type="System.Integer" />
        <element name="parameter">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Expansion.ParameterComponent" />
        </element>
        <element name="contains">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.ValueSet.Expansion.ContainsComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.DomainResource" name="VisionPrescription" label="VisionPrescription" retrievable="true">
        <element name="id" type="System.String" />
        <element name="meta" type="QUICKFHIR.Meta" />
        <element name="implicitRules" type="System.String" />
        <element name="language" type="System.String" />
        <element name="text" type="QUICKFHIR.Narrative" />
        <element name="contained">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Resource" />
        </element>
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="identifier">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Identifier" />
        </element>
        <element name="status" type="System.String" />
        <element name="patient" type="QUICKFHIR.Reference" />
        <element name="encounter" type="QUICKFHIR.Reference" />
        <element name="dateWritten" type="System.DateTime" />
        <element name="prescriber" type="QUICKFHIR.Reference" />
        <element name="reason">
            <typeSpecifier xsi:type="ChoiceTypeSpecifier">
                <choice xsi:type="NamedTypeSpecifier" modelName="System" name="Concept" />
                <choice xsi:type="NamedTypeSpecifier" modelName="QUICKFHIR" name="Reference" />
            </typeSpecifier>
        </element>
        <element name="dispense">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.VisionPrescription.DispenseComponent" />
        </element>
    </typeInfo>
    <typeInfo xsi:type="ClassInfo" baseType="QUICKFHIR.BackboneElement" name="VisionPrescription.DispenseComponent">
        <element name="id" type="System.String" />
        <element name="extension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="modifierExtension">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Extension" />
        </element>
        <element name="product" type="System.Concept" />
        <element name="eye" type="System.String" />
        <element name="sphere" type="System.Decimal" />
        <element name="cylinder" type="System.Decimal" />
        <element name="axis" type="System.Integer" />
        <element name="prism" type="System.Decimal" />
        <element name="base" type="System.String" />
        <element name="add" type="System.Decimal" />
        <element name="power" type="System.Decimal" />
        <element name="backCurve" type="System.Decimal" />
        <element name="diameter" type="System.Decimal" />
        <element name="duration" type="System.Quantity" />
        <element name="color" type="System.String" />
        <element name="brand" type="System.String" />
        <element name="note">
            <typeSpecifier xsi:type="ListTypeSpecifier" elementType="QUICKFHIR.Annotation" />
        </element>
    </typeInfo>
</modelInfo>''';