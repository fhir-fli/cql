const testmodelinfo = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="Test" url="http://cqframework.org/test" targetQualifier="Test" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               patientClassName="Test.Patient" patientClassIdentifier="cqf-patient" patientBirthDatePropertyName="birthDate" schemaLocation="http://cqframework.org/Test test.xsd">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Composition.Event" baseType="Test.BackboneElement">
        <ns4:element name="code" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="detail" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Patient.Link" baseType="Test.BackboneElement">
        <ns4:element name="other" type="Test.Reference"/>
        <ns4:element name="type" type="Test.LinkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SpecialValues" baseType="Test.Element">
        <ns4:element name="value" type="Test.SpecialValues_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AggregationMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.AggregationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrderStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.NutritionOrderStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntolerance" baseType="Test.DomainResource" retrievable="true" label="AllergyIntolerance" identifier="cqf-allergyintolerance" primaryCodePath="substance">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="recordedDate" type="System.DateTime"/>
        <ns4:element name="recorder" type="Test.Reference"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="substance" type="System.Concept"/>
        <ns4:element name="status" type="Test.AllergyIntoleranceStatus"/>
        <ns4:element name="criticality" type="Test.AllergyIntoleranceCriticality"/>
        <ns4:element name="type" type="Test.AllergyIntoleranceType"/>
        <ns4:element name="category" type="Test.AllergyIntoleranceCategory"/>
        <ns4:element name="lastOccurence" type="System.DateTime"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="event" type="list&lt;Test.AllergyIntolerance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.RestfulConformanceMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Timing" baseType="Test.Element">
        <ns4:element name="event" type="list&lt;interval&lt;System.DateTime&gt;&gt;"/>
        <ns4:element name="repeat" type="Test.Timing.Repeat"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Network" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="Test.SecurityEventParticipantNetworkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Order.When" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="schedule" type="Test.Timing"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.RemittanceOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Medication" baseType="Test.DomainResource" retrievable="true" label="Medication" identifier="cqf-medication" primaryCodePath="code">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="isBrand" type="System.Boolean"/>
        <ns4:element name="manufacturer" type="Test.Reference"/>
        <ns4:element name="kind" type="Test.MedicationKind"/>
        <ns4:element name="product" type="Test.Medication.Product"/>
        <ns4:element name="package" type="Test.Medication.Package"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Profile.Mapping" baseType="Test.BackboneElement">
        <ns4:element name="identity" type="Test.id"/>
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageHeader.Source" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="software" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="contact" type="Test.ContactPoint"/>
        <ns4:element name="endpoint" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ResourceProfileStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Reference" baseType="Test.Element">
        <ns4:element name="reference" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ObservationRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SupplyStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.List" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="source" type="Test.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="ordered" type="System.Boolean"/>
        <ns4:element name="mode" type="Test.ListMode"/>
        <ns4:element name="entry" type="list&lt;Test.List.Entry&gt;"/>
        <ns4:element name="emptyReason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.RiskAssessment.Prediction" baseType="Test.BackboneElement">
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="relativeRisk" type="System.Decimal"/>
        <ns4:element name="rationale" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.base64Binary" baseType="Test.Element">
        <ns4:element name="value" type="Test.base64Binary_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CarePlanActivityCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DeviceUseRequestPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImmunizationRecommendation.Protocol" baseType="Test.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="Test.Reference"/>
        <ns4:element name="series" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Alert" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="status" type="Test.AlertStatus"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationKind" baseType="Test.Element">
        <ns4:element name="value" type="Test.OperationKind_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HealthcareService.ServiceType" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.EventTiming" baseType="Test.Element">
        <ns4:element name="value" type="Test.EventTiming_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.BundleEntryStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Filter" baseType="Test.BackboneElement">
        <ns4:element name="property" type="Test.code"/>
        <ns4:element name="op" type="Test.FilterOperator"/>
        <ns4:element name="value" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Appointment.Participant" baseType="Test.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="Test.Reference"/>
        <ns4:element name="required" type="Test.ParticipantRequired"/>
        <ns4:element name="status" type="Test.ParticipationStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DomainResource" baseType="Test.Resource">
        <ns4:element name="text" type="Test.Narrative"/>
        <ns4:element name="contained" type="list&lt;Test.ResourceContainer&gt;"/>
        <ns4:element name="extension" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="modifierExtension" type="list&lt;Test.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.QuestionnaireStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Specimen.Collection" baseType="Test.BackboneElement">
        <ns4:element name="collector" type="Test.Reference"/>
        <ns4:element name="comment" type="list&lt;System.String&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="sourceSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Object" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="reference" type="Test.Reference"/>
        <ns4:element name="type" type="Test.SecurityEventObjectType"/>
        <ns4:element name="role" type="Test.SecurityEventObjectRole"/>
        <ns4:element name="lifecycle" type="Test.SecurityEventObjectLifecycle"/>
        <ns4:element name="sensitivity" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="query" type="Test.base64Binary"/>
        <ns4:element name="detail" type="list&lt;Test.SecurityEvent.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Procedure.Performer" baseType="Test.BackboneElement">
        <ns4:element name="person" type="Test.Reference"/>
        <ns4:element name="role" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.IssueSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NarrativeStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystem.UniqueId" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.NamingSystemIdentifierType"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="preferred" type="System.Boolean"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.RelatedPerson" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="name" type="Test.HumanName"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="address" type="Test.Address"/>
        <ns4:element name="photo" type="list&lt;Test.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CommunicationRequest.MessagePart" baseType="Test.BackboneElement"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Encounter" baseType="Test.DomainResource" retrievable="true" label="Encounter" identifier="cqf-encounter" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="status" type="Test.EncounterState"/>
        <ns4:element name="class" type="Test.EncounterClass"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="participant" type="list&lt;Test.Encounter.Participant&gt;"/>
        <ns4:element name="fulfills" type="Test.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="length" type="Test.Duration"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="indication" type="Test.Reference"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="hospitalization" type="Test.Encounter.Hospitalization"/>
        <ns4:element name="location" type="list&lt;Test.Encounter.Location&gt;"/>
        <ns4:element name="serviceProvider" type="Test.Reference"/>
        <ns4:element name="partOf" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.BindingConformance_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystem" baseType="Test.DomainResource">
        <ns4:element name="type" type="Test.NamingSystemType"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="status" type="Test.NamingSystemStatus"/>
        <ns4:element name="country" type="Test.code"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="responsible" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="usage" type="System.String"/>
        <ns4:element name="uniqueId" type="list&lt;Test.NamingSystem.UniqueId&gt;"/>
        <ns4:element name="contact" type="Test.NamingSystem.Contact"/>
        <ns4:element name="replacedBy" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ExplanationOfBenefit" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="outcome" type="Test.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="requestProvider" type="Test.Reference"/>
        <ns4:element name="requestOrganization" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlan.Activity" baseType="Test.BackboneElement">
        <ns4:element name="goal" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="status" type="Test.CarePlanActivityStatus"/>
        <ns4:element name="prohibited" type="System.Boolean"/>
        <ns4:element name="actionResulting" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="detail" type="Test.Reference"/>
        <ns4:element name="simple" type="Test.CarePlan.Simple"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="System.QuantityComparator" baseType="Test.Element">
        <ns4:element name="value" type="System.QuantityComparator_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ObservationReliability" baseType="Test.Element">
        <ns4:element name="value" type="Test.ObservationReliability_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireAnswers.Group" baseType="Test.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="group" type="list&lt;Test.QuestionnaireAnswers.Group&gt;"/>
        <ns4:element name="question" type="list&lt;Test.QuestionnaireAnswers.Question&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.Texture" baseType="Test.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
        <ns4:element name="foodType" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.GroupType" baseType="Test.Element">
        <ns4:element name="value" type="Test.GroupType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.FamilyHistory.Condition" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Messaging" baseType="Test.BackboneElement">
        <ns4:element name="endpoint" type="System.Uri"/>
        <ns4:element name="reliableCache" type="System.Integer"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="event" type="list&lt;Test.Conformance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Reversal" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="requestIdentifier" type="Test.Identifier"/>
        <ns4:element name="response" type="Test.Reference"/>
        <ns4:element name="responseIdentifier" type="Test.Identifier"/>
        <ns4:element name="payee" type="Test.Reversal.Payee"/>
        <ns4:element name="coverage" type="Test.Reversal.Coverage"/>
        <ns4:element name="nullify" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AdministrativeGender_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ParticipantStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DiagnosticOrderStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Observation.ReferenceRange" baseType="Test.BackboneElement">
        <ns4:element name="low" type="System.Quantity"/>
        <ns4:element name="high" type="System.Quantity"/>
        <ns4:element name="meaning" type="System.Concept"/>
        <ns4:element name="age" type="Test.Range"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceUseRequestStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.DeviceUseRequestStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SlicingRules" baseType="Test.Element">
        <ns4:element name="value" type="Test.SlicingRules_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Subscription" baseType="Test.DomainResource">
        <ns4:element name="criteria" type="System.String"/>
        <ns4:element name="contact" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="reason" type="System.String"/>
        <ns4:element name="status" type="Test.SubscriptionStatus"/>
        <ns4:element name="error" type="System.String"/>
        <ns4:element name="channel" type="Test.Subscription.Channel"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="tag" type="list&lt;Test.Subscription.Tag&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlanStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.CarePlanStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ValueSetStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImagingStudy.Instance" baseType="Test.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="uid" type="Test.oid"/>
        <ns4:element name="sopclass" type="Test.oid"/>
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="attachment" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Measmnt_Principle" baseType="Test.Element">
        <ns4:element name="value" type="Test.Measmnt_Principle_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ContactPointSystem_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystemType" baseType="Test.Element">
        <ns4:element name="value" type="Test.NamingSystemType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition.Evidence" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="detail" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SupplyDispenseStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition.OccurredFollowing" baseType="Test.BackboneElement">
        <ns4:element name="codeableConcept" type="System.Concept"/>
        <ns4:element name="target" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ExtensionContext" baseType="Test.Element">
        <ns4:element name="value" type="Test.ExtensionContext_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ProcedureRequestPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CarePlanStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ConditionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.OrderOutcomeStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Practitioner" baseType="Test.DomainResource" retrievable="true" label="Practitioner" identifier="cqf-practitioner" primaryCodePath="specialty">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="name" type="Test.HumanName"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;Test.Address&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="photo" type="list&lt;Test.Attachment&gt;"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="location" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="qualification" type="list&lt;Test.Practitioner.Qualification&gt;"/>
        <ns4:element name="communication" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.QuestionnaireStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Detail" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="value" type="Test.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProcedureRequestStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ProcedureRequestStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Resource">
        <ns4:element name="id" type="Test.id"/>
        <ns4:element name="meta" type="Test.Resource.Meta"/>
        <ns4:element name="implicitRules" type="System.Uri"/>
        <ns4:element name="language" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Medication.Product" baseType="Test.BackboneElement">
        <ns4:element name="form" type="System.Concept"/>
        <ns4:element name="ingredient" type="list&lt;Test.Medication.Ingredient&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.InstanceAvailability" baseType="Test.Element">
        <ns4:element name="value" type="Test.InstanceAvailability_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SearchParamType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ResourceDataElementStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Patient.Animal" baseType="Test.BackboneElement">
        <ns4:element name="species" type="System.Concept"/>
        <ns4:element name="breed" type="System.Concept"/>
        <ns4:element name="genderStatus" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.BundleType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Procedure.RelatedItem" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.ProcedureRelationshipType"/>
        <ns4:element name="target" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Group" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="type" type="Test.GroupType"/>
        <ns4:element name="actual" type="System.Boolean"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="quantity" type="System.Integer"/>
        <ns4:element name="characteristic" type="list&lt;Test.Group.Characteristic&gt;"/>
        <ns4:element name="member" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Modality" baseType="Test.Element">
        <ns4:element name="value" type="Test.Modality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ContactPointSystem" baseType="Test.Element">
        <ns4:element name="value" type="Test.ContactPointSystem_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ParticipationStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ParticipationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Substance.Instance" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="requestProvider" type="Test.Reference"/>
        <ns4:element name="requestOrganization" type="Test.Reference"/>
        <ns4:element name="outcome" type="Test.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="payeeType" type="System.Code"/>
        <ns4:element name="item" type="list&lt;Test.ClaimResponse.Item&gt;"/>
        <ns4:element name="additem" type="list&lt;Test.ClaimResponse.Additem&gt;"/>
        <ns4:element name="error" type="list&lt;Test.ClaimResponse.Error&gt;"/>
        <ns4:element name="totalCost" type="Test.Money"/>
        <ns4:element name="unallocDeductable" type="Test.Money"/>
        <ns4:element name="totalBenefit" type="Test.Money"/>
        <ns4:element name="paymentAdjustment" type="Test.Money"/>
        <ns4:element name="paymentAdjustmentReason" type="System.Code"/>
        <ns4:element name="paymentDate" type="System.DateTime"/>
        <ns4:element name="paymentAmount" type="Test.Money"/>
        <ns4:element name="paymentRef" type="Test.Identifier"/>
        <ns4:element name="reserved" type="System.Code"/>
        <ns4:element name="form" type="System.Code"/>
        <ns4:element name="note" type="list&lt;Test.ClaimResponse.Note&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Contains" baseType="Test.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="contains" type="list&lt;Test.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationDispense.Dosage" baseType="Test.BackboneElement">
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="Test.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="Test.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Resource.Meta" baseType="Test.Element">
        <ns4:element name="versionId" type="Test.id"/>
        <ns4:element name="lastUpdated" type="System.DateTime"/>
        <ns4:element name="profile" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="security" type="list&lt;System.Code&gt;"/>
        <ns4:element name="tag" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.QuestionnaireAnswersStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CompositionStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.CompositionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SearchParameter" baseType="Test.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="base" type="Test.code"/>
        <ns4:element name="type" type="Test.SearchParamType"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
        <ns4:element name="target" type="list&lt;Test.code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.base64Binary_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.RemittanceOutcome" baseType="Test.Element">
        <ns4:element name="value" type="Test.RemittanceOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImmunizationRecommendation.DateCriterion" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="value" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition.Location" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="detail" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Provenance.Entity" baseType="Test.BackboneElement">
        <ns4:element name="role" type="Test.ProvenanceEntityRole"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="agent" type="Test.Provenance.Agent"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProcedureRequestMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.ProcedureRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.DocumentMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReference" baseType="Test.DomainResource">
        <ns4:element name="masterIdentifier" type="Test.Identifier"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="author" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="custodian" type="Test.Reference"/>
        <ns4:element name="policyManager" type="System.Uri"/>
        <ns4:element name="authenticator" type="Test.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="indexed" type="System.DateTime"/>
        <ns4:element name="status" type="Test.DocumentReferenceStatus"/>
        <ns4:element name="docStatus" type="System.Concept"/>
        <ns4:element name="relatesTo" type="list&lt;Test.DocumentReference.RelatesTo&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="confidentiality" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="primaryLanguage" type="Test.code"/>
        <ns4:element name="mimeType" type="Test.code"/>
        <ns4:element name="format" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="size" type="System.Integer"/>
        <ns4:element name="hash" type="Test.base64Binary"/>
        <ns4:element name="location" type="System.Uri"/>
        <ns4:element name="service" type="Test.DocumentReference.Service"/>
        <ns4:element name="context" type="Test.DocumentReference.Context"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Adjudication2" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="Test.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Questionnaire.Group" baseType="Test.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="concept" type="list&lt;System.Code&gt;"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="required" type="System.Boolean"/>
        <ns4:element name="repeats" type="System.Boolean"/>
        <ns4:element name="group" type="list&lt;Test.Questionnaire.Group&gt;"/>
        <ns4:element name="question" type="list&lt;Test.Questionnaire.Question&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResourceType" baseType="Test.Element">
        <ns4:element name="value" type="Test.ResourceType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Adjudication1" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="Test.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Adjudication4" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="Test.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Adjudication3" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="Test.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Specimen.Treatment" baseType="Test.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="procedure" type="System.Concept"/>
        <ns4:element name="additive" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Composition.Attester" baseType="Test.BackboneElement">
        <ns4:element name="mode" type="list&lt;Test.CompositionAttestationMode&gt;"/>
        <ns4:element name="time" type="System.DateTime"/>
        <ns4:element name="party" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticReport.Image" baseType="Test.BackboneElement">
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="link" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationDispense" baseType="Test.DomainResource" retrievable="true" label="MedicationDispense" identifier="cqf-medicationdispense" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="status" type="Test.MedicationDispenseStatus"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="dispenser" type="Test.Reference"/>
        <ns4:element name="authorizingPrescription" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="dispense" type="list&lt;Test.MedicationDispense.Dispense&gt;"/>
        <ns4:element name="substitution" type="Test.MedicationDispense.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConformanceStatementStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ConformanceStatementStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ReferralRequest" baseType="Test.DomainResource">
        <ns4:element name="status" type="Test.ReferralStatus"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="System.Concept"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="requester" type="Test.Reference"/>
        <ns4:element name="recipient" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="dateSent" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="serviceRequested" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="supportingInformation" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="fulfillmentTime" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AggregationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CommunicationRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Detail" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="Test.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="Test.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="subDetail" type="list&lt;Test.OralHealthClaim.SubDetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Contract.Term" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="System.Concept"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SystemRestfulInteraction_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.EligibilityResponse" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="requestIdentifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="outcome" type="Test.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="requestProvider" type="Test.Reference"/>
        <ns4:element name="requestOrganization" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventParticipantNetworkType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResponseType" baseType="Test.Element">
        <ns4:element name="value" type="Test.ResponseType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Event" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="action" type="Test.SecurityEventAction"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="outcome" type="Test.SecurityEventOutcome"/>
        <ns4:element name="outcomeDesc" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MediaType" baseType="Test.Element">
        <ns4:element name="value" type="Test.MediaType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConceptMap.Map" baseType="Test.BackboneElement">
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="equivalence" type="Test.ConceptMapEquivalence"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="product" type="list&lt;Test.ConceptMap.DependsOn&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Source" baseType="Test.BackboneElement">
        <ns4:element name="site" type="System.String"/>
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Parameters" baseType="Test.Resource">
        <ns4:element name="parameter" type="list&lt;Test.Parameters.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Rest" baseType="Test.BackboneElement">
        <ns4:element name="mode" type="Test.RestfulConformanceMode"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="security" type="Test.Conformance.Security"/>
        <ns4:element name="resource" type="list&lt;Test.Conformance.Resource&gt;"/>
        <ns4:element name="interaction" type="list&lt;Test.Conformance.Interaction1&gt;"/>
        <ns4:element name="operation" type="list&lt;Test.Conformance.Operation&gt;"/>
        <ns4:element name="documentMailbox" type="list&lt;System.Uri&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.LinkType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Resource" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.code"/>
        <ns4:element name="profile" type="Test.Reference"/>
        <ns4:element name="interaction" type="list&lt;Test.Conformance.Interaction&gt;"/>
        <ns4:element name="versioning" type="Test.ResourceVersionPolicy"/>
        <ns4:element name="readHistory" type="System.Boolean"/>
        <ns4:element name="updateCreate" type="System.Boolean"/>
        <ns4:element name="searchInclude" type="list&lt;System.String&gt;"/>
        <ns4:element name="searchParam" type="list&lt;Test.Conformance.SearchParam&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticOrderStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.DiagnosticOrderStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MessageSignificanceCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.BundleType" baseType="Test.Element">
        <ns4:element name="value" type="Test.BundleType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationDispense.Substitution" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="responsibleParty" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResourceContainer">
        <ns4:element name="Alert" type="Test.Alert"/>
        <ns4:element name="AllergyIntolerance" type="Test.AllergyIntolerance"/>
        <ns4:element name="Appointment" type="Test.Appointment"/>
        <ns4:element name="AppointmentResponse" type="Test.AppointmentResponse"/>
        <ns4:element name="Availability" type="Test.Availability"/>
        <ns4:element name="Basic" type="Test.Basic"/>
        <ns4:element name="Binary" type="Test.Binary"/>
        <ns4:element name="Bundle" type="Test.Bundle"/>
        <ns4:element name="CarePlan" type="Test.CarePlan"/>
        <ns4:element name="ClaimResponse" type="Test.ClaimResponse"/>
        <ns4:element name="CommunicationRequest" type="Test.CommunicationRequest"/>
        <ns4:element name="Composition" type="Test.Composition"/>
        <ns4:element name="ConceptMap" type="Test.ConceptMap"/>
        <ns4:element name="Condition" type="Test.Condition"/>
        <ns4:element name="Conformance" type="Test.Conformance"/>
        <ns4:element name="Contract" type="Test.Contract"/>
        <ns4:element name="Contraindication" type="Test.Contraindication"/>
        <ns4:element name="Coverage" type="Test.Coverage"/>
        <ns4:element name="DataElement" type="Test.DataElement"/>
        <ns4:element name="Device" type="Test.Device"/>
        <ns4:element name="DeviceComponent" type="Test.DeviceComponent"/>
        <ns4:element name="DeviceUseRequest" type="Test.DeviceUseRequest"/>
        <ns4:element name="DeviceUseStatement" type="Test.DeviceUseStatement"/>
        <ns4:element name="DiagnosticOrder" type="Test.DiagnosticOrder"/>
        <ns4:element name="DiagnosticReport" type="Test.DiagnosticReport"/>
        <ns4:element name="DocumentManifest" type="Test.DocumentManifest"/>
        <ns4:element name="DocumentReference" type="Test.DocumentReference"/>
        <ns4:element name="Eligibility" type="Test.Eligibility"/>
        <ns4:element name="EligibilityResponse" type="Test.EligibilityResponse"/>
        <ns4:element name="Encounter" type="Test.Encounter"/>
        <ns4:element name="ExplanationOfBenefit" type="Test.ExplanationOfBenefit"/>
        <ns4:element name="ExtensionDefinition" type="Test.ExtensionDefinition"/>
        <ns4:element name="FamilyHistory" type="Test.FamilyHistory"/>
        <ns4:element name="Group" type="Test.Group"/>
        <ns4:element name="HealthcareService" type="Test.HealthcareService"/>
        <ns4:element name="ImagingStudy" type="Test.ImagingStudy"/>
        <ns4:element name="Immunization" type="Test.Immunization"/>
        <ns4:element name="ImmunizationRecommendation" type="Test.ImmunizationRecommendation"/>
        <ns4:element name="List" type="Test.List"/>
        <ns4:element name="Location" type="Test.Location"/>
        <ns4:element name="Media" type="Test.Media"/>
        <ns4:element name="Medication" type="Test.Medication"/>
        <ns4:element name="MedicationAdministration" type="Test.MedicationAdministration"/>
        <ns4:element name="MedicationDispense" type="Test.MedicationDispense"/>
        <ns4:element name="MedicationPrescription" type="Test.MedicationPrescription"/>
        <ns4:element name="MedicationStatement" type="Test.MedicationStatement"/>
        <ns4:element name="MessageHeader" type="Test.MessageHeader"/>
        <ns4:element name="NamingSystem" type="Test.NamingSystem"/>
        <ns4:element name="NutritionOrder" type="Test.NutritionOrder"/>
        <ns4:element name="Observation" type="Test.Observation"/>
        <ns4:element name="OperationDefinition" type="Test.OperationDefinition"/>
        <ns4:element name="OperationOutcome" type="Test.OperationOutcome"/>
        <ns4:element name="OralHealthClaim" type="Test.OralHealthClaim"/>
        <ns4:element name="Order" type="Test.Order"/>
        <ns4:element name="OrderResponse" type="Test.OrderResponse"/>
        <ns4:element name="Organization" type="Test.Organization"/>
        <ns4:element name="Other" type="Test.Other"/>
        <ns4:element name="Patient" type="Test.Patient"/>
        <ns4:element name="Practitioner" type="Test.Practitioner"/>
        <ns4:element name="Procedure" type="Test.Procedure"/>
        <ns4:element name="ProcedureRequest" type="Test.ProcedureRequest"/>
        <ns4:element name="Profile" type="Test.Profile"/>
        <ns4:element name="Provenance" type="Test.Provenance"/>
        <ns4:element name="Query" type="Test.Query"/>
        <ns4:element name="Questionnaire" type="Test.Questionnaire"/>
        <ns4:element name="QuestionnaireAnswers" type="Test.QuestionnaireAnswers"/>
        <ns4:element name="ReferralRequest" type="Test.ReferralRequest"/>
        <ns4:element name="RelatedPerson" type="Test.RelatedPerson"/>
        <ns4:element name="Reversal" type="Test.Reversal"/>
        <ns4:element name="RiskAssessment" type="Test.RiskAssessment"/>
        <ns4:element name="SearchParameter" type="Test.SearchParameter"/>
        <ns4:element name="SecurityEvent" type="Test.SecurityEvent"/>
        <ns4:element name="Slot" type="Test.Slot"/>
        <ns4:element name="Specimen" type="Test.Specimen"/>
        <ns4:element name="Subscription" type="Test.Subscription"/>
        <ns4:element name="Substance" type="Test.Substance"/>
        <ns4:element name="Supply" type="Test.Supply"/>
        <ns4:element name="SupportingDocumentation" type="Test.SupportingDocumentation"/>
        <ns4:element name="ValueSet" type="Test.ValueSet"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ConformanceEventMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Immunization.Reaction" baseType="Test.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="detail" type="Test.Reference"/>
        <ns4:element name="reported" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Patient.Contact" baseType="Test.BackboneElement">
        <ns4:element name="relationship" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="name" type="Test.HumanName"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="address" type="Test.Address"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.BackboneElement" baseType="Test.Element">
        <ns4:element name="modifierExtension" type="list&lt;Test.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Reversal.Payee" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="person" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DiagnosticOrderPriority_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Immunization" baseType="Test.DomainResource" retrievable="true" label="Immunization" identifier="cqf-immunization" primaryCodePath="vaccineType">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="refusedIndicator" type="System.Boolean"/>
        <ns4:element name="reported" type="System.Boolean"/>
        <ns4:element name="performer" type="Test.Reference"/>
        <ns4:element name="requester" type="Test.Reference"/>
        <ns4:element name="manufacturer" type="Test.Reference"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="expirationDate" type="System.DateTime"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="explanation" type="Test.Immunization.Explanation"/>
        <ns4:element name="reaction" type="list&lt;Test.Immunization.Reaction&gt;"/>
        <ns4:element name="vaccinationProtocol" type="list&lt;Test.Immunization.VaccinationProtocol&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlanActivityCategory" baseType="Test.Element">
        <ns4:element name="value" type="Test.CarePlanActivityCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.EventTiming_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Other" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentManifest" baseType="Test.DomainResource">
        <ns4:element name="masterIdentifier" type="Test.Identifier"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="subject" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="recipient" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="author" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="source" type="System.Uri"/>
        <ns4:element name="status" type="Test.DocumentReferenceStatus"/>
        <ns4:element name="supercedes" type="Test.Reference"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="confidentiality" type="System.Concept"/>
        <ns4:element name="content" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.code_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Provenance.Agent" baseType="Test.BackboneElement">
        <ns4:element name="role" type="System.Code"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="display" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventObjectRole_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Subscription.Tag" baseType="Test.BackboneElement">
        <ns4:element name="term" type="System.Uri"/>
        <ns4:element name="scheme" type="System.Uri"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Appointment" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="priority" type="System.Integer"/>
        <ns4:element name="status" type="Test.code"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="slot" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="order" type="Test.Reference"/>
        <ns4:element name="participant" type="list&lt;Test.Appointment.Participant&gt;"/>
        <ns4:element name="lastModifiedBy" type="Test.Reference"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Substance" baseType="Test.DomainResource" retrievable="true" label="Substance" identifier="cqf-substance" primaryCodePath="type">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="instance" type="Test.Substance.Instance"/>
        <ns4:element name="ingredient" type="list&lt;Test.Substance.Ingredient&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationPrescription.Substitution" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NamingSystemIdentifierType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CarePlanGoalStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DataAbsentReason" baseType="Test.Element">
        <ns4:element name="value" type="Test.DataAbsentReason_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Immunization.VaccinationProtocol" baseType="Test.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="Test.Reference"/>
        <ns4:element name="series" type="System.String"/>
        <ns4:element name="seriesDoses" type="System.Integer"/>
        <ns4:element name="doseTarget" type="System.Concept"/>
        <ns4:element name="doseStatus" type="System.Concept"/>
        <ns4:element name="doseStatusReason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SupportingDocumentation.Detail" baseType="Test.BackboneElement">
        <ns4:element name="linkId" type="System.Integer"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CommunicationRequest" baseType="Test.DomainResource" retrievable="true" label="CommunicationRequest" identifier="cqf-communicationrequest" primaryCodePath="category">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="sender" type="Test.Reference"/>
        <ns4:element name="recipient" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="messagePart" type="list&lt;Test.CommunicationRequest.MessagePart&gt;"/>
        <ns4:element name="medium" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="requester" type="Test.Reference"/>
        <ns4:element name="status" type="Test.CommunicationRequestStatus"/>
        <ns4:element name="mode" type="Test.CommunicationRequestMode"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="scheduledTime" type="System.DateTime"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="priority" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HumanName" baseType="Test.Element">
        <ns4:element name="use" type="Test.NameUse"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="family" type="list&lt;System.String&gt;"/>
        <ns4:element name="given" type="list&lt;System.String&gt;"/>
        <ns4:element name="prefix" type="list&lt;System.String&gt;"/>
        <ns4:element name="suffix" type="list&lt;System.String&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HealthcareService" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="serviceType" type="list&lt;Test.HealthcareService.ServiceType&gt;"/>
        <ns4:element name="serviceName" type="System.String"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="extraDetails" type="System.String"/>
        <ns4:element name="freeProvisionCode" type="System.Concept"/>
        <ns4:element name="eligibility" type="System.Concept"/>
        <ns4:element name="eligibilityNote" type="System.String"/>
        <ns4:element name="appointmentRequired" type="System.Concept"/>
        <ns4:element name="imageURI" type="System.Uri"/>
        <ns4:element name="availableTime" type="list&lt;Test.HealthcareService.AvailableTime&gt;"/>
        <ns4:element name="notAvailableTime" type="list&lt;Test.HealthcareService.NotAvailableTime&gt;"/>
        <ns4:element name="availabilityExceptions" type="System.String"/>
        <ns4:element name="publicKey" type="System.String"/>
        <ns4:element name="programName" type="list&lt;System.String&gt;"/>
        <ns4:element name="contactPoint" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="characteristic" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="referralMethod" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="setting" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="targetGroup" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="coverageArea" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="catchmentArea" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="serviceCode" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConceptMap.Element" baseType="Test.BackboneElement">
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="dependsOn" type="list&lt;Test.ConceptMap.DependsOn&gt;"/>
        <ns4:element name="map" type="list&lt;Test.ConceptMap.Map&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AddressUse_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MedicationPrescriptionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceSeverity" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Basic" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="created" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Organization.Contact" baseType="Test.BackboneElement">
        <ns4:element name="purpose" type="System.Concept"/>
        <ns4:element name="name" type="Test.HumanName"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="address" type="Test.Address"/>
        <ns4:element name="gender" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AlertStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.AlertStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.UnitsOfTime" baseType="Test.Element">
        <ns4:element name="value" type="Test.UnitsOfTime_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationOutcome.Issue" baseType="Test.BackboneElement">
        <ns4:element name="severity" type="Test.IssueSeverity"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="details" type="System.String"/>
        <ns4:element name="location" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationDefinition" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="Test.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="kind" type="Test.OperationKind"/>
        <ns4:element name="name" type="Test.code"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="base" type="Test.Reference"/>
        <ns4:element name="system" type="System.Boolean"/>
        <ns4:element name="type" type="list&lt;Test.code&gt;"/>
        <ns4:element name="instance" type="System.Boolean"/>
        <ns4:element name="parameter" type="list&lt;Test.OperationDefinition.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Questionnaire.Question" baseType="Test.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="concept" type="list&lt;System.Code&gt;"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="type" type="Test.AnswerFormat"/>
        <ns4:element name="required" type="System.Boolean"/>
        <ns4:element name="repeats" type="System.Boolean"/>
        <ns4:element name="options" type="Test.Reference"/>
        <ns4:element name="group" type="list&lt;Test.Questionnaire.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Composition" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="status" type="Test.CompositionStatus"/>
        <ns4:element name="confidentiality" type="System.Code"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="author" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="attester" type="list&lt;Test.Composition.Attester&gt;"/>
        <ns4:element name="custodian" type="Test.Reference"/>
        <ns4:element name="event" type="list&lt;Test.Composition.Event&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="section" type="list&lt;Test.Composition.Section&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ExtensionDefinition.Mapping" baseType="Test.BackboneElement">
        <ns4:element name="identity" type="Test.id"/>
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SampledDataDataType" baseType="Test.Element">
        <ns4:element name="value" type="Test.SampledDataDataType_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Provenance" baseType="Test.DomainResource">
        <ns4:element name="target" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="recorded" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="policy" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="agent" type="list&lt;Test.Provenance.Agent&gt;"/>
        <ns4:element name="entity" type="list&lt;Test.Provenance.Entity&gt;"/>
        <ns4:element name="integritySignature" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.code" baseType="Test.Element">
        <ns4:element name="value" type="Test.code_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Attachment" baseType="Test.Element">
        <ns4:element name="contentType" type="Test.code"/>
        <ns4:element name="language" type="Test.code"/>
        <ns4:element name="data" type="Test.base64Binary"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="size" type="System.Integer"/>
        <ns4:element name="hash" type="Test.base64Binary"/>
        <ns4:element name="title" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.id_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireAnswers" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="questionnaire" type="Test.Reference"/>
        <ns4:element name="status" type="Test.QuestionnaireAnswersStatus"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="authored" type="System.DateTime"/>
        <ns4:element name="source" type="Test.Reference"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="group" type="Test.QuestionnaireAnswers.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Medication.Package" baseType="Test.BackboneElement">
        <ns4:element name="container" type="System.Concept"/>
        <ns4:element name="content" type="list&lt;Test.Medication.Content&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageHeader.Destination" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="endpoint" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Order" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="source" type="Test.Reference"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="authority" type="Test.Reference"/>
        <ns4:element name="when" type="Test.Order.When"/>
        <ns4:element name="detail" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Encounter.Location" baseType="Test.BackboneElement">
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Identifier" baseType="Test.Element">
        <ns4:element name="use" type="Test.IdentifierUse"/>
        <ns4:element name="label" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="assigner" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.UnitsOfTime_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NameUse" baseType="Test.Element">
        <ns4:element name="value" type="Test.NameUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Detail" baseType="Test.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;Test.ClaimResponse.Adjudication1&gt;"/>
        <ns4:element name="subdetail" type="list&lt;Test.ClaimResponse.Subdetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SlotStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImagingModality" baseType="Test.Element">
        <ns4:element name="value" type="Test.ImagingModality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.OperationKind_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Slot" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="availability" type="Test.Reference"/>
        <ns4:element name="freeBusyType" type="Test.SlotStatus"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="overbooked" type="System.Boolean"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MedicationKind_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AnswerFormat_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ObservationReliability_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.PropertyRepresentation" baseType="Test.Element">
        <ns4:element name="value" type="Test.PropertyRepresentation_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.Use_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Device" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="manufacturer" type="System.String"/>
        <ns4:element name="model" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="udi" type="System.String"/>
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="owner" type="Test.Reference"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="contact" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventParticipantNetworkType" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventParticipantNetworkType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AdministrativeGender" baseType="Test.Element">
        <ns4:element name="value" type="Test.AdministrativeGender_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntolerance.Event" baseType="Test.BackboneElement">
        <ns4:element name="substance" type="System.Concept"/>
        <ns4:element name="certainty" type="Test.AllergyIntoleranceCertainty"/>
        <ns4:element name="manifestation" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="onset" type="System.DateTime"/>
        <ns4:element name="duration" type="Test.Duration"/>
        <ns4:element name="severity" type="Test.AllergyIntoleranceSeverity"/>
        <ns4:element name="exposureRoute" type="System.Concept"/>
        <ns4:element name="comment" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Substance.Ingredient" baseType="Test.BackboneElement">
        <ns4:element name="quantity" type="Test.Ratio"/>
        <ns4:element name="substance" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Procedure" baseType="Test.DomainResource" retrievable="true" label="Procedure" identifier="cqf-procedure" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="performer" type="list&lt;Test.Procedure.Performer&gt;"/>
        <ns4:element name="date" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="outcome" type="System.String"/>
        <ns4:element name="report" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="complication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="followUp" type="System.String"/>
        <ns4:element name="relatedItem" type="list&lt;Test.Procedure.RelatedItem&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProcedureRequestPriority" baseType="Test.Element">
        <ns4:element name="value" type="Test.ProcedureRequestPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImagingStudy" baseType="Test.DomainResource">
        <ns4:element name="started" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="uid" type="Test.oid"/>
        <ns4:element name="accession" type="Test.Identifier"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="order" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="modalityList" type="list&lt;Test.ImagingModality&gt;"/>
        <ns4:element name="referrer" type="Test.Reference"/>
        <ns4:element name="availability" type="Test.InstanceAvailability"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="numberOfSeries" type="System.Integer"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="clinicalInformation" type="System.String"/>
        <ns4:element name="procedure" type="list&lt;System.Code&gt;"/>
        <ns4:element name="interpreter" type="Test.Reference"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="series" type="list&lt;Test.ImagingStudy.Series&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationDispenseStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.MedicationDispenseStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Observation" baseType="Test.DomainResource" retrievable="true" label="Observation" identifier="cqf-observation" primaryCodePath="name">
        <ns4:element name="name" type="System.Concept"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="dataAbsentReason" type="Test.DataAbsentReason"/>
        <ns4:element name="interpretation" type="System.Concept"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="status" type="Test.ObservationStatus"/>
        <ns4:element name="reliability" type="Test.ObservationReliability"/>
        <ns4:element name="bodySite" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="specimen" type="Test.Reference"/>
        <ns4:element name="performer" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="referenceRange" type="list&lt;Test.Observation.ReferenceRange&gt;"/>
        <ns4:element name="related" type="list&lt;Test.Observation.Related&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventOutcome" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ReferralStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticOrder" baseType="Test.DomainResource" retrievable="true" label="DiagnosticOrder" identifier="cqf-diagnosticorder" primaryCodePath="item[].code">
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="orderer" type="Test.Reference"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="clinicalNotes" type="System.String"/>
        <ns4:element name="supportingInformation" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="specimen" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="status" type="Test.DiagnosticOrderStatus"/>
        <ns4:element name="priority" type="Test.DiagnosticOrderPriority"/>
        <ns4:element name="event" type="list&lt;Test.DiagnosticOrder.Event&gt;"/>
        <ns4:element name="item" type="list&lt;Test.DiagnosticOrder.Item&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Duration" baseType="System.Quantity">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CompositionAttestationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ObservationRelationshipType" baseType="Test.Element">
        <ns4:element name="value" type="Test.ObservationRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.oid_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Software" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="releaseDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireAnswersStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.QuestionnaireAnswersStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SupplyDispenseStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.SupplyDispenseStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition.Constraint" baseType="Test.Element">
        <ns4:element name="key" type="Test.id"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="severity" type="Test.ConstraintSeverity"/>
        <ns4:element name="human" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.oid" baseType="Test.Element">
        <ns4:element name="value" type="Test.oid_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CompositionAttestationMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.CompositionAttestationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AddressUse" baseType="Test.Element">
        <ns4:element name="value" type="Test.AddressUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ConformanceStatementStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReferenceStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.DocumentReferenceStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImmunizationRecommendation" baseType="Test.DomainResource" retrievable="true" label="ImmunizationRecommendation" identifier="cqf-immunization-recommendation" primaryCodePath="recommendation[].vaccineType">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="recommendation" type="list&lt;Test.ImmunizationRecommendation.Recommendation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageEvent" baseType="Test.Element">
        <ns4:element name="value" type="Test.MessageEvent_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Period" baseType="Test.Element">
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ResponseType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Expansion" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="contains" type="list&lt;Test.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlan.Simple" baseType="Test.BackboneElement">
        <ns4:element name="category" type="Test.CarePlanActivityCategory"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="location" type="Test.Reference"/>
        <ns4:element name="performer" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="product" type="Test.Reference"/>
        <ns4:element name="dailyAmount" type="System.Quantity"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="details" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlan.Goal" baseType="Test.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="status" type="Test.CarePlanGoalStatus"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="concern" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ExtensionDefinition" baseType="Test.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="Test.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="mapping" type="list&lt;Test.ExtensionDefinition.Mapping&gt;"/>
        <ns4:element name="contextType" type="Test.ExtensionContext"/>
        <ns4:element name="context" type="list&lt;System.String&gt;"/>
        <ns4:element name="element" type="list&lt;Test.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NarrativeStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.NarrativeStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition.DueTo" baseType="Test.BackboneElement">
        <ns4:element name="codeableConcept" type="System.Concept"/>
        <ns4:element name="target" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.GroupType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ContactPoint" baseType="Test.Element">
        <ns4:element name="system" type="Test.ContactPointSystem"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="use" type="Test.ContactPointUse"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NamingSystemStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystem.Contact" baseType="Test.BackboneElement">
        <ns4:element name="name" type="Test.HumanName"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ProvenanceEntityRole_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Diagnosis" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="diagnosis" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Note" baseType="Test.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.Measmnt_Principle_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Document" baseType="Test.BackboneElement">
        <ns4:element name="mode" type="Test.DocumentMode"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="profile" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Timing.Repeat" baseType="Test.Element">
        <ns4:element name="frequency" type="System.Integer"/>
        <ns4:element name="when" type="Test.EventTiming"/>
        <ns4:element name="duration" type="System.Decimal"/>
        <ns4:element name="units" type="Test.UnitsOfTime"/>
        <ns4:element name="count" type="System.Integer"/>
        <ns4:element name="end" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Subdetail" baseType="Test.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;Test.ClaimResponse.Adjudication2&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition" baseType="Test.Element">
        <ns4:element name="path" type="System.String"/>
        <ns4:element name="representation" type="list&lt;Test.PropertyRepresentation&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="slicing" type="Test.ElementDefinition.Slicing"/>
        <ns4:element name="short" type="System.String"/>
        <ns4:element name="formal" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="synonym" type="list&lt;System.String&gt;"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="type" type="list&lt;Test.ElementDefinition.Type&gt;"/>
        <ns4:element name="nameReference" type="System.String"/>
        <ns4:element name="meaningWhenMissing" type="System.String"/>
        <ns4:element name="maxLength" type="System.Integer"/>
        <ns4:element name="condition" type="list&lt;Test.id&gt;"/>
        <ns4:element name="constraint" type="list&lt;Test.ElementDefinition.Constraint&gt;"/>
        <ns4:element name="mustSupport" type="System.Boolean"/>
        <ns4:element name="isModifier" type="System.Boolean"/>
        <ns4:element name="isSummary" type="System.Boolean"/>
        <ns4:element name="binding" type="Test.ElementDefinition.Binding"/>
        <ns4:element name="mapping" type="list&lt;Test.ElementDefinition.Mapping&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SupportingDocumentation" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="requestIdentifier" type="Test.Identifier"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="responseIdentifier" type="Test.Identifier"/>
        <ns4:element name="response" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="detail" type="list&lt;Test.SupportingDocumentation.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Concept" baseType="Test.BackboneElement">
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="designation" type="list&lt;Test.ValueSet.Designation&gt;"/>
        <ns4:element name="concept" type="list&lt;Test.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceCertainty_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.FilterOperator" baseType="Test.Element">
        <ns4:element name="value" type="Test.FilterOperator_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.IssueSeverity" baseType="Test.Element">
        <ns4:element name="value" type="Test.IssueSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SlotStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.SlotStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MaritalStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.MaritalStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DataElement.Mapping" baseType="Test.BackboneElement">
        <ns4:element name="uri" type="System.Uri"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="map" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DocumentMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.OperationParameterUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.RiskAssessment" baseType="Test.DomainResource">
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="condition" type="Test.Reference"/>
        <ns4:element name="performer" type="Test.Reference"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="basis" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="prediction" type="list&lt;Test.RiskAssessment.Prediction&gt;"/>
        <ns4:element name="mitigation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DataElement.Binding" baseType="Test.BackboneElement">
        <ns4:element name="isExtensible" type="System.Boolean"/>
        <ns4:element name="conformance" type="Test.BindingConformance"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="valueSet" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DiagnosticReportStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="use" type="Test.Use"/>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:element name="fundsReserve" type="System.Code"/>
        <ns4:element name="enterer" type="Test.Reference"/>
        <ns4:element name="facility" type="Test.Reference"/>
        <ns4:element name="payee" type="Test.OralHealthClaim.Payee"/>
        <ns4:element name="referral" type="Test.Reference"/>
        <ns4:element name="diagnosis" type="list&lt;Test.OralHealthClaim.Diagnosis&gt;"/>
        <ns4:element name="condition" type="list&lt;System.Code&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="coverage" type="list&lt;Test.OralHealthClaim.Coverage&gt;"/>
        <ns4:element name="exception" type="list&lt;System.Code&gt;"/>
        <ns4:element name="school" type="System.String"/>
        <ns4:element name="accident" type="System.DateTime"/>
        <ns4:element name="accidentType" type="System.Code"/>
        <ns4:element name="interventionException" type="list&lt;System.Code&gt;"/>
        <ns4:element name="missingteeth" type="list&lt;Test.OralHealthClaim.Missingteeth&gt;"/>
        <ns4:element name="orthoPlan" type="Test.OralHealthClaim.OrthoPlan"/>
        <ns4:element name="item" type="list&lt;Test.OralHealthClaim.Item&gt;"/>
        <ns4:element name="additionalMaterials" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Availability" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="Test.Reference"/>
        <ns4:element name="planningHorizon" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NutritionOrderStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationPrescriptionStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.MedicationPrescriptionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImmunizationRecommendation.Recommendation" baseType="Test.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="doseNumber" type="System.Integer"/>
        <ns4:element name="forecastStatus" type="System.Concept"/>
        <ns4:element name="dateCriterion" type="list&lt;Test.ImmunizationRecommendation.DateCriterion&gt;"/>
        <ns4:element name="protocol" type="Test.ImmunizationRecommendation.Protocol"/>
        <ns4:element name="supportingImmunization" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="supportingPatientInformation" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ProcedureRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventObjectLifecycle_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.EncounterClass_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConceptMapEquivalence" baseType="Test.Element">
        <ns4:element name="value" type="Test.ConceptMapEquivalence_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Distance" baseType="System.Quantity">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SubscriptionChannelType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DeviceUseRequestStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SampledDataDataType_primitive"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CompositionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition" baseType="Test.DomainResource" retrievable="true" label="Condition" identifier="cqf-condition" primaryCodePath="code">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="asserter" type="Test.Reference"/>
        <ns4:element name="dateAsserted" type="System.DateTime"/>
        <ns4:element name="onsetDateTime" type="System.DateTime"/>
        <ns4:element name="abatementDateTime" type="System.DateTime"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="status" type="Test.ConditionStatus"/>
        <ns4:element name="certainty" type="System.Concept"/>
        <ns4:element name="severity" type="System.Concept"/>
        <ns4:element name="stage" type="Test.Condition.Stage"/>
        <ns4:element name="evidence" type="list&lt;Test.Condition.Evidence&gt;"/>
        <ns4:element name="location" type="list&lt;Test.Condition.Location&gt;"/>
        <ns4:element name="dueTo" type="list&lt;Test.Condition.DueTo&gt;"/>
        <ns4:element name="occurredFollowing" type="list&lt;Test.Condition.OccurredFollowing&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Contract" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="subject" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="applies" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="Test.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="Test.Money"/>
        <ns4:element name="author" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="grantor" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="grantee" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="witness" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="executor" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="notary" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="signer" type="list&lt;Test.Contract.Signer&gt;"/>
        <ns4:element name="term" type="list&lt;Test.Contract.Term&gt;"/>
        <ns4:element name="friendly" type="Test.Attachment"/>
        <ns4:element name="legal" type="Test.Attachment"/>
        <ns4:element name="rule" type="Test.Attachment"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ConstraintSeverity_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.RestfulConformanceMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.RestfulConformanceMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SearchParamType" baseType="Test.Element">
        <ns4:element name="value" type="Test.SearchParamType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.IdentifierUse_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ParticipantRequired_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Condition.Stage" baseType="Test.BackboneElement">
        <ns4:element name="summary" type="System.Concept"/>
        <ns4:element name="assessment" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SupplyStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.SupplyStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.IdentifierUse" baseType="Test.Element">
        <ns4:element name="value" type="Test.IdentifierUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Extension" baseType="Test.Element">
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.QueryOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Specimen.Source" baseType="Test.BackboneElement">
        <ns4:element name="relationship" type="Test.HierarchicalRelationshipType"/>
        <ns4:element name="target" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Questionnaire" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="status" type="Test.QuestionnaireStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="group" type="Test.Questionnaire.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Composition.Section" baseType="Test.BackboneElement">
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="section" type="list&lt;Test.Composition.Section&gt;"/>
        <ns4:element name="content" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ImagingStudy.Series" baseType="Test.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="modality" type="Test.Modality"/>
        <ns4:element name="uid" type="Test.oid"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="availability" type="Test.InstanceAvailability"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="instance" type="list&lt;Test.ImagingStudy.Instance&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Practitioner.Qualification" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="issuer" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationParameterUse" baseType="Test.Element">
        <ns4:element name="value" type="Test.OperationParameterUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceCategory" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Encounter.Participant" baseType="Test.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="individual" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationStatement" baseType="Test.DomainResource" retrievable="true" label="MedicationStatement" identifier="cqf-medicationstatement" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="whenGiven" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="medication" type="Test.Reference"/>
        <ns4:element name="device" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;Test.MedicationStatement.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition.Slicing" baseType="Test.Element">
        <ns4:element name="discriminator" type="list&lt;Test.id&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="ordered" type="System.Boolean"/>
        <ns4:element name="rules" type="Test.SlicingRules"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceComponent" baseType="Test.DomainResource">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="lastSystemChange" type="System.DateTime"/>
        <ns4:element name="source" type="Test.Reference"/>
        <ns4:element name="parent" type="Test.Reference"/>
        <ns4:element name="operationalStatus" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="parameterGroup" type="System.Concept"/>
        <ns4:element name="measurementPrinciple" type="Test.Measmnt_Principle"/>
        <ns4:element name="productionSpecification" type="list&lt;Test.DeviceComponent.ProductionSpecification&gt;"/>
        <ns4:element name="languageCode" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystemStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.NamingSystemStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlanGoalStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.CarePlanGoalStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReference.Service" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="address" type="System.String"/>
        <ns4:element name="parameter" type="list&lt;Test.DocumentReference.Parameter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Use" baseType="Test.Element">
        <ns4:element name="value" type="Test.Use_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.BindingConformance" baseType="Test.Element">
        <ns4:element name="value" type="Test.BindingConformance_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Adjudication" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="Test.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticOrder.Event" baseType="Test.BackboneElement">
        <ns4:element name="status" type="Test.DiagnosticOrderStatus"/>
        <ns4:element name="description" type="System.Concept"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="actor" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Contraindication" baseType="Test.DomainResource">
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="severity" type="Test.code"/>
        <ns4:element name="implicated" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="detail" type="System.String"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="reference" type="System.Uri"/>
        <ns4:element name="mitigation" type="list&lt;Test.Contraindication.Mitigation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Ratio" baseType="Test.Element">
        <ns4:element name="numerator" type="System.Quantity"/>
        <ns4:element name="denominator" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireAnswers.Question" baseType="Test.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="answer" type="list&lt;Test.QuestionnaireAnswers.Answer&gt;"/>
        <ns4:element name="group" type="list&lt;Test.QuestionnaireAnswers.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConstraintSeverity" baseType="Test.Element">
        <ns4:element name="value" type="Test.ConstraintSeverity_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Reversal.Coverage" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="Test.Reference"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Observation.Related" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.ObservationRelationshipType"/>
        <ns4:element name="target" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventAction_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.time" baseType="Test.Element">
        <ns4:element name="value" type="Test.time_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventAction" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventAction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceCriticality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Interaction" baseType="Test.BackboneElement">
        <ns4:element name="code" type="Test.TypeRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.OralDiet" baseType="Test.BackboneElement">
        <ns4:element name="code" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="nutrients" type="list&lt;Test.NutritionOrder.Nutrients&gt;"/>
        <ns4:element name="texture" type="list&lt;Test.NutritionOrder.Texture&gt;"/>
        <ns4:element name="fluidConsistencyType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Payee" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
        <ns4:element name="person" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DataType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Prosthesis" baseType="Test.BackboneElement">
        <ns4:element name="initial" type="System.Boolean"/>
        <ns4:element name="priorDate" type="System.DateTime"/>
        <ns4:element name="priorMaterial" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Bundle" baseType="Test.Resource">
        <ns4:element name="type" type="Test.BundleType"/>
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="total" type="System.Integer"/>
        <ns4:element name="link" type="list&lt;Test.Bundle.Link&gt;"/>
        <ns4:element name="entry" type="list&lt;Test.Bundle.Entry&gt;"/>
        <ns4:element name="signature" type="Test.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConceptMap.DependsOn" baseType="Test.BackboneElement">
        <ns4:element name="element" type="System.Uri"/>
        <ns4:element name="codeSystem" type="System.Uri"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConformanceEventMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.ConformanceEventMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Error" baseType="Test.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="detailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="subdetailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="code" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.LinkType" baseType="Test.Element">
        <ns4:element name="value" type="Test.LinkType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Contraindication.Mitigation" baseType="Test.BackboneElement">
        <ns4:element name="action" type="System.Concept"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NamingSystemIdentifierType" baseType="Test.Element">
        <ns4:element name="value" type="Test.NamingSystemIdentifierType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent.Participant" baseType="Test.BackboneElement">
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reference" type="Test.Reference"/>
        <ns4:element name="userId" type="System.String"/>
        <ns4:element name="altId" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="requestor" type="System.Boolean"/>
        <ns4:element name="media" type="System.Code"/>
        <ns4:element name="network" type="Test.SecurityEvent.Network"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Include" baseType="Test.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="concept" type="list&lt;Test.ValueSet.Concept1&gt;"/>
        <ns4:element name="filter" type="list&lt;Test.ValueSet.Filter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Bundle.Entry" baseType="Test.BackboneElement">
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="status" type="Test.BundleEntryStatus"/>
        <ns4:element name="search" type="System.Uri"/>
        <ns4:element name="score" type="System.Decimal"/>
        <ns4:element name="resource" type="Test.ResourceContainer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.FamilyHistory" baseType="Test.DomainResource" retrievable="true" label="FamilyHistory" identifier="cqf-familyhistory">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="relation" type="list&lt;Test.FamilyHistory.Relation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ListMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.ListMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Specimen" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="source" type="list&lt;Test.Specimen.Source&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="accessionIdentifier" type="Test.Identifier"/>
        <ns4:element name="receivedTime" type="System.DateTime"/>
        <ns4:element name="collection" type="Test.Specimen.Collection"/>
        <ns4:element name="treatment" type="list&lt;Test.Specimen.Treatment&gt;"/>
        <ns4:element name="container" type="list&lt;Test.Specimen.Container&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Narrative" baseType="Test.Element">
        <ns4:element name="status" type="Test.NarrativeStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationKind" baseType="Test.Element">
        <ns4:element name="value" type="Test.MedicationKind_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.FHIRDefinedType" baseType="Test.Element">
        <ns4:element name="value" type="Test.FHIRDefinedType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Profile.Snapshot" baseType="Test.BackboneElement">
        <ns4:element name="element" type="list&lt;Test.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.HierarchicalRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Subscription.Channel" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.SubscriptionChannelType"/>
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="payload" type="System.String"/>
        <ns4:element name="header" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Age" baseType="System.Quantity">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AlertStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Query.Response" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="outcome" type="Test.QueryOutcome"/>
        <ns4:element name="total" type="System.Integer"/>
        <ns4:element name="parameter" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="first" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="previous" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="next" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="last" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="reference" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ResourceVersionPolicy_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventObjectType" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventObjectType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Concept1" baseType="Test.BackboneElement">
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="designation" type="list&lt;Test.ValueSet.Designation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MediaType_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MaritalStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MedicationAdministrationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Item" baseType="Test.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="noteNumber" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;Test.ClaimResponse.Adjudication&gt;"/>
        <ns4:element name="detail" type="list&lt;Test.ClaimResponse.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResourceProfileStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ResourceProfileStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationStatement.Dosage" baseType="Test.BackboneElement">
        <ns4:element name="schedule" type="Test.Timing"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="Test.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="Test.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ResourceType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.Supplement" baseType="Test.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="name" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.TypeRestfulInteraction_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ProcedureRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Security" baseType="Test.BackboneElement">
        <ns4:element name="cors" type="System.Boolean"/>
        <ns4:element name="service" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="certificate" type="list&lt;Test.Conformance.Certificate&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSetStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ValueSetStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationAdministration" baseType="Test.DomainResource" retrievable="true" label="MedicationAdministration" identifier="cqf-medicationadministration" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="status" type="Test.MedicationAdministrationStatus"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="practitioner" type="Test.Reference"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="prescription" type="Test.Reference"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="medication" type="Test.Reference"/>
        <ns4:element name="device" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;Test.MedicationAdministration.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.OrthoPlan" baseType="Test.BackboneElement">
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="examFee" type="Test.Money"/>
        <ns4:element name="diagnosticFee" type="Test.Money"/>
        <ns4:element name="initialPayment" type="Test.Money"/>
        <ns4:element name="durationMonths" type="System.Integer"/>
        <ns4:element name="paymentCount" type="System.Integer"/>
        <ns4:element name="periodicPayment" type="Test.Money"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Eligibility" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="target" type="Test.Reference"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="organization" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Supply" baseType="Test.DomainResource">
        <ns4:element name="kind" type="System.Concept"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="status" type="Test.SupplyStatus"/>
        <ns4:element name="orderedItem" type="Test.Reference"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="dispense" type="list&lt;Test.Supply.Dispense&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceUseRequest" baseType="Test.DomainResource">
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="status" type="Test.DeviceUseRequestStatus"/>
        <ns4:element name="mode" type="Test.DeviceUseRequestMode"/>
        <ns4:element name="device" type="Test.Reference"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="prnReason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="priority" type="Test.DeviceUseRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.SubDetail" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="Test.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="Test.Money"/>
        <ns4:element name="udi" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OrderResponse" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="who" type="Test.Reference"/>
        <ns4:element name="code" type="Test.OrderOutcomeStatus"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="fulfillment" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceUseRequestPriority" baseType="Test.Element">
        <ns4:element name="value" type="Test.DeviceUseRequestPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SampledData" baseType="Test.Element">
        <ns4:element name="origin" type="System.Quantity"/>
        <ns4:element name="period" type="System.Decimal"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="lowerLimit" type="System.Decimal"/>
        <ns4:element name="upperLimit" type="System.Decimal"/>
        <ns4:element name="dimensions" type="System.Integer"/>
        <ns4:element name="data" type="Test.SampledDataDataType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition.Binding" baseType="Test.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="isExtensible" type="System.Boolean"/>
        <ns4:element name="conformance" type="Test.BindingConformance"/>
        <ns4:element name="description" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Encounter.Hospitalization" baseType="Test.BackboneElement">
        <ns4:element name="preAdmissionIdentifier" type="Test.Identifier"/>
        <ns4:element name="origin" type="Test.Reference"/>
        <ns4:element name="admitSource" type="System.Concept"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="accomodation" type="list&lt;Test.Encounter.Accomodation&gt;"/>
        <ns4:element name="diet" type="System.Concept"/>
        <ns4:element name="specialCourtesy" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="specialArrangement" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="destination" type="Test.Reference"/>
        <ns4:element name="dischargeDisposition" type="System.Concept"/>
        <ns4:element name="dischargeDiagnosis" type="Test.Reference"/>
        <ns4:element name="reAdmission" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SlicingRules_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticOrderPriority" baseType="Test.Element">
        <ns4:element name="value" type="Test.DiagnosticOrderPriority_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEvent" baseType="Test.DomainResource">
        <ns4:element name="event" type="Test.SecurityEvent.Event"/>
        <ns4:element name="participant" type="list&lt;Test.SecurityEvent.Participant&gt;"/>
        <ns4:element name="source" type="Test.SecurityEvent.Source"/>
        <ns4:element name="object" type="list&lt;Test.SecurityEvent.Object&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlanActivityStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.CarePlanActivityStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Compose" baseType="Test.BackboneElement">
        <ns4:element name="import" type="list&lt;System.Uri&gt;"/>
        <ns4:element name="include" type="list&lt;Test.ValueSet.Include&gt;"/>
        <ns4:element name="exclude" type="list&lt;Test.ValueSet.Include&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationDispense.Dispense" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="status" type="Test.MedicationDispenseStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="medication" type="Test.Reference"/>
        <ns4:element name="whenPrepared" type="System.DateTime"/>
        <ns4:element name="whenHandedOver" type="System.DateTime"/>
        <ns4:element name="destination" type="Test.Reference"/>
        <ns4:element name="receiver" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="dosage" type="list&lt;Test.MedicationDispense.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.LocationMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.LocationMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationDefinition.Parameter" baseType="Test.BackboneElement">
        <ns4:element name="name" type="Test.code"/>
        <ns4:element name="use" type="Test.OperationParameterUse"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="profile" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QueryOutcome" baseType="Test.Element">
        <ns4:element name="value" type="Test.QueryOutcome_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceCriticality" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceCriticality_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Media" baseType="Test.DomainResource">
        <ns4:element name="type" type="Test.MediaType"/>
        <ns4:element name="subtype" type="System.Concept"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="operator" type="Test.Reference"/>
        <ns4:element name="view" type="System.Concept"/>
        <ns4:element name="deviceName" type="System.String"/>
        <ns4:element name="height" type="System.Integer"/>
        <ns4:element name="width" type="System.Integer"/>
        <ns4:element name="frames" type="System.Integer"/>
        <ns4:element name="duration" type="System.Integer"/>
        <ns4:element name="content" type="Test.Attachment"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DocumentReferenceStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CommunicationRequestStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.CommunicationRequestStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.FamilyHistory.Relation" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="condition" type="list&lt;Test.FamilyHistory.Condition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResourceDataElementStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ResourceDataElementStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Organization" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;Test.Address&gt;"/>
        <ns4:element name="partOf" type="Test.Reference"/>
        <ns4:element name="contact" type="list&lt;Test.Organization.Contact&gt;"/>
        <ns4:element name="location" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceType" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ImagingModality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Contract.Signer" baseType="Test.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="singnature" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Medication.Ingredient" baseType="Test.BackboneElement">
        <ns4:element name="item" type="Test.Reference"/>
        <ns4:element name="amount" type="Test.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Designation" baseType="Test.BackboneElement">
        <ns4:element name="language" type="Test.code"/>
        <ns4:element name="use" type="System.Code"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentRelationshipType" baseType="Test.Element">
        <ns4:element name="value" type="Test.DocumentRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SubscriptionChannelType" baseType="Test.Element">
        <ns4:element name="value" type="Test.SubscriptionChannelType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.TypeRestfulInteraction" baseType="Test.Element">
        <ns4:element name="value" type="Test.TypeRestfulInteraction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Location.Position" baseType="Test.BackboneElement">
        <ns4:element name="longitude" type="System.Decimal"/>
        <ns4:element name="latitude" type="System.Decimal"/>
        <ns4:element name="altitude" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ParticipationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Parameters.Parameter" baseType="Test.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="resource" type="Test.ResourceContainer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.PropertyRepresentation_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AppointmentResponse" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="appointment" type="Test.Reference"/>
        <ns4:element name="participantType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="individual" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="participantStatus" type="Test.ParticipantStatus"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="lastModifiedBy" type="Test.Reference"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.uuid" baseType="Test.Element">
        <ns4:element name="value" type="Test.uuid_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReference.Parameter" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.AllergyIntoleranceCategory_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Additem" baseType="Test.BackboneElement">
        <ns4:element name="sequenceLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="Test.Money"/>
        <ns4:element name="noteNumberLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;Test.ClaimResponse.Adjudication3&gt;"/>
        <ns4:element name="detail" type="list&lt;Test.ClaimResponse.Detail1&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ContactPointUse" baseType="Test.Element">
        <ns4:element name="value" type="Test.ContactPointUse_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.LocationMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationAdministrationStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.MedicationAdministrationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Immunization.Explanation" baseType="Test.BackboneElement">
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="refusalReason" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ProcedureRequestStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DataElement" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="status" type="Test.ResourceDataElementStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="category" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="question" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="synonym" type="list&lt;System.String&gt;"/>
        <ns4:element name="type" type="Test.code"/>
        <ns4:element name="maxLength" type="System.Integer"/>
        <ns4:element name="units" type="System.Concept"/>
        <ns4:element name="binding" type="Test.DataElement.Binding"/>
        <ns4:element name="mapping" type="list&lt;Test.DataElement.Mapping&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.FilterOperator_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.EnteralFormula" baseType="Test.BackboneElement">
        <ns4:element name="baseFormulaType" type="System.Concept"/>
        <ns4:element name="additiveType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="caloricDensity" type="list&lt;System.Quantity&gt;"/>
        <ns4:element name="routeofAdministration" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="rate" type="list&lt;System.Quantity&gt;"/>
        <ns4:element name="baseFormulaName" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ExtensionContext_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceComponent.ProductionSpecification" baseType="Test.BackboneElement">
        <ns4:element name="specType" type="System.Concept"/>
        <ns4:element name="componentId" type="Test.Identifier"/>
        <ns4:element name="productionSpec" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticReportStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.DiagnosticReportStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CommunicationRequestStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.SearchParam" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="System.Uri"/>
        <ns4:element name="type" type="Test.SearchParamType"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="target" type="list&lt;Test.code&gt;"/>
        <ns4:element name="chain" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Profile" baseType="Test.DomainResource">
        <ns4:element name="url" type="System.Uri"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="Test.ResourceProfileStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="fhirVersion" type="Test.id"/>
        <ns4:element name="mapping" type="list&lt;Test.Profile.Mapping&gt;"/>
        <ns4:element name="type" type="Test.code"/>
        <ns4:element name="base" type="System.Uri"/>
        <ns4:element name="snapshot" type="Test.Profile.Snapshot"/>
        <ns4:element name="differential" type="Test.Profile.Snapshot"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationPrescription.DosageInstruction" baseType="Test.BackboneElement">
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="rate" type="Test.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="Test.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Item" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="Test.Reference"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="serviceDate" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="Test.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="Test.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="subsite" type="list&lt;System.Code&gt;"/>
        <ns4:element name="modifier" type="list&lt;System.Code&gt;"/>
        <ns4:element name="detail" type="list&lt;Test.OralHealthClaim.Detail&gt;"/>
        <ns4:element name="prosthesis" type="Test.OralHealthClaim.Prosthesis"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Group.Characteristic" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="exclude" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OrderOutcomeStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.OrderOutcomeStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HierarchicalRelationshipType" baseType="Test.Element">
        <ns4:element name="value" type="Test.HierarchicalRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.BundleEntryStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.BundleEntryStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ParticipantStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ParticipantStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProcedureRequest" baseType="Test.DomainResource" retrievable="true" label="ProcedureRequest" identifier="cqf-procedurerequest" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="performer" type="Test.Reference"/>
        <ns4:element name="status" type="Test.ProcedureRequestStatus"/>
        <ns4:element name="mode" type="Test.ProcedureRequestMode"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="orderer" type="Test.Reference"/>
        <ns4:element name="priority" type="Test.ProcedureRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.InstanceAvailability_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MessageEvent_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NamingSystemType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.EncounterClass" baseType="Test.Element">
        <ns4:element name="value" type="Test.EncounterClass_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.Nutrients" baseType="Test.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DataType" baseType="Test.Element">
        <ns4:element name="value" type="Test.DataType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.CarePlanActivityStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Event" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="category" type="Test.MessageSignificanceCategory"/>
        <ns4:element name="mode" type="Test.ConformanceEventMode"/>
        <ns4:element name="protocol" type="list&lt;System.Code&gt;"/>
        <ns4:element name="focus" type="Test.code"/>
        <ns4:element name="request" type="Test.Reference"/>
        <ns4:element name="response" type="Test.Reference"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Coverage" baseType="Test.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="Test.Reference"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
        <ns4:element name="preauthref" type="list&lt;System.String&gt;"/>
        <ns4:element name="claimResponse" type="Test.Reference"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Bundle.Link" baseType="Test.BackboneElement">
        <ns4:element name="relation" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.LocationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Implementation" baseType="Test.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="url" type="System.Uri"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.List.Entry" baseType="Test.BackboneElement">
        <ns4:element name="flag" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="deleted" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="item" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Range" baseType="Test.Element">
        <ns4:element name="low" type="System.Quantity"/>
        <ns4:element name="high" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.EncounterState" baseType="Test.Element">
        <ns4:element name="value" type="Test.EncounterState_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProcedureRelationshipType" baseType="Test.Element">
        <ns4:element name="value" type="Test.ProcedureRelationshipType_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.QuestionnaireAnswers.Answer" baseType="Test.BackboneElement"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Certificate" baseType="Test.BackboneElement">
        <ns4:element name="type" type="Test.code"/>
        <ns4:element name="blob" type="Test.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.LocationStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.LocationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HealthcareService.AvailableTime" baseType="Test.BackboneElement">
        <ns4:element name="daysOfWeek" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="allDay" type="System.Boolean"/>
        <ns4:element name="availableStartTime" type="System.DateTime"/>
        <ns4:element name="availableEndTime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Medication.Content" baseType="Test.BackboneElement">
        <ns4:element name="item" type="Test.Reference"/>
        <ns4:element name="amount" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ObservationStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Address" baseType="Test.Element">
        <ns4:element name="use" type="Test.AddressUse"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="line" type="list&lt;System.String&gt;"/>
        <ns4:element name="city" type="System.String"/>
        <ns4:element name="state" type="System.String"/>
        <ns4:element name="postalCode" type="System.String"/>
        <ns4:element name="country" type="System.String"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventOutcome_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceUseStatement" baseType="Test.DomainResource">
        <ns4:element name="bodySite" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="whenUsed" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="device" type="Test.Reference"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Count" baseType="System.Quantity">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Query" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="parameter" type="list&lt;Test.Extension&gt;"/>
        <ns4:element name="response" type="Test.Query.Response"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageSignificanceCategory" baseType="Test.Element">
        <ns4:element name="value" type="Test.MessageSignificanceCategory_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="System.QuantityComparator_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Operation" baseType="Test.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Binary" baseType="Test.Resource">
        <ns4:element name="contentType" type="Test.code"/>
        <ns4:element name="content" type="Test.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlan" baseType="Test.DomainResource" retrievable="true" label="CarePlan" identifier="cqf-careplan" primaryCodePath="concern.code">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="status" type="Test.CarePlanStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="modified" type="System.DateTime"/>
        <ns4:element name="concern" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="participant" type="list&lt;Test.CarePlan.Participant&gt;"/>
        <ns4:element name="goal" type="list&lt;Test.CarePlan.Goal&gt;"/>
        <ns4:element name="activity" type="list&lt;Test.CarePlan.Activity&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReference.RelatesTo" baseType="Test.BackboneElement">
        <ns4:element name="code" type="Test.DocumentRelationshipType"/>
        <ns4:element name="target" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SubscriptionStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.Modality_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SystemRestfulInteraction" baseType="Test.Element">
        <ns4:element name="value" type="Test.SystemRestfulInteraction_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AnswerFormat" baseType="Test.Element">
        <ns4:element name="value" type="Test.AnswerFormat_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="purpose" type="System.String"/>
        <ns4:element name="immutable" type="System.Boolean"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="Test.ValueSetStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="extensible" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="stableDate" type="System.DateTime"/>
        <ns4:element name="define" type="Test.ValueSet.Define"/>
        <ns4:element name="compose" type="Test.ValueSet.Compose"/>
        <ns4:element name="expansion" type="Test.ValueSet.Expansion"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance.Interaction1" baseType="Test.BackboneElement">
        <ns4:element name="code" type="Test.SystemRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition.Type" baseType="Test.Element">
        <ns4:element name="code" type="Test.code"/>
        <ns4:element name="profile" type="System.Uri"/>
        <ns4:element name="aggregation" type="list&lt;Test.AggregationMode&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Conformance" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="status" type="Test.ConformanceStatementStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="software" type="Test.Conformance.Software"/>
        <ns4:element name="implementation" type="Test.Conformance.Implementation"/>
        <ns4:element name="fhirVersion" type="Test.id"/>
        <ns4:element name="acceptUnknown" type="System.Boolean"/>
        <ns4:element name="format" type="list&lt;Test.code&gt;"/>
        <ns4:element name="profile" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="rest" type="list&lt;Test.Conformance.Rest&gt;"/>
        <ns4:element name="messaging" type="list&lt;Test.Conformance.Messaging&gt;"/>
        <ns4:element name="document" type="list&lt;Test.Conformance.Document&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConceptMap" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="Test.ValueSetStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="element" type="list&lt;Test.ConceptMap.Element&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DataAbsentReason_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.FHIRDefinedType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder" baseType="Test.DomainResource" retrievable="true" label="NutritionOrder" identifier="cqf-nutritionorder" primaryCodePath="item[].oralDiet.type|item[].supplement.type|item[].enteralFormula.baseFormulaType|item[].enteralFormula.additiveType">
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="orderer" type="Test.Reference"/>
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="allergyIntolerance" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="foodPreferenceModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="excludeFoodModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="item" type="list&lt;Test.NutritionOrder.Item&gt;"/>
        <ns4:element name="status" type="Test.NutritionOrderStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SpecialValues_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Money" baseType="System.Quantity">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="System.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="code" type="Test.code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationAdministration.Dosage" baseType="Test.BackboneElement">
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="Test.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="Test.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Patient" baseType="Test.DomainResource" retrievable="true" label="Patient" identifier="cqf-patient">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="name" type="list&lt;Test.HumanName&gt;"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="address" type="list&lt;Test.Address&gt;"/>
        <ns4:element name="maritalStatus" type="System.Concept"/>
        <ns4:element name="photo" type="list&lt;Test.Attachment&gt;"/>
        <ns4:element name="contact" type="list&lt;Test.Patient.Contact&gt;"/>
        <ns4:element name="animal" type="Test.Patient.Animal"/>
        <ns4:element name="communication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="careProvider" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="managingOrganization" type="Test.Reference"/>
        <ns4:element name="link" type="list&lt;Test.Patient.Link&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ClaimResponse.Detail1" baseType="Test.BackboneElement">
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="Test.Money"/>
        <ns4:element name="adjudication" type="list&lt;Test.ClaimResponse.Adjudication4&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationPrescription" baseType="Test.DomainResource" retrievable="true" label="MedicationPrescription" identifier="cqf-medicationprescription" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="dateWritten" type="System.DateTime"/>
        <ns4:element name="status" type="Test.MedicationPrescriptionStatus"/>
        <ns4:element name="patient" type="Test.Reference"/>
        <ns4:element name="prescriber" type="Test.Reference"/>
        <ns4:element name="encounter" type="Test.Reference"/>
        <ns4:element name="medication" type="Test.Reference"/>
        <ns4:element name="dosageInstruction" type="list&lt;Test.MedicationPrescription.DosageInstruction&gt;"/>
        <ns4:element name="dispense" type="Test.MedicationPrescription.Dispense"/>
        <ns4:element name="substitution" type="Test.MedicationPrescription.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ElementDefinition.Mapping" baseType="Test.Element">
        <ns4:element name="identity" type="Test.id"/>
        <ns4:element name="map" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Specimen.Container" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="capacity" type="System.Quantity"/>
        <ns4:element name="specimenQuantity" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="System.Uri"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ValueSet.Define" baseType="Test.BackboneElement">
        <ns4:element name="system" type="System.Uri"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="caseSensitive" type="System.Boolean"/>
        <ns4:element name="concept" type="list&lt;Test.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ObservationStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ObservationStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.AllergyIntoleranceCertainty" baseType="Test.Element">
        <ns4:element name="value" type="Test.AllergyIntoleranceCertainty_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageHeader" baseType="Test.DomainResource">
        <ns4:element name="identifier" type="Test.id"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="event" type="System.Code"/>
        <ns4:element name="response" type="Test.MessageHeader.Response"/>
        <ns4:element name="source" type="Test.MessageHeader.Source"/>
        <ns4:element name="destination" type="list&lt;Test.MessageHeader.Destination&gt;"/>
        <ns4:element name="enterer" type="Test.Reference"/>
        <ns4:element name="author" type="Test.Reference"/>
        <ns4:element name="receiver" type="Test.Reference"/>
        <ns4:element name="responsible" type="Test.Reference"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="data" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OperationOutcome" baseType="Test.DomainResource">
        <ns4:element name="issue" type="list&lt;Test.OperationOutcome.Issue&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.NameUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ConditionStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ConditionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MedicationPrescription.Dispense" baseType="Test.BackboneElement">
        <ns4:element name="medication" type="Test.Reference"/>
        <ns4:element name="validityPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="numberOfRepeatsAllowed" type="System.Integer"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="expectedSupplyDuration" type="Test.Duration"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ResourceVersionPolicy" baseType="Test.Element">
        <ns4:element name="value" type="Test.ResourceVersionPolicy_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ReferralStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.ReferralStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ConceptMapEquivalence_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Element">
        <ns4:element name="id" type="Test.id_primitive"/>
        <ns4:element name="extension" type="list&lt;Test.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ParticipantRequired" baseType="Test.Element">
        <ns4:element name="value" type="Test.ParticipantRequired_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.NutritionOrder.Item" baseType="Test.BackboneElement">
        <ns4:element name="isInEffect" type="System.Boolean"/>
        <ns4:element name="oralDiet" type="Test.NutritionOrder.OralDiet"/>
        <ns4:element name="supplement" type="Test.NutritionOrder.Supplement"/>
        <ns4:element name="enteralFormula" type="Test.NutritionOrder.EnteralFormula"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.id" baseType="Test.Element">
        <ns4:element name="value" type="Test.id_primitive"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.time_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DocumentReference.Context" baseType="Test.BackboneElement">
        <ns4:element name="event" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="facilityType" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.MedicationDispenseStatus_list"/>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ContactPointUse_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticOrder.Item" baseType="Test.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="specimen" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="bodySite" type="System.Concept"/>
        <ns4:element name="status" type="Test.DiagnosticOrderStatus"/>
        <ns4:element name="event" type="list&lt;Test.DiagnosticOrder.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.EncounterState_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DeviceUseRequestMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.DeviceUseRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.HealthcareService.NotAvailableTime" baseType="Test.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="startDate" type="System.DateTime"/>
        <ns4:element name="endDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Supply.Dispense" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="status" type="Test.SupplyDispenseStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="suppliedItem" type="Test.Reference"/>
        <ns4:element name="supplier" type="Test.Reference"/>
        <ns4:element name="whenPrepared" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="whenHandedOver" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="destination" type="Test.Reference"/>
        <ns4:element name="receiver" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Coverage" baseType="Test.DomainResource">
        <ns4:element name="issuer" type="Test.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="group" type="System.String"/>
        <ns4:element name="plan" type="System.String"/>
        <ns4:element name="subplan" type="System.String"/>
        <ns4:element name="dependent" type="System.Integer"/>
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="subscriber" type="Test.Reference"/>
        <ns4:element name="network" type="Test.Identifier"/>
        <ns4:element name="contract" type="list&lt;Test.Reference&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.MessageHeader.Response" baseType="Test.BackboneElement">
        <ns4:element name="identifier" type="Test.id"/>
        <ns4:element name="code" type="Test.ResponseType"/>
        <ns4:element name="details" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.OralHealthClaim.Missingteeth" baseType="Test.BackboneElement">
        <ns4:element name="tooth" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="extractiondate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventObjectRole" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventObjectRole_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.uuid_primitive"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.DiagnosticReport" baseType="Test.DomainResource" retrievable="true" label="DiagnosticReport" identifier="cqf-diagnosticreport" primaryCodePath="name">
        <ns4:element name="name" type="System.Concept"/>
        <ns4:element name="status" type="Test.DiagnosticReportStatus"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="subject" type="Test.Reference"/>
        <ns4:element name="performer" type="Test.Reference"/>
        <ns4:element name="identifier" type="Test.Identifier"/>
        <ns4:element name="requestDetail" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="specimen" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="result" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="imagingStudy" type="list&lt;Test.Reference&gt;"/>
        <ns4:element name="image" type="list&lt;Test.DiagnosticReport.Image&gt;"/>
        <ns4:element name="conclusion" type="System.String"/>
        <ns4:element name="codedDiagnosis" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="presentedForm" type="list&lt;Test.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SubscriptionStatus" baseType="Test.Element">
        <ns4:element name="value" type="Test.SubscriptionStatus_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DeviceUseRequestMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.SecurityEventObjectLifecycle" baseType="Test.Element">
        <ns4:element name="value" type="Test.SecurityEventObjectLifecycle_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Encounter.Accomodation" baseType="Test.BackboneElement">
        <ns4:element name="bed" type="Test.Reference"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.ListMode_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CarePlan.Participant" baseType="Test.BackboneElement">
        <ns4:element name="role" type="System.Concept"/>
        <ns4:element name="member" type="Test.Reference"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.CommunicationRequestMode" baseType="Test.Element">
        <ns4:element name="value" type="Test.CommunicationRequestMode_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.DocumentRelationshipType_list"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.Location" baseType="Test.DomainResource" retrievable="true" label="Location" identifier="cqf-location" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;Test.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;Test.ContactPoint&gt;"/>
        <ns4:element name="address" type="Test.Address"/>
        <ns4:element name="physicalType" type="System.Concept"/>
        <ns4:element name="position" type="Test.Location.Position"/>
        <ns4:element name="managingOrganization" type="Test.Reference"/>
        <ns4:element name="status" type="Test.LocationStatus"/>
        <ns4:element name="partOf" type="Test.Reference"/>
        <ns4:element name="mode" type="Test.LocationMode"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Test.ProvenanceEntityRole" baseType="Test.Element">
        <ns4:element name="value" type="Test.ProvenanceEntityRole_list"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="Test.SecurityEventObjectType_list"/>
</ns4:modelInfo>''';