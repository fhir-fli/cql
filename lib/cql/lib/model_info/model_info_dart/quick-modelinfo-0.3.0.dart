const quickmodelinfo030 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QUICK" url="http://hl7.org/fhir" targetQualifier="quick" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               patientClassName="QUICK.Patient" patientClassIdentifier="cqf-patient" patientBirthDatePropertyName="birthDate" schemaLocation="http://org.hl7.fhir quick.xsd">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Link" baseType="QUICK.BackboneElement">
        <ns4:element name="other" type="QUICK.Reference"/>
        <ns4:element name="type" type="QUICK.LinkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SpecialValues" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SpecialValues_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AggregationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AggregationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrderStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NutritionOrderStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntolerance" baseType="QUICK.DomainResource" retrievable="true" label="AllergyIntolerance" identifier="cqf-allergyintolerance" primaryCodePath="substance">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="recordedDate" type="System.DateTime"/>
        <ns4:element name="recorder" type="QUICK.Reference"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="substance" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.AllergyIntoleranceStatus"/>
        <ns4:element name="criticality" type="QUICK.AllergyIntoleranceCriticality"/>
        <ns4:element name="type" type="QUICK.AllergyIntoleranceType"/>
        <ns4:element name="category" type="QUICK.AllergyIntoleranceCategory"/>
        <ns4:element name="lastOccurence" type="System.DateTime"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="event" type="list&lt;QUICK.AllergyIntolerance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.RestfulConformanceMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Timing" baseType="QUICK.Element">
        <ns4:element name="event" type="list&lt;interval&lt;System.DateTime&gt;&gt;"/>
        <ns4:element name="repeat" type="QUICK.Timing.Repeat"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Network" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="QUICK.SecurityEventParticipantNetworkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Order.When" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="schedule" type="QUICK.Timing"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.RemittanceOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication" baseType="QUICK.DomainResource" retrievable="true" label="Medication" identifier="cqf-medication" primaryCodePath="code">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="isBrand" type="System.Boolean"/>
        <ns4:element name="manufacturer" type="QUICK.Reference"/>
        <ns4:element name="kind" type="QUICK.MedicationKind"/>
        <ns4:element name="product" type="QUICK.Medication.Product"/>
        <ns4:element name="package" type="QUICK.Medication.Package"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Profile.Mapping" baseType="QUICK.BackboneElement">
        <ns4:element name="identity" type="QUICK.id"/>
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Source" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="software" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="contact" type="QUICK.ContactPoint"/>
        <ns4:element name="endpoint" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ResourceProfileStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Reference" baseType="QUICK.Element">
        <ns4:element name="reference" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ObservationRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SupplyStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.List" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="source" type="QUICK.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="ordered" type="System.Boolean"/>
        <ns4:element name="mode" type="QUICK.ListMode"/>
        <ns4:element name="entry" type="list&lt;QUICK.List.Entry&gt;"/>
        <ns4:element name="emptyReason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RiskAssessment.Prediction" baseType="QUICK.BackboneElement">
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="relativeRisk" type="System.Decimal"/>
        <ns4:element name="rationale" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.base64Binary" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.base64Binary_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CarePlanActivityCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DeviceUseRequestPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.Protocol" baseType="QUICK.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="QUICK.Reference"/>
        <ns4:element name="series" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Alert" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.AlertStatus"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationKind" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.OperationKind_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.ServiceType" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EventTiming" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.EventTiming_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.BundleEntryStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Filter" baseType="QUICK.BackboneElement">
        <ns4:element name="property" type="QUICK.code"/>
        <ns4:element name="op" type="QUICK.FilterOperator"/>
        <ns4:element name="value" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Appointment.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="QUICK.Reference"/>
        <ns4:element name="required" type="QUICK.ParticipantRequired"/>
        <ns4:element name="status" type="QUICK.ParticipationStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DomainResource" baseType="QUICK.Resource">
        <ns4:element name="text" type="QUICK.Narrative"/>
        <ns4:element name="contained" type="list&lt;QUICK.ResourceContainer&gt;"/>
        <ns4:element name="extension" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="modifierExtension" type="list&lt;QUICK.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.QuestionnaireStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Collection" baseType="QUICK.BackboneElement">
        <ns4:element name="collector" type="QUICK.Reference"/>
        <ns4:element name="comment" type="list&lt;System.String&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="sourceSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Object" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="reference" type="QUICK.Reference"/>
        <ns4:element name="type" type="QUICK.SecurityEventObjectType"/>
        <ns4:element name="role" type="QUICK.SecurityEventObjectRole"/>
        <ns4:element name="lifecycle" type="QUICK.SecurityEventObjectLifecycle"/>
        <ns4:element name="sensitivity" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="query" type="QUICK.base64Binary"/>
        <ns4:element name="detail" type="list&lt;QUICK.SecurityEvent.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.Performer" baseType="QUICK.BackboneElement">
        <ns4:element name="person" type="QUICK.Reference"/>
        <ns4:element name="role" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.IssueSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NarrativeStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem.UniqueId" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.NamingSystemIdentifierType"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="preferred" type="System.Boolean"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RelatedPerson" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequest.MessagePart" baseType="QUICK.BackboneElement"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter" baseType="QUICK.DomainResource" retrievable="true" label="Encounter" identifier="cqf-encounter" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.EncounterState"/>
        <ns4:element name="class" type="QUICK.EncounterClass"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="participant" type="list&lt;QUICK.Encounter.Participant&gt;"/>
        <ns4:element name="fulfills" type="QUICK.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="length" type="QUICK.Duration"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="indication" type="QUICK.Reference"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="hospitalization" type="QUICK.Encounter.Hospitalization"/>
        <ns4:element name="location" type="list&lt;QUICK.Encounter.Location&gt;"/>
        <ns4:element name="serviceProvider" type="QUICK.Reference"/>
        <ns4:element name="partOf" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.BindingConformance_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="QUICK.NamingSystemType"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="status" type="QUICK.NamingSystemStatus"/>
        <ns4:element name="country" type="QUICK.code"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="responsible" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="usage" type="System.String"/>
        <ns4:element name="uniqueId" type="list&lt;QUICK.NamingSystem.UniqueId&gt;"/>
        <ns4:element name="contact" type="QUICK.NamingSystem.Contact"/>
        <ns4:element name="replacedBy" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExplanationOfBenefit" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="requestProvider" type="QUICK.Reference"/>
        <ns4:element name="requestOrganization" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Activity" baseType="QUICK.BackboneElement">
        <ns4:element name="goal" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="status" type="QUICK.CarePlanActivityStatus"/>
        <ns4:element name="prohibited" type="System.Boolean"/>
        <ns4:element name="actionResulting" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="detail" type="QUICK.Reference"/>
        <ns4:element name="simple" type="QUICK.CarePlan.Simple"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="System.QuantityComparator" baseType="QUICK.Element">
        <ns4:element name="value" type="System.QuantityComparator_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationReliability" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ObservationReliability_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Group" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="group" type="list&lt;QUICK.QuestionnaireAnswers.Group&gt;"/>
        <ns4:element name="question" type="list&lt;QUICK.QuestionnaireAnswers.Question&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Texture" baseType="QUICK.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
        <ns4:element name="foodType" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.GroupType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.GroupType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FamilyHistory.Condition" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Messaging" baseType="QUICK.BackboneElement">
        <ns4:element name="endpoint" type="System.Uri"/>
        <ns4:element name="reliableCache" type="System.Integer"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="event" type="list&lt;QUICK.Conformance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Reversal" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="requestIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="response" type="QUICK.Reference"/>
        <ns4:element name="responseIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="payee" type="QUICK.Reversal.Payee"/>
        <ns4:element name="coverage" type="QUICK.Reversal.Coverage"/>
        <ns4:element name="nullify" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AdministrativeGender_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ParticipantStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DiagnosticOrderStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation.ReferenceRange" baseType="QUICK.BackboneElement">
        <ns4:element name="low" type="System.Quantity"/>
        <ns4:element name="high" type="System.Quantity"/>
        <ns4:element name="meaning" type="System.Concept"/>
        <ns4:element name="age" type="QUICK.Range"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequestStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DeviceUseRequestStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SlicingRules" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SlicingRules_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Subscription" baseType="QUICK.DomainResource">
        <ns4:element name="criteria" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="reason" type="System.String"/>
        <ns4:element name="status" type="QUICK.SubscriptionStatus"/>
        <ns4:element name="error" type="System.String"/>
        <ns4:element name="channel" type="QUICK.Subscription.Channel"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="tag" type="list&lt;QUICK.Subscription.Tag&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CarePlanStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ValueSetStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy.Instance" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="uid" type="QUICK.oid"/>
        <ns4:element name="sopclass" type="QUICK.oid"/>
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="attachment" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Measmnt_Principle" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.Measmnt_Principle_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ContactPointSystem_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystemType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NamingSystemType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Evidence" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="detail" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SupplyDispenseStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.OccurredFollowing" baseType="QUICK.BackboneElement">
        <ns4:element name="codeableConcept" type="System.Concept"/>
        <ns4:element name="target" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExtensionContext" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ExtensionContext_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ProcedureRequestPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CarePlanStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ConditionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.OrderOutcomeStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Practitioner" baseType="QUICK.DomainResource" retrievable="true" label="Practitioner" identifier="cqf-practitioner" primaryCodePath="specialty">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="location" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="qualification" type="list&lt;QUICK.Practitioner.Qualification&gt;"/>
        <ns4:element name="communication" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.QuestionnaireStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="value" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Resource">
        <ns4:element name="id" type="QUICK.id"/>
        <ns4:element name="meta" type="QUICK.Resource.Meta"/>
        <ns4:element name="implicitRules" type="System.Uri"/>
        <ns4:element name="language" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Product" baseType="QUICK.BackboneElement">
        <ns4:element name="form" type="System.Concept"/>
        <ns4:element name="ingredient" type="list&lt;QUICK.Medication.Ingredient&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.InstanceAvailability" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.InstanceAvailability_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SearchParamType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ResourceDataElementStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Animal" baseType="QUICK.BackboneElement">
        <ns4:element name="species" type="System.Concept"/>
        <ns4:element name="breed" type="System.Concept"/>
        <ns4:element name="genderStatus" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.BundleType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.RelatedItem" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.ProcedureRelationshipType"/>
        <ns4:element name="target" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Group" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="type" type="QUICK.GroupType"/>
        <ns4:element name="actual" type="System.Boolean"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="quantity" type="System.Integer"/>
        <ns4:element name="characteristic" type="list&lt;QUICK.Group.Characteristic&gt;"/>
        <ns4:element name="member" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Modality" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.Modality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPointSystem" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ContactPointSystem_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ParticipationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Substance.Instance" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="requestProvider" type="QUICK.Reference"/>
        <ns4:element name="requestOrganization" type="QUICK.Reference"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="payeeType" type="System.Code"/>
        <ns4:element name="item" type="list&lt;QUICK.ClaimResponse.Item&gt;"/>
        <ns4:element name="additem" type="list&lt;QUICK.ClaimResponse.Additem&gt;"/>
        <ns4:element name="error" type="list&lt;QUICK.ClaimResponse.Error&gt;"/>
        <ns4:element name="totalCost" type="QUICK.Money"/>
        <ns4:element name="unallocDeductable" type="QUICK.Money"/>
        <ns4:element name="totalBenefit" type="QUICK.Money"/>
        <ns4:element name="paymentAdjustment" type="QUICK.Money"/>
        <ns4:element name="paymentAdjustmentReason" type="System.Code"/>
        <ns4:element name="paymentDate" type="System.DateTime"/>
        <ns4:element name="paymentAmount" type="QUICK.Money"/>
        <ns4:element name="paymentRef" type="QUICK.Identifier"/>
        <ns4:element name="reserved" type="System.Code"/>
        <ns4:element name="form" type="System.Code"/>
        <ns4:element name="note" type="list&lt;QUICK.ClaimResponse.Note&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Contains" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="contains" type="list&lt;QUICK.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense.Dosage" baseType="QUICK.BackboneElement">
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Resource.Meta" baseType="QUICK.Element">
        <ns4:element name="versionId" type="QUICK.id"/>
        <ns4:element name="lastUpdated" type="System.DateTime"/>
        <ns4:element name="profile" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="security" type="list&lt;System.Code&gt;"/>
        <ns4:element name="tag" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.QuestionnaireAnswersStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CompositionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CompositionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchParameter" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="base" type="QUICK.code"/>
        <ns4:element name="type" type="QUICK.SearchParamType"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
        <ns4:element name="target" type="list&lt;QUICK.code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.base64Binary_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RemittanceOutcome" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.RemittanceOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.DateCriterion" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="value" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Location" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="detail" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance.Entity" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="QUICK.ProvenanceEntityRole"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="agent" type="QUICK.Provenance.Agent"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequestMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ProcedureRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DocumentMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference" baseType="QUICK.DomainResource">
        <ns4:element name="masterIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="author" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="custodian" type="QUICK.Reference"/>
        <ns4:element name="policyManager" type="System.Uri"/>
        <ns4:element name="authenticator" type="QUICK.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="indexed" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.DocumentReferenceStatus"/>
        <ns4:element name="docStatus" type="System.Concept"/>
        <ns4:element name="relatesTo" type="list&lt;QUICK.DocumentReference.RelatesTo&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="confidentiality" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="primaryLanguage" type="QUICK.code"/>
        <ns4:element name="mimeType" type="QUICK.code"/>
        <ns4:element name="format" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="size" type="System.Integer"/>
        <ns4:element name="hash" type="QUICK.base64Binary"/>
        <ns4:element name="location" type="System.Uri"/>
        <ns4:element name="service" type="QUICK.DocumentReference.Service"/>
        <ns4:element name="context" type="QUICK.DocumentReference.Context"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication2" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Questionnaire.Group" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="concept" type="list&lt;System.Code&gt;"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="required" type="System.Boolean"/>
        <ns4:element name="repeats" type="System.Boolean"/>
        <ns4:element name="group" type="list&lt;QUICK.Questionnaire.Group&gt;"/>
        <ns4:element name="question" type="list&lt;QUICK.Questionnaire.Question&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ResourceType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication1" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication4" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication3" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Treatment" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="procedure" type="System.Concept"/>
        <ns4:element name="additive" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Attester" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="list&lt;QUICK.CompositionAttestationMode&gt;"/>
        <ns4:element name="time" type="System.DateTime"/>
        <ns4:element name="party" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReport.Image" baseType="QUICK.BackboneElement">
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="link" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense" baseType="QUICK.DomainResource" retrievable="true" label="MedicationDispense" identifier="cqf-medicationdispense" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.MedicationDispenseStatus"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="dispenser" type="QUICK.Reference"/>
        <ns4:element name="authorizingPrescription" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="dispense" type="list&lt;QUICK.MedicationDispense.Dispense&gt;"/>
        <ns4:element name="substitution" type="QUICK.MedicationDispense.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConformanceStatementStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ConformanceStatementStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ReferralRequest" baseType="QUICK.DomainResource">
        <ns4:element name="status" type="QUICK.ReferralStatus"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="System.Concept"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="requester" type="QUICK.Reference"/>
        <ns4:element name="recipient" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="dateSent" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="serviceRequested" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="supportingInformation" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="fulfillmentTime" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AggregationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CommunicationRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="subDetail" type="list&lt;QUICK.OralHealthClaim.SubDetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Term" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="System.Concept"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SystemRestfulInteraction_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EligibilityResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="requestProvider" type="QUICK.Reference"/>
        <ns4:element name="requestOrganization" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventParticipantNetworkType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResponseType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ResponseType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="action" type="QUICK.SecurityEventAction"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="outcome" type="QUICK.SecurityEventOutcome"/>
        <ns4:element name="outcomeDesc" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MediaType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MediaType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.Map" baseType="QUICK.BackboneElement">
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="equivalence" type="QUICK.ConceptMapEquivalence"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="product" type="list&lt;QUICK.ConceptMap.DependsOn&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Source" baseType="QUICK.BackboneElement">
        <ns4:element name="site" type="System.String"/>
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Parameters" baseType="QUICK.Resource">
        <ns4:element name="parameter" type="list&lt;QUICK.Parameters.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Rest" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="QUICK.RestfulConformanceMode"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="security" type="QUICK.Conformance.Security"/>
        <ns4:element name="resource" type="list&lt;QUICK.Conformance.Resource&gt;"/>
        <ns4:element name="interaction" type="list&lt;QUICK.Conformance.Interaction1&gt;"/>
        <ns4:element name="operation" type="list&lt;QUICK.Conformance.Operation&gt;"/>
        <ns4:element name="documentMailbox" type="list&lt;System.Uri&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.LinkType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Resource" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.code"/>
        <ns4:element name="profile" type="QUICK.Reference"/>
        <ns4:element name="interaction" type="list&lt;QUICK.Conformance.Interaction&gt;"/>
        <ns4:element name="versioning" type="QUICK.ResourceVersionPolicy"/>
        <ns4:element name="readHistory" type="System.Boolean"/>
        <ns4:element name="updateCreate" type="System.Boolean"/>
        <ns4:element name="searchInclude" type="list&lt;System.String&gt;"/>
        <ns4:element name="searchParam" type="list&lt;QUICK.Conformance.SearchParam&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Deleted" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.code"/>
        <ns4:element name="id" type="QUICK.id"/>
        <ns4:element name="versionId" type="QUICK.id"/>
        <ns4:element name="instant" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrderStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DiagnosticOrderStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MessageSignificanceCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BundleType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.BundleType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense.Substitution" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="responsibleParty" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceContainer">
        <ns4:element name="Alert" type="QUICK.Alert"/>
        <ns4:element name="AllergyIntolerance" type="QUICK.AllergyIntolerance"/>
        <ns4:element name="Appointment" type="QUICK.Appointment"/>
        <ns4:element name="AppointmentResponse" type="QUICK.AppointmentResponse"/>
        <ns4:element name="Availability" type="QUICK.Availability"/>
        <ns4:element name="Basic" type="QUICK.Basic"/>
        <ns4:element name="Binary" type="QUICK.Binary"/>
        <ns4:element name="Bundle" type="QUICK.Bundle"/>
        <ns4:element name="CarePlan" type="QUICK.CarePlan"/>
        <ns4:element name="ClaimResponse" type="QUICK.ClaimResponse"/>
        <ns4:element name="CommunicationRequest" type="QUICK.CommunicationRequest"/>
        <ns4:element name="Composition" type="QUICK.Composition"/>
        <ns4:element name="ConceptMap" type="QUICK.ConceptMap"/>
        <ns4:element name="Condition" type="QUICK.Condition"/>
        <ns4:element name="Conformance" type="QUICK.Conformance"/>
        <ns4:element name="Contract" type="QUICK.Contract"/>
        <ns4:element name="Contraindication" type="QUICK.Contraindication"/>
        <ns4:element name="Coverage" type="QUICK.Coverage"/>
        <ns4:element name="DataElement" type="QUICK.DataElement"/>
        <ns4:element name="Device" type="QUICK.Device"/>
        <ns4:element name="DeviceComponent" type="QUICK.DeviceComponent"/>
        <ns4:element name="DeviceUseRequest" type="QUICK.DeviceUseRequest"/>
        <ns4:element name="DeviceUseStatement" type="QUICK.DeviceUseStatement"/>
        <ns4:element name="DiagnosticOrder" type="QUICK.DiagnosticOrder"/>
        <ns4:element name="DiagnosticReport" type="QUICK.DiagnosticReport"/>
        <ns4:element name="DocumentManifest" type="QUICK.DocumentManifest"/>
        <ns4:element name="DocumentReference" type="QUICK.DocumentReference"/>
        <ns4:element name="Eligibility" type="QUICK.Eligibility"/>
        <ns4:element name="EligibilityResponse" type="QUICK.EligibilityResponse"/>
        <ns4:element name="Encounter" type="QUICK.Encounter"/>
        <ns4:element name="ExplanationOfBenefit" type="QUICK.ExplanationOfBenefit"/>
        <ns4:element name="ExtensionDefinition" type="QUICK.ExtensionDefinition"/>
        <ns4:element name="FamilyHistory" type="QUICK.FamilyHistory"/>
        <ns4:element name="Group" type="QUICK.Group"/>
        <ns4:element name="HealthcareService" type="QUICK.HealthcareService"/>
        <ns4:element name="ImagingStudy" type="QUICK.ImagingStudy"/>
        <ns4:element name="Immunization" type="QUICK.Immunization"/>
        <ns4:element name="ImmunizationRecommendation" type="QUICK.ImmunizationRecommendation"/>
        <ns4:element name="List" type="QUICK.List"/>
        <ns4:element name="Location" type="QUICK.Location"/>
        <ns4:element name="Media" type="QUICK.Media"/>
        <ns4:element name="Medication" type="QUICK.Medication"/>
        <ns4:element name="MedicationAdministration" type="QUICK.MedicationAdministration"/>
        <ns4:element name="MedicationDispense" type="QUICK.MedicationDispense"/>
        <ns4:element name="MedicationPrescription" type="QUICK.MedicationPrescription"/>
        <ns4:element name="MedicationStatement" type="QUICK.MedicationStatement"/>
        <ns4:element name="MessageHeader" type="QUICK.MessageHeader"/>
        <ns4:element name="NamingSystem" type="QUICK.NamingSystem"/>
        <ns4:element name="NutritionOrder" type="QUICK.NutritionOrder"/>
        <ns4:element name="Observation" type="QUICK.Observation"/>
        <ns4:element name="OperationDefinition" type="QUICK.OperationDefinition"/>
        <ns4:element name="OperationOutcome" type="QUICK.OperationOutcome"/>
        <ns4:element name="OralHealthClaim" type="QUICK.OralHealthClaim"/>
        <ns4:element name="Order" type="QUICK.Order"/>
        <ns4:element name="OrderResponse" type="QUICK.OrderResponse"/>
        <ns4:element name="Organization" type="QUICK.Organization"/>
        <ns4:element name="Other" type="QUICK.Other"/>
        <ns4:element name="Patient" type="QUICK.Patient"/>
        <ns4:element name="Practitioner" type="QUICK.Practitioner"/>
        <ns4:element name="Procedure" type="QUICK.Procedure"/>
        <ns4:element name="ProcedureRequest" type="QUICK.ProcedureRequest"/>
        <ns4:element name="Profile" type="QUICK.Profile"/>
        <ns4:element name="Provenance" type="QUICK.Provenance"/>
        <ns4:element name="Query" type="QUICK.Query"/>
        <ns4:element name="Questionnaire" type="QUICK.Questionnaire"/>
        <ns4:element name="QuestionnaireAnswers" type="QUICK.QuestionnaireAnswers"/>
        <ns4:element name="ReferralRequest" type="QUICK.ReferralRequest"/>
        <ns4:element name="RelatedPerson" type="QUICK.RelatedPerson"/>
        <ns4:element name="Reversal" type="QUICK.Reversal"/>
        <ns4:element name="RiskAssessment" type="QUICK.RiskAssessment"/>
        <ns4:element name="SearchParameter" type="QUICK.SearchParameter"/>
        <ns4:element name="SecurityEvent" type="QUICK.SecurityEvent"/>
        <ns4:element name="Slot" type="QUICK.Slot"/>
        <ns4:element name="Specimen" type="QUICK.Specimen"/>
        <ns4:element name="Subscription" type="QUICK.Subscription"/>
        <ns4:element name="Substance" type="QUICK.Substance"/>
        <ns4:element name="Supply" type="QUICK.Supply"/>
        <ns4:element name="SupportingDocumentation" type="QUICK.SupportingDocumentation"/>
        <ns4:element name="ValueSet" type="QUICK.ValueSet"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ConformanceEventMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.Reaction" baseType="QUICK.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="detail" type="QUICK.Reference"/>
        <ns4:element name="reported" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="relationship" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BackboneElement" baseType="QUICK.Element">
        <ns4:element name="modifierExtension" type="list&lt;QUICK.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Reversal.Payee" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="person" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DiagnosticOrderPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization" baseType="QUICK.DomainResource" retrievable="true" label="Immunization" identifier="cqf-immunization" primaryCodePath="vaccineType">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="refusedIndicator" type="System.Boolean"/>
        <ns4:element name="reported" type="System.Boolean"/>
        <ns4:element name="performer" type="QUICK.Reference"/>
        <ns4:element name="requester" type="QUICK.Reference"/>
        <ns4:element name="manufacturer" type="QUICK.Reference"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="expirationDate" type="System.DateTime"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="explanation" type="QUICK.Immunization.Explanation"/>
        <ns4:element name="reaction" type="list&lt;QUICK.Immunization.Reaction&gt;"/>
        <ns4:element name="vaccinationProtocol" type="list&lt;QUICK.Immunization.VaccinationProtocol&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanActivityCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CarePlanActivityCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.EventTiming_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Other" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentManifest" baseType="QUICK.DomainResource">
        <ns4:element name="masterIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="recipient" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="author" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="source" type="System.Uri"/>
        <ns4:element name="status" type="QUICK.DocumentReferenceStatus"/>
        <ns4:element name="supercedes" type="QUICK.Reference"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="confidentiality" type="System.Concept"/>
        <ns4:element name="content" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.code_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance.Agent" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="System.Code"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="display" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventObjectRole_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Subscription.Tag" baseType="QUICK.BackboneElement">
        <ns4:element name="term" type="System.Uri"/>
        <ns4:element name="scheme" type="System.Uri"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Appointment" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="priority" type="System.Integer"/>
        <ns4:element name="status" type="QUICK.code"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="slot" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="order" type="QUICK.Reference"/>
        <ns4:element name="participant" type="list&lt;QUICK.Appointment.Participant&gt;"/>
        <ns4:element name="lastModifiedBy" type="QUICK.Reference"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Substance" baseType="QUICK.DomainResource" retrievable="true" label="Substance" identifier="cqf-substance" primaryCodePath="type">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="instance" type="QUICK.Substance.Instance"/>
        <ns4:element name="ingredient" type="list&lt;QUICK.Substance.Ingredient&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.Substitution" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NamingSystemIdentifierType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CarePlanGoalStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataAbsentReason" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DataAbsentReason_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.VaccinationProtocol" baseType="QUICK.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="QUICK.Reference"/>
        <ns4:element name="series" type="System.String"/>
        <ns4:element name="seriesDoses" type="System.Integer"/>
        <ns4:element name="doseTarget" type="System.Concept"/>
        <ns4:element name="doseStatus" type="System.Concept"/>
        <ns4:element name="doseStatusReason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupportingDocumentation.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.Integer"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequest" baseType="QUICK.DomainResource" retrievable="true" label="CommunicationRequest" identifier="cqf-communicationrequest" primaryCodePath="category">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="sender" type="QUICK.Reference"/>
        <ns4:element name="recipient" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="messagePart" type="list&lt;QUICK.CommunicationRequest.MessagePart&gt;"/>
        <ns4:element name="medium" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="requester" type="QUICK.Reference"/>
        <ns4:element name="status" type="QUICK.CommunicationRequestStatus"/>
        <ns4:element name="mode" type="QUICK.CommunicationRequestMode"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="scheduledTime" type="System.DateTime"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="priority" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HumanName" baseType="QUICK.Element">
        <ns4:element name="use" type="QUICK.NameUse"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="family" type="list&lt;System.String&gt;"/>
        <ns4:element name="given" type="list&lt;System.String&gt;"/>
        <ns4:element name="prefix" type="list&lt;System.String&gt;"/>
        <ns4:element name="suffix" type="list&lt;System.String&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="serviceType" type="list&lt;QUICK.HealthcareService.ServiceType&gt;"/>
        <ns4:element name="serviceName" type="System.String"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="extraDetails" type="System.String"/>
        <ns4:element name="freeProvisionCode" type="System.Concept"/>
        <ns4:element name="eligibility" type="System.Concept"/>
        <ns4:element name="eligibilityNote" type="System.String"/>
        <ns4:element name="appointmentRequired" type="System.Concept"/>
        <ns4:element name="imageURI" type="System.Uri"/>
        <ns4:element name="availableTime" type="list&lt;QUICK.HealthcareService.AvailableTime&gt;"/>
        <ns4:element name="notAvailableTime" type="list&lt;QUICK.HealthcareService.NotAvailableTime&gt;"/>
        <ns4:element name="availabilityExceptions" type="System.String"/>
        <ns4:element name="publicKey" type="System.String"/>
        <ns4:element name="programName" type="list&lt;System.String&gt;"/>
        <ns4:element name="contactPoint" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="characteristic" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="referralMethod" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="setting" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="targetGroup" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="coverageArea" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="catchmentArea" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="serviceCode" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.Element" baseType="QUICK.BackboneElement">
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="dependsOn" type="list&lt;QUICK.ConceptMap.DependsOn&gt;"/>
        <ns4:element name="map" type="list&lt;QUICK.ConceptMap.Map&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AddressUse_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MedicationPrescriptionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Basic" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Organization.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="purpose" type="System.Concept"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="gender" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AlertStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AlertStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.UnitsOfTime" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.UnitsOfTime_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationOutcome.Issue" baseType="QUICK.BackboneElement">
        <ns4:element name="severity" type="QUICK.IssueSeverity"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="details" type="System.String"/>
        <ns4:element name="location" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="QUICK.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="kind" type="QUICK.OperationKind"/>
        <ns4:element name="name" type="QUICK.code"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="base" type="QUICK.Reference"/>
        <ns4:element name="system" type="System.Boolean"/>
        <ns4:element name="type" type="list&lt;QUICK.code&gt;"/>
        <ns4:element name="instance" type="System.Boolean"/>
        <ns4:element name="parameter" type="list&lt;QUICK.OperationDefinition.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Questionnaire.Question" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="concept" type="list&lt;System.Code&gt;"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="type" type="QUICK.AnswerFormat"/>
        <ns4:element name="required" type="System.Boolean"/>
        <ns4:element name="repeats" type="System.Boolean"/>
        <ns4:element name="options" type="QUICK.Reference"/>
        <ns4:element name="group" type="list&lt;QUICK.Questionnaire.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="status" type="QUICK.CompositionStatus"/>
        <ns4:element name="confidentiality" type="System.Code"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="author" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="attester" type="list&lt;QUICK.Composition.Attester&gt;"/>
        <ns4:element name="custodian" type="QUICK.Reference"/>
        <ns4:element name="event" type="list&lt;QUICK.Composition.Event&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="section" type="list&lt;QUICK.Composition.Section&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExtensionDefinition.Mapping" baseType="QUICK.BackboneElement">
        <ns4:element name="identity" type="QUICK.id"/>
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SampledDataDataType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SampledDataDataType_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance" baseType="QUICK.DomainResource">
        <ns4:element name="target" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="recorded" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="policy" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="agent" type="list&lt;QUICK.Provenance.Agent&gt;"/>
        <ns4:element name="entity" type="list&lt;QUICK.Provenance.Entity&gt;"/>
        <ns4:element name="integritySignature" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.code" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.code_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Attachment" baseType="QUICK.Element">
        <ns4:element name="contentType" type="QUICK.code"/>
        <ns4:element name="language" type="QUICK.code"/>
        <ns4:element name="data" type="QUICK.base64Binary"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="size" type="System.Integer"/>
        <ns4:element name="hash" type="QUICK.base64Binary"/>
        <ns4:element name="title" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.id_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="questionnaire" type="QUICK.Reference"/>
        <ns4:element name="status" type="QUICK.QuestionnaireAnswersStatus"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="authored" type="System.DateTime"/>
        <ns4:element name="source" type="QUICK.Reference"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="group" type="QUICK.QuestionnaireAnswers.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Package" baseType="QUICK.BackboneElement">
        <ns4:element name="container" type="System.Concept"/>
        <ns4:element name="content" type="list&lt;QUICK.Medication.Content&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Destination" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="endpoint" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Order" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="source" type="QUICK.Reference"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="authority" type="QUICK.Reference"/>
        <ns4:element name="when" type="QUICK.Order.When"/>
        <ns4:element name="detail" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Location" baseType="QUICK.BackboneElement">
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Identifier" baseType="QUICK.Element">
        <ns4:element name="use" type="QUICK.IdentifierUse"/>
        <ns4:element name="label" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="assigner" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.UnitsOfTime_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NameUse" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NameUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication1&gt;"/>
        <ns4:element name="subdetail" type="list&lt;QUICK.ClaimResponse.Subdetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SlotStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingModality" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ImagingModality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.OperationKind_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Slot" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="availability" type="QUICK.Reference"/>
        <ns4:element name="freeBusyType" type="QUICK.SlotStatus"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="overbooked" type="System.Boolean"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MedicationKind_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AnswerFormat_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ObservationReliability_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PropertyRepresentation" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.PropertyRepresentation_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.Use_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Device" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="manufacturer" type="System.String"/>
        <ns4:element name="model" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="udi" type="System.String"/>
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="owner" type="QUICK.Reference"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="contact" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventParticipantNetworkType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventParticipantNetworkType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AdministrativeGender" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AdministrativeGender_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntolerance.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="substance" type="System.Concept"/>
        <ns4:element name="certainty" type="QUICK.AllergyIntoleranceCertainty"/>
        <ns4:element name="manifestation" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="onset" type="System.DateTime"/>
        <ns4:element name="duration" type="QUICK.Duration"/>
        <ns4:element name="severity" type="QUICK.AllergyIntoleranceSeverity"/>
        <ns4:element name="exposureRoute" type="System.Concept"/>
        <ns4:element name="comment" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Substance.Ingredient" baseType="QUICK.BackboneElement">
        <ns4:element name="quantity" type="QUICK.Ratio"/>
        <ns4:element name="substance" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure" baseType="QUICK.DomainResource" retrievable="true" label="Procedure" identifier="cqf-procedure" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="performer" type="list&lt;QUICK.Procedure.Performer&gt;"/>
        <ns4:element name="date" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="outcome" type="System.String"/>
        <ns4:element name="report" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="complication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="followUp" type="System.String"/>
        <ns4:element name="relatedItem" type="list&lt;QUICK.Procedure.RelatedItem&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequestPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ProcedureRequestPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy" baseType="QUICK.DomainResource">
        <ns4:element name="started" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="uid" type="QUICK.oid"/>
        <ns4:element name="accession" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="order" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="modalityList" type="list&lt;QUICK.ImagingModality&gt;"/>
        <ns4:element name="referrer" type="QUICK.Reference"/>
        <ns4:element name="availability" type="QUICK.InstanceAvailability"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="numberOfSeries" type="System.Integer"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="clinicalInformation" type="System.String"/>
        <ns4:element name="procedure" type="list&lt;System.Code&gt;"/>
        <ns4:element name="interpreter" type="QUICK.Reference"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="series" type="list&lt;QUICK.ImagingStudy.Series&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispenseStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MedicationDispenseStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation" baseType="QUICK.DomainResource" retrievable="true" label="Observation" identifier="cqf-observation" primaryCodePath="name">
        <ns4:element name="name" type="System.Concept"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="dataAbsentReason" type="QUICK.DataAbsentReason"/>
        <ns4:element name="interpretation" type="System.Concept"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.ObservationStatus"/>
        <ns4:element name="reliability" type="QUICK.ObservationReliability"/>
        <ns4:element name="bodySite" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="specimen" type="QUICK.Reference"/>
        <ns4:element name="performer" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="referenceRange" type="list&lt;QUICK.Observation.ReferenceRange&gt;"/>
        <ns4:element name="related" type="list&lt;QUICK.Observation.Related&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventOutcome" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ReferralStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder" baseType="QUICK.DomainResource" retrievable="true" label="DiagnosticOrder" identifier="cqf-diagnosticorder" primaryCodePath="item[].code">
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="orderer" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="clinicalNotes" type="System.String"/>
        <ns4:element name="supportingInformation" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="specimen" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="status" type="QUICK.DiagnosticOrderStatus"/>
        <ns4:element name="priority" type="QUICK.DiagnosticOrderPriority"/>
        <ns4:element name="event" type="list&lt;QUICK.DiagnosticOrder.Event&gt;"/>
        <ns4:element name="item" type="list&lt;QUICK.DiagnosticOrder.Item&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Duration" baseType="System.Quantity">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CompositionAttestationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ObservationRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.oid_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Software" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="releaseDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswersStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.QuestionnaireAnswersStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupplyDispenseStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SupplyDispenseStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Constraint" baseType="QUICK.Element">
        <ns4:element name="key" type="QUICK.id"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="severity" type="QUICK.ConstraintSeverity"/>
        <ns4:element name="human" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.oid" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.oid_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CompositionAttestationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CompositionAttestationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AddressUse" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AddressUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ConformanceStatementStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReferenceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DocumentReferenceStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation" baseType="QUICK.DomainResource" retrievable="true" label="ImmunizationRecommendation" identifier="cqf-immunization-recommendation" primaryCodePath="recommendation[].vaccineType">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="recommendation" type="list&lt;QUICK.ImmunizationRecommendation.Recommendation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageEvent" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MessageEvent_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Period" baseType="QUICK.Element">
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ResponseType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Expansion" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="contains" type="list&lt;QUICK.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Simple" baseType="QUICK.BackboneElement">
        <ns4:element name="category" type="QUICK.CarePlanActivityCategory"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="location" type="QUICK.Reference"/>
        <ns4:element name="performer" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="product" type="QUICK.Reference"/>
        <ns4:element name="dailyAmount" type="System.Quantity"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="details" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Goal" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="status" type="QUICK.CarePlanGoalStatus"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="concern" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExtensionDefinition" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="QUICK.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="mapping" type="list&lt;QUICK.ExtensionDefinition.Mapping&gt;"/>
        <ns4:element name="contextType" type="QUICK.ExtensionContext"/>
        <ns4:element name="context" type="list&lt;System.String&gt;"/>
        <ns4:element name="element" type="list&lt;QUICK.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NarrativeStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NarrativeStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.DueTo" baseType="QUICK.BackboneElement">
        <ns4:element name="codeableConcept" type="System.Concept"/>
        <ns4:element name="target" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.GroupType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPoint" baseType="QUICK.Element">
        <ns4:element name="system" type="QUICK.ContactPointSystem"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="use" type="QUICK.ContactPointUse"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NamingSystemStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ProvenanceEntityRole_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Diagnosis" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="diagnosis" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Note" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.Measmnt_Principle_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Document" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="QUICK.DocumentMode"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="profile" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Timing.Repeat" baseType="QUICK.Element">
        <ns4:element name="frequency" type="System.Integer"/>
        <ns4:element name="when" type="QUICK.EventTiming"/>
        <ns4:element name="duration" type="System.Decimal"/>
        <ns4:element name="units" type="QUICK.UnitsOfTime"/>
        <ns4:element name="count" type="System.Integer"/>
        <ns4:element name="end" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Subdetail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication2&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition" baseType="QUICK.Element">
        <ns4:element name="path" type="System.String"/>
        <ns4:element name="representation" type="list&lt;QUICK.PropertyRepresentation&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="slicing" type="QUICK.ElementDefinition.Slicing"/>
        <ns4:element name="short" type="System.String"/>
        <ns4:element name="formal" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="synonym" type="list&lt;System.String&gt;"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="type" type="list&lt;QUICK.ElementDefinition.Type&gt;"/>
        <ns4:element name="nameReference" type="System.String"/>
        <ns4:element name="meaningWhenMissing" type="System.String"/>
        <ns4:element name="maxLength" type="System.Integer"/>
        <ns4:element name="condition" type="list&lt;QUICK.id&gt;"/>
        <ns4:element name="constraint" type="list&lt;QUICK.ElementDefinition.Constraint&gt;"/>
        <ns4:element name="mustSupport" type="System.Boolean"/>
        <ns4:element name="isModifier" type="System.Boolean"/>
        <ns4:element name="isSummary" type="System.Boolean"/>
        <ns4:element name="binding" type="QUICK.ElementDefinition.Binding"/>
        <ns4:element name="mapping" type="list&lt;QUICK.ElementDefinition.Mapping&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupportingDocumentation" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="requestIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="responseIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="response" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="detail" type="list&lt;QUICK.SupportingDocumentation.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Concept" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="designation" type="list&lt;QUICK.ValueSet.Designation&gt;"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceCertainty_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FilterOperator" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.FilterOperator_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.IssueSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.IssueSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SlotStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SlotStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MaritalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MaritalStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement.Mapping" baseType="QUICK.BackboneElement">
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="map" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DocumentMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.OperationParameterUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RiskAssessment" baseType="QUICK.DomainResource">
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="condition" type="QUICK.Reference"/>
        <ns4:element name="performer" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="basis" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="prediction" type="list&lt;QUICK.RiskAssessment.Prediction&gt;"/>
        <ns4:element name="mitigation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement.Binding" baseType="QUICK.BackboneElement">
        <ns4:element name="isExtensible" type="System.Boolean"/>
        <ns4:element name="conformance" type="QUICK.BindingConformance"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="valueSet" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DiagnosticReportStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="use" type="QUICK.Use"/>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:element name="fundsReserve" type="System.Code"/>
        <ns4:element name="enterer" type="QUICK.Reference"/>
        <ns4:element name="facility" type="QUICK.Reference"/>
        <ns4:element name="payee" type="QUICK.OralHealthClaim.Payee"/>
        <ns4:element name="referral" type="QUICK.Reference"/>
        <ns4:element name="diagnosis" type="list&lt;QUICK.OralHealthClaim.Diagnosis&gt;"/>
        <ns4:element name="condition" type="list&lt;System.Code&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="coverage" type="list&lt;QUICK.OralHealthClaim.Coverage&gt;"/>
        <ns4:element name="exception" type="list&lt;System.Code&gt;"/>
        <ns4:element name="school" type="System.String"/>
        <ns4:element name="accident" type="System.DateTime"/>
        <ns4:element name="accidentType" type="System.Code"/>
        <ns4:element name="interventionException" type="list&lt;System.Code&gt;"/>
        <ns4:element name="missingteeth" type="list&lt;QUICK.OralHealthClaim.Missingteeth&gt;"/>
        <ns4:element name="orthoPlan" type="QUICK.OralHealthClaim.OrthoPlan"/>
        <ns4:element name="item" type="list&lt;QUICK.OralHealthClaim.Item&gt;"/>
        <ns4:element name="additionalMaterials" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Availability" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="QUICK.Reference"/>
        <ns4:element name="planningHorizon" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NutritionOrderStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescriptionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MedicationPrescriptionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.Recommendation" baseType="QUICK.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="doseNumber" type="System.Integer"/>
        <ns4:element name="forecastStatus" type="System.Concept"/>
        <ns4:element name="dateCriterion" type="list&lt;QUICK.ImmunizationRecommendation.DateCriterion&gt;"/>
        <ns4:element name="protocol" type="QUICK.ImmunizationRecommendation.Protocol"/>
        <ns4:element name="supportingImmunization" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="supportingPatientInformation" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ProcedureRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventObjectLifecycle_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.EncounterClass_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMapEquivalence" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ConceptMapEquivalence_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Distance" baseType="System.Quantity">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SubscriptionChannelType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DeviceUseRequestStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SampledDataDataType_primitive"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CompositionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition" baseType="QUICK.DomainResource" retrievable="true" label="Condition" identifier="cqf-condition" primaryCodePath="code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="asserter" type="QUICK.Reference"/>
        <ns4:element name="dateAsserted" type="System.DateTime"/>
        <ns4:element name="onsetDateTime" type="System.DateTime"/>
        <ns4:element name="abatementDateTime" type="System.DateTime"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.ConditionStatus"/>
        <ns4:element name="certainty" type="System.Concept"/>
        <ns4:element name="severity" type="System.Concept"/>
        <ns4:element name="stage" type="QUICK.Condition.Stage"/>
        <ns4:element name="evidence" type="list&lt;QUICK.Condition.Evidence&gt;"/>
        <ns4:element name="location" type="list&lt;QUICK.Condition.Location&gt;"/>
        <ns4:element name="dueTo" type="list&lt;QUICK.Condition.DueTo&gt;"/>
        <ns4:element name="occurredFollowing" type="list&lt;QUICK.Condition.OccurredFollowing&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="subject" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="applies" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="author" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="grantor" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="grantee" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="witness" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="executor" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="notary" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="signer" type="list&lt;QUICK.Contract.Signer&gt;"/>
        <ns4:element name="term" type="list&lt;QUICK.Contract.Term&gt;"/>
        <ns4:element name="friendly" type="QUICK.Attachment"/>
        <ns4:element name="legal" type="QUICK.Attachment"/>
        <ns4:element name="rule" type="QUICK.Attachment"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ConstraintSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RestfulConformanceMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.RestfulConformanceMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchParamType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SearchParamType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.IdentifierUse_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ParticipantRequired_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Stage" baseType="QUICK.BackboneElement">
        <ns4:element name="summary" type="System.Concept"/>
        <ns4:element name="assessment" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupplyStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SupplyStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.IdentifierUse" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.IdentifierUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Extension" baseType="QUICK.Element">
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.QueryOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Source" baseType="QUICK.BackboneElement">
        <ns4:element name="relationship" type="QUICK.HierarchicalRelationshipType"/>
        <ns4:element name="target" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Questionnaire" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="status" type="QUICK.QuestionnaireStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="group" type="QUICK.Questionnaire.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Section" baseType="QUICK.BackboneElement">
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="section" type="list&lt;QUICK.Composition.Section&gt;"/>
        <ns4:element name="content" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy.Series" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="modality" type="QUICK.Modality"/>
        <ns4:element name="uid" type="QUICK.oid"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="availability" type="QUICK.InstanceAvailability"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="instance" type="list&lt;QUICK.ImagingStudy.Instance&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Practitioner.Qualification" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="issuer" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationParameterUse" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.OperationParameterUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="individual" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationStatement" baseType="QUICK.DomainResource" retrievable="true" label="MedicationStatement" identifier="cqf-medicationstatement" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="whenGiven" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="medication" type="QUICK.Reference"/>
        <ns4:element name="device" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;QUICK.MedicationStatement.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Slicing" baseType="QUICK.Element">
        <ns4:element name="discriminator" type="list&lt;QUICK.id&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="ordered" type="System.Boolean"/>
        <ns4:element name="rules" type="QUICK.SlicingRules"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceComponent" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="lastSystemChange" type="System.DateTime"/>
        <ns4:element name="source" type="QUICK.Reference"/>
        <ns4:element name="parent" type="QUICK.Reference"/>
        <ns4:element name="operationalStatus" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="parameterGroup" type="System.Concept"/>
        <ns4:element name="measurementPrinciple" type="QUICK.Measmnt_Principle"/>
        <ns4:element name="productionSpecification" type="list&lt;QUICK.DeviceComponent.ProductionSpecification&gt;"/>
        <ns4:element name="languageCode" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystemStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NamingSystemStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanGoalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CarePlanGoalStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.Service" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="address" type="System.String"/>
        <ns4:element name="parameter" type="list&lt;QUICK.DocumentReference.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Use" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.Use_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BindingConformance" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.BindingConformance_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="status" type="QUICK.DiagnosticOrderStatus"/>
        <ns4:element name="description" type="System.Concept"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="actor" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contraindication" baseType="QUICK.DomainResource">
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="severity" type="QUICK.code"/>
        <ns4:element name="implicated" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="detail" type="System.String"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="mitigation" type="list&lt;QUICK.Contraindication.Mitigation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Ratio" baseType="QUICK.Element">
        <ns4:element name="numerator" type="System.Quantity"/>
        <ns4:element name="denominator" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Question" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="answer" type="list&lt;QUICK.QuestionnaireAnswers.Answer&gt;"/>
        <ns4:element name="group" type="list&lt;QUICK.QuestionnaireAnswers.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConstraintSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ConstraintSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Reversal.Coverage" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="QUICK.Reference"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation.Related" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.ObservationRelationshipType"/>
        <ns4:element name="target" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventAction_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.time" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.time_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventAction" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventAction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceCriticality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Interaction" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.TypeRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.OralDiet" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="nutrients" type="list&lt;QUICK.NutritionOrder.Nutrients&gt;"/>
        <ns4:element name="texture" type="list&lt;QUICK.NutritionOrder.Texture&gt;"/>
        <ns4:element name="fluidConsistencyType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Payee" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
        <ns4:element name="person" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DataType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Prosthesis" baseType="QUICK.BackboneElement">
        <ns4:element name="initial" type="System.Boolean"/>
        <ns4:element name="priorDate" type="System.DateTime"/>
        <ns4:element name="priorMaterial" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle" baseType="QUICK.Resource">
        <ns4:element name="type" type="QUICK.BundleType"/>
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="total" type="System.Integer"/>
        <ns4:element name="link" type="list&lt;QUICK.Bundle.Link&gt;"/>
        <ns4:element name="entry" type="list&lt;QUICK.Bundle.Entry&gt;"/>
        <ns4:element name="signature" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.DependsOn" baseType="QUICK.BackboneElement">
        <ns4:element name="element" type="System.Uri"/>
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConformanceEventMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ConformanceEventMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Error" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="detailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="subdetailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="code" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LinkType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.LinkType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contraindication.Mitigation" baseType="QUICK.BackboneElement">
        <ns4:element name="action" type="System.Concept"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystemIdentifierType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.NamingSystemIdentifierType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reference" type="QUICK.Reference"/>
        <ns4:element name="userId" type="System.String"/>
        <ns4:element name="altId" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="requestor" type="System.Boolean"/>
        <ns4:element name="media" type="System.Code"/>
        <ns4:element name="network" type="QUICK.SecurityEvent.Network"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Include" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept1&gt;"/>
        <ns4:element name="filter" type="list&lt;QUICK.ValueSet.Filter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Entry" baseType="QUICK.BackboneElement">
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="status" type="QUICK.BundleEntryStatus"/>
        <ns4:element name="search" type="System.Uri"/>
        <ns4:element name="score" type="System.Decimal"/>
        <ns4:element name="deleted" type="QUICK.Bundle.Deleted"/>
        <ns4:element name="resource" type="QUICK.ResourceContainer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FamilyHistory" baseType="QUICK.DomainResource" retrievable="true" label="FamilyHistory" identifier="cqf-familyhistory">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="relation" type="list&lt;QUICK.FamilyHistory.Relation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ListMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ListMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="source" type="list&lt;QUICK.Specimen.Source&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="accessionIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="receivedTime" type="System.DateTime"/>
        <ns4:element name="collection" type="QUICK.Specimen.Collection"/>
        <ns4:element name="treatment" type="list&lt;QUICK.Specimen.Treatment&gt;"/>
        <ns4:element name="container" type="list&lt;QUICK.Specimen.Container&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Narrative" baseType="QUICK.Element">
        <ns4:element name="status" type="QUICK.NarrativeStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationKind" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MedicationKind_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FHIRDefinedType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.FHIRDefinedType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Profile.Snapshot" baseType="QUICK.BackboneElement">
        <ns4:element name="element" type="list&lt;QUICK.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.HierarchicalRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Subscription.Channel" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.SubscriptionChannelType"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="payload" type="System.String"/>
        <ns4:element name="header" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Age" baseType="System.Quantity">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AlertStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Query.Response" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="outcome" type="QUICK.QueryOutcome"/>
        <ns4:element name="total" type="System.Integer"/>
        <ns4:element name="parameter" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="first" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="previous" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="next" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="last" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="reference" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ResourceVersionPolicy_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventObjectType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventObjectType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Concept1" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="designation" type="list&lt;QUICK.ValueSet.Designation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MediaType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MaritalStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MedicationAdministrationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="noteNumber" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.ClaimResponse.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceProfileStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ResourceProfileStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationStatement.Dosage" baseType="QUICK.BackboneElement">
        <ns4:element name="schedule" type="QUICK.Timing"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ResourceType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Supplement" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="name" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.TypeRestfulInteraction_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ProcedureRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Security" baseType="QUICK.BackboneElement">
        <ns4:element name="cors" type="System.Boolean"/>
        <ns4:element name="service" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="certificate" type="list&lt;QUICK.Conformance.Certificate&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSetStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ValueSetStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministration" baseType="QUICK.DomainResource" retrievable="true" label="MedicationAdministration" identifier="cqf-medicationadministration" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.MedicationAdministrationStatus"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="practitioner" type="QUICK.Reference"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="prescription" type="QUICK.Reference"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="medication" type="QUICK.Reference"/>
        <ns4:element name="device" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;QUICK.MedicationAdministration.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.OrthoPlan" baseType="QUICK.BackboneElement">
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="examFee" type="QUICK.Money"/>
        <ns4:element name="diagnosticFee" type="QUICK.Money"/>
        <ns4:element name="initialPayment" type="QUICK.Money"/>
        <ns4:element name="durationMonths" type="System.Integer"/>
        <ns4:element name="paymentCount" type="System.Integer"/>
        <ns4:element name="periodicPayment" type="QUICK.Money"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Eligibility" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="QUICK.Reference"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="organization" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Supply" baseType="QUICK.DomainResource">
        <ns4:element name="kind" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.SupplyStatus"/>
        <ns4:element name="orderedItem" type="QUICK.Reference"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="dispense" type="list&lt;QUICK.Supply.Dispense&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequest" baseType="QUICK.DomainResource">
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="status" type="QUICK.DeviceUseRequestStatus"/>
        <ns4:element name="mode" type="QUICK.DeviceUseRequestMode"/>
        <ns4:element name="device" type="QUICK.Reference"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="prnReason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="priority" type="QUICK.DeviceUseRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.SubDetail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="udi" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OrderResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="who" type="QUICK.Reference"/>
        <ns4:element name="code" type="QUICK.OrderOutcomeStatus"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="fulfillment" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequestPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DeviceUseRequestPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SampledData" baseType="QUICK.Element">
        <ns4:element name="origin" type="System.Quantity"/>
        <ns4:element name="period" type="System.Decimal"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="lowerLimit" type="System.Decimal"/>
        <ns4:element name="upperLimit" type="System.Decimal"/>
        <ns4:element name="dimensions" type="System.Integer"/>
        <ns4:element name="data" type="QUICK.SampledDataDataType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Binding" baseType="QUICK.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="isExtensible" type="System.Boolean"/>
        <ns4:element name="conformance" type="QUICK.BindingConformance"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Hospitalization" baseType="QUICK.BackboneElement">
        <ns4:element name="preAdmissionIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="origin" type="QUICK.Reference"/>
        <ns4:element name="admitSource" type="System.Concept"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="accomodation" type="list&lt;QUICK.Encounter.Accomodation&gt;"/>
        <ns4:element name="diet" type="System.Concept"/>
        <ns4:element name="specialCourtesy" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="specialArrangement" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="destination" type="QUICK.Reference"/>
        <ns4:element name="dischargeDisposition" type="System.Concept"/>
        <ns4:element name="dischargeDiagnosis" type="QUICK.Reference"/>
        <ns4:element name="reAdmission" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SlicingRules_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrderPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DiagnosticOrderPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEvent" baseType="QUICK.DomainResource">
        <ns4:element name="event" type="QUICK.SecurityEvent.Event"/>
        <ns4:element name="participant" type="list&lt;QUICK.SecurityEvent.Participant&gt;"/>
        <ns4:element name="source" type="QUICK.SecurityEvent.Source"/>
        <ns4:element name="object" type="list&lt;QUICK.SecurityEvent.Object&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanActivityStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CarePlanActivityStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Compose" baseType="QUICK.BackboneElement">
        <ns4:element name="import" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="include" type="list&lt;QUICK.ValueSet.Include&gt;"/>
        <ns4:element name="exclude" type="list&lt;QUICK.ValueSet.Include&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.MedicationDispenseStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="medication" type="QUICK.Reference"/>
        <ns4:element name="whenPrepared" type="System.DateTime"/>
        <ns4:element name="whenHandedOver" type="System.DateTime"/>
        <ns4:element name="destination" type="QUICK.Reference"/>
        <ns4:element name="receiver" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;QUICK.MedicationDispense.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LocationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.LocationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition.Parameter" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="QUICK.code"/>
        <ns4:element name="use" type="QUICK.OperationParameterUse"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="profile" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QueryOutcome" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.QueryOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCriticality" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceCriticality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Media" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="QUICK.MediaType"/>
        <ns4:element name="subtype" type="System.Concept"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="operator" type="QUICK.Reference"/>
        <ns4:element name="view" type="System.Concept"/>
        <ns4:element name="deviceName" type="System.String"/>
        <ns4:element name="height" type="System.Integer"/>
        <ns4:element name="width" type="System.Integer"/>
        <ns4:element name="frames" type="System.Integer"/>
        <ns4:element name="duration" type="System.Integer"/>
        <ns4:element name="content" type="QUICK.Attachment"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DocumentReferenceStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequestStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CommunicationRequestStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FamilyHistory.Relation" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="condition" type="list&lt;QUICK.FamilyHistory.Condition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceDataElementStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ResourceDataElementStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Organization" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="partOf" type="QUICK.Reference"/>
        <ns4:element name="contact" type="list&lt;QUICK.Organization.Contact&gt;"/>
        <ns4:element name="location" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ImagingModality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Signer" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="singnature" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Ingredient" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="QUICK.Reference"/>
        <ns4:element name="amount" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Designation" baseType="QUICK.BackboneElement">
        <ns4:element name="language" type="QUICK.code"/>
        <ns4:element name="use" type="System.Code"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DocumentRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SubscriptionChannelType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SubscriptionChannelType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.TypeRestfulInteraction" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.TypeRestfulInteraction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Location.Position" baseType="QUICK.BackboneElement">
        <ns4:element name="longitude" type="System.Decimal"/>
        <ns4:element name="latitude" type="System.Decimal"/>
        <ns4:element name="altitude" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ParticipationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Parameters.Parameter" baseType="QUICK.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="resource" type="QUICK.ResourceContainer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.PropertyRepresentation_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AppointmentResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="appointment" type="QUICK.Reference"/>
        <ns4:element name="participantType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="individual" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="participantStatus" type="QUICK.ParticipantStatus"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="lastModifiedBy" type="QUICK.Reference"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.uuid" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.uuid_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.Parameter" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.AllergyIntoleranceCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Additem" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="QUICK.Money"/>
        <ns4:element name="noteNumberLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication3&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.ClaimResponse.Detail1&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPointUse" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ContactPointUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.LocationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministrationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MedicationAdministrationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.Explanation" baseType="QUICK.BackboneElement">
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="refusalReason" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="status" type="QUICK.ResourceDataElementStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="category" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="question" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="synonym" type="list&lt;System.String&gt;"/>
        <ns4:element name="type" type="QUICK.code"/>
        <ns4:element name="maxLength" type="System.Integer"/>
        <ns4:element name="units" type="System.Concept"/>
        <ns4:element name="binding" type="QUICK.DataElement.Binding"/>
        <ns4:element name="mapping" type="list&lt;QUICK.DataElement.Mapping&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.FilterOperator_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.EnteralFormula" baseType="QUICK.BackboneElement">
        <ns4:element name="baseFormulaType" type="System.Concept"/>
        <ns4:element name="additiveType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="caloricDensity" type="list&lt;System.Quantity&gt;"/>
        <ns4:element name="routeofAdministration" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="rate" type="list&lt;System.Quantity&gt;"/>
        <ns4:element name="baseFormulaName" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ExtensionContext_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceComponent.ProductionSpecification" baseType="QUICK.BackboneElement">
        <ns4:element name="specType" type="System.Concept"/>
        <ns4:element name="componentId" type="QUICK.Identifier"/>
        <ns4:element name="productionSpec" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReportStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DiagnosticReportStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CommunicationRequestStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.SearchParam" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="System.Uri"/>
        <ns4:element name="type" type="QUICK.SearchParamType"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="target" type="list&lt;QUICK.code&gt;"/>
        <ns4:element name="chain" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Profile" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="QUICK.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="fhirVersion" type="QUICK.id"/>
        <ns4:element name="mapping" type="list&lt;QUICK.Profile.Mapping&gt;"/>
        <ns4:element name="type" type="QUICK.code"/>
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="snapshot" type="QUICK.Profile.Snapshot"/>
        <ns4:element name="differential" type="QUICK.Profile.Snapshot"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.DosageInstruction" baseType="QUICK.BackboneElement">
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="QUICK.Reference"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="serviceDate" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="subsite" type="list&lt;System.Code&gt;"/>
        <ns4:element name="modifier" type="list&lt;System.Code&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.OralHealthClaim.Detail&gt;"/>
        <ns4:element name="prosthesis" type="QUICK.OralHealthClaim.Prosthesis"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Group.Characteristic" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="exclude" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OrderOutcomeStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.OrderOutcomeStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HierarchicalRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.HierarchicalRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BundleEntryStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.BundleEntryStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipantStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ParticipantStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequest" baseType="QUICK.DomainResource" retrievable="true" label="ProcedureRequest" identifier="cqf-procedurerequest" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="performer" type="QUICK.Reference"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="mode" type="QUICK.ProcedureRequestMode"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="orderer" type="QUICK.Reference"/>
        <ns4:element name="priority" type="QUICK.ProcedureRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.InstanceAvailability_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MessageEvent_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NamingSystemType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EncounterClass" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.EncounterClass_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Nutrients" baseType="QUICK.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DataType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.CarePlanActivityStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="category" type="QUICK.MessageSignificanceCategory"/>
        <ns4:element name="mode" type="QUICK.ConformanceEventMode"/>
        <ns4:element name="protocol" type="list&lt;System.Code&gt;"/>
        <ns4:element name="focus" type="QUICK.code"/>
        <ns4:element name="request" type="QUICK.Reference"/>
        <ns4:element name="response" type="QUICK.Reference"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Coverage" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="QUICK.Reference"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
        <ns4:element name="preauthref" type="list&lt;System.String&gt;"/>
        <ns4:element name="claimResponse" type="QUICK.Reference"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Link" baseType="QUICK.BackboneElement">
        <ns4:element name="relation" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.LocationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Implementation" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.List.Entry" baseType="QUICK.BackboneElement">
        <ns4:element name="flag" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="deleted" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="item" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Range" baseType="QUICK.Element">
        <ns4:element name="low" type="System.Quantity"/>
        <ns4:element name="high" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EncounterState" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.EncounterState_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ProcedureRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Answer" baseType="QUICK.BackboneElement"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Certificate" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.code"/>
        <ns4:element name="blob" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LocationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.LocationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.AvailableTime" baseType="QUICK.BackboneElement">
        <ns4:element name="daysOfWeek" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="allDay" type="System.Boolean"/>
        <ns4:element name="availableStartTime" type="System.DateTime"/>
        <ns4:element name="availableEndTime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Content" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="QUICK.Reference"/>
        <ns4:element name="amount" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ObservationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Address" baseType="QUICK.Element">
        <ns4:element name="use" type="QUICK.AddressUse"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="line" type="list&lt;System.String&gt;"/>
        <ns4:element name="city" type="System.String"/>
        <ns4:element name="state" type="System.String"/>
        <ns4:element name="postalCode" type="System.String"/>
        <ns4:element name="country" type="System.String"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseStatement" baseType="QUICK.DomainResource">
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="whenUsed" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="device" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Count" baseType="System.Quantity">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Query" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="parameter" type="list&lt;QUICK.Extension&gt;"/>
        <ns4:element name="response" type="QUICK.Query.Response"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageSignificanceCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.MessageSignificanceCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="System.QuantityComparator_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Operation" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Binary" baseType="QUICK.Resource">
        <ns4:element name="contentType" type="QUICK.code"/>
        <ns4:element name="content" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan" baseType="QUICK.DomainResource" retrievable="true" label="CarePlan" identifier="cqf-careplan" primaryCodePath="concern.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="status" type="QUICK.CarePlanStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="modified" type="System.DateTime"/>
        <ns4:element name="concern" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="participant" type="list&lt;QUICK.CarePlan.Participant&gt;"/>
        <ns4:element name="goal" type="list&lt;QUICK.CarePlan.Goal&gt;"/>
        <ns4:element name="activity" type="list&lt;QUICK.CarePlan.Activity&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.RelatesTo" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.DocumentRelationshipType"/>
        <ns4:element name="target" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SubscriptionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.Modality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SystemRestfulInteraction" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SystemRestfulInteraction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AnswerFormat" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AnswerFormat_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="purpose" type="System.String"/>
        <ns4:element name="immutable" type="System.Boolean"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="QUICK.ValueSetStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="extensible" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="stableDate" type="System.DateTime"/>
        <ns4:element name="define" type="QUICK.ValueSet.Define"/>
        <ns4:element name="compose" type="QUICK.ValueSet.Compose"/>
        <ns4:element name="expansion" type="QUICK.ValueSet.Expansion"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Interaction1" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.SystemRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Type" baseType="QUICK.Element">
        <ns4:element name="code" type="QUICK.code"/>
        <ns4:element name="profile" type="System.Uri"/>
        <ns4:element name="aggregation" type="list&lt;QUICK.AggregationMode&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceStatementStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="software" type="QUICK.Conformance.Software"/>
        <ns4:element name="implementation" type="QUICK.Conformance.Implementation"/>
        <ns4:element name="fhirVersion" type="QUICK.id"/>
        <ns4:element name="acceptUnknown" type="System.Boolean"/>
        <ns4:element name="format" type="list&lt;QUICK.code&gt;"/>
        <ns4:element name="profile" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="rest" type="list&lt;QUICK.Conformance.Rest&gt;"/>
        <ns4:element name="messaging" type="list&lt;QUICK.Conformance.Messaging&gt;"/>
        <ns4:element name="document" type="list&lt;QUICK.Conformance.Document&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="QUICK.ValueSetStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="element" type="list&lt;QUICK.ConceptMap.Element&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DataAbsentReason_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.FHIRDefinedType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder" baseType="QUICK.DomainResource" retrievable="true" label="NutritionOrder" identifier="cqf-nutritionorder" primaryCodePath="item[].oralDiet.type|item[].supplement.type|item[].enteralFormula.baseFormulaType|item[].enteralFormula.additiveType">
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="orderer" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="allergyIntolerance" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="foodPreferenceModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="excludeFoodModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="item" type="list&lt;QUICK.NutritionOrder.Item&gt;"/>
        <ns4:element name="status" type="QUICK.NutritionOrderStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SpecialValues_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Money" baseType="System.Quantity">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="QUICK.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministration.Dosage" baseType="QUICK.BackboneElement">
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient" baseType="QUICK.DomainResource" retrievable="true" label="Patient" identifier="cqf-patient">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="list&lt;QUICK.HumanName&gt;"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="maritalStatus" type="System.Concept"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="contact" type="list&lt;QUICK.Patient.Contact&gt;"/>
        <ns4:element name="animal" type="QUICK.Patient.Animal"/>
        <ns4:element name="communication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="careProvider" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="managingOrganization" type="QUICK.Reference"/>
        <ns4:element name="link" type="list&lt;QUICK.Patient.Link&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Detail1" baseType="QUICK.BackboneElement">
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="QUICK.Money"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication4&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription" baseType="QUICK.DomainResource" retrievable="true" label="MedicationPrescription" identifier="cqf-medicationprescription" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="dateWritten" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.MedicationPrescriptionStatus"/>
        <ns4:element name="patient" type="QUICK.Reference"/>
        <ns4:element name="prescriber" type="QUICK.Reference"/>
        <ns4:element name="encounter" type="QUICK.Reference"/>
        <ns4:element name="medication" type="QUICK.Reference"/>
        <ns4:element name="dosageInstruction" type="list&lt;QUICK.MedicationPrescription.DosageInstruction&gt;"/>
        <ns4:element name="dispense" type="QUICK.MedicationPrescription.Dispense"/>
        <ns4:element name="substitution" type="QUICK.MedicationPrescription.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Mapping" baseType="QUICK.Element">
        <ns4:element name="identity" type="QUICK.id"/>
        <ns4:element name="map" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Container" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="capacity" type="System.Quantity"/>
        <ns4:element name="specimenQuantity" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="System.Uri"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Define" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="caseSensitive" type="System.Boolean"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ObservationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCertainty" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.AllergyIntoleranceCertainty_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.id"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="event" type="System.Code"/>
        <ns4:element name="response" type="QUICK.MessageHeader.Response"/>
        <ns4:element name="source" type="QUICK.MessageHeader.Source"/>
        <ns4:element name="destination" type="list&lt;QUICK.MessageHeader.Destination&gt;"/>
        <ns4:element name="enterer" type="QUICK.Reference"/>
        <ns4:element name="author" type="QUICK.Reference"/>
        <ns4:element name="receiver" type="QUICK.Reference"/>
        <ns4:element name="responsible" type="QUICK.Reference"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="data" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationOutcome" baseType="QUICK.DomainResource">
        <ns4:element name="issue" type="list&lt;QUICK.OperationOutcome.Issue&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.NameUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConditionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ConditionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="medication" type="QUICK.Reference"/>
        <ns4:element name="validityPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="numberOfRepeatsAllowed" type="System.Integer"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="expectedSupplyDuration" type="QUICK.Duration"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceVersionPolicy" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ResourceVersionPolicy_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ReferralStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ReferralStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ConceptMapEquivalence_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Element">
        <ns4:element name="id" type="QUICK.id_primitive"/>
        <ns4:element name="extension" type="list&lt;QUICK.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipantRequired" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ParticipantRequired_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="isInEffect" type="System.Boolean"/>
        <ns4:element name="oralDiet" type="QUICK.NutritionOrder.OralDiet"/>
        <ns4:element name="supplement" type="QUICK.NutritionOrder.Supplement"/>
        <ns4:element name="enteralFormula" type="QUICK.NutritionOrder.EnteralFormula"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.id" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.id_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.time_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.Context" baseType="QUICK.BackboneElement">
        <ns4:element name="event" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="facilityType" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.MedicationDispenseStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ContactPointUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="specimen" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="bodySite" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.DiagnosticOrderStatus"/>
        <ns4:element name="event" type="list&lt;QUICK.DiagnosticOrder.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.EncounterState_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequestMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.DeviceUseRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.NotAvailableTime" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="startDate" type="System.DateTime"/>
        <ns4:element name="endDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Supply.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.SupplyDispenseStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="suppliedItem" type="QUICK.Reference"/>
        <ns4:element name="supplier" type="QUICK.Reference"/>
        <ns4:element name="whenPrepared" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="whenHandedOver" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="destination" type="QUICK.Reference"/>
        <ns4:element name="receiver" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Coverage" baseType="QUICK.DomainResource">
        <ns4:element name="issuer" type="QUICK.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="group" type="System.String"/>
        <ns4:element name="plan" type="System.String"/>
        <ns4:element name="subplan" type="System.String"/>
        <ns4:element name="dependent" type="System.Integer"/>
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="subscriber" type="QUICK.Reference"/>
        <ns4:element name="network" type="QUICK.Identifier"/>
        <ns4:element name="contract" type="list&lt;QUICK.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Response" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.id"/>
        <ns4:element name="code" type="QUICK.ResponseType"/>
        <ns4:element name="details" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OralHealthClaim.Missingteeth" baseType="QUICK.BackboneElement">
        <ns4:element name="tooth" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="extractiondate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventObjectRole" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventObjectRole_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.uuid_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReport" baseType="QUICK.DomainResource" retrievable="true" label="DiagnosticReport" identifier="cqf-diagnosticreport" primaryCodePath="name">
        <ns4:element name="name" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.DiagnosticReportStatus"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="subject" type="QUICK.Reference"/>
        <ns4:element name="performer" type="QUICK.Reference"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="requestDetail" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="specimen" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="result" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="imagingStudy" type="list&lt;QUICK.Reference&gt;"/>
        <ns4:element name="image" type="list&lt;QUICK.DiagnosticReport.Image&gt;"/>
        <ns4:element name="conclusion" type="System.String"/>
        <ns4:element name="codedDiagnosis" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="presentedForm" type="list&lt;QUICK.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SubscriptionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SubscriptionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DeviceUseRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SecurityEventObjectLifecycle" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.SecurityEventObjectLifecycle_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Accomodation" baseType="QUICK.BackboneElement">
        <ns4:element name="bed" type="QUICK.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.ListMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="System.Concept"/>
        <ns4:element name="member" type="QUICK.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequestMode" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.CommunicationRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.DocumentRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Location" baseType="QUICK.DomainResource" retrievable="true" label="Location" identifier="cqf-location" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="physicalType" type="System.Concept"/>
        <ns4:element name="position" type="QUICK.Location.Position"/>
        <ns4:element name="managingOrganization" type="QUICK.Reference"/>
        <ns4:element name="status" type="QUICK.LocationStatus"/>
        <ns4:element name="partOf" type="QUICK.Reference"/>
        <ns4:element name="mode" type="QUICK.LocationMode"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProvenanceEntityRole" baseType="QUICK.Element">
        <ns4:element name="value" type="QUICK.ProvenanceEntityRole_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="QUICK.SecurityEventObjectType_list"/>
</ns4:modelInfo>
''';