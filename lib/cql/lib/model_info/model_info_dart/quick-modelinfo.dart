const quickmodelinfo = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QUICK" url="http://hl7.org/fhir" targetQualifier="quick" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               patientClassName="QUICK.Patient" patientClassIdentifier="patient-qicore-qicore-patient" patientBirthDatePropertyName="birthDate" schemaLocation="http://org.hl7.fhir quick.xsd">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="detail" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Link" baseType="QUICK.BackboneElement">
        <ns4:element name="other" type="System.Any"/>
        <ns4:element name="type" type="QUICK.LinkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SpecialValues" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AggregationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrderStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntolerance" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="allergyintolerance-qicore-qicore-allergyintolerance" primaryCodePath="substance">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="recordedDate" type="System.DateTime"/>
        <ns4:element name="recorder" type="System.Any"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="reporter" type="System.Any"/>
        <ns4:element name="substance" type="System.Concept"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="criticality" type="QUICK.AllergyIntoleranceCriticality"/>
        <ns4:element name="type" type="QUICK.AllergyIntoleranceType"/>
        <ns4:element name="category" type="QUICK.AllergyIntoleranceCategory"/>
        <ns4:element name="lastOccurence" type="System.DateTime"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="event" type="list&lt;QUICK.AllergyIntolerance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Timing" baseType="QUICK.Element">
        <ns4:element name="event" type="list&lt;System.DateTime&gt;"/>
        <ns4:element name="repeat" type="QUICK.Timing.Repeat"/>
        <ns4:element name="code" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Order.When" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="schedule" type="QUICK.Timing"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EpisodeOfCare" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.EpisodeOfCareStatus"/>
        <ns4:element name="statusHistory" type="list&lt;QUICK.EpisodeOfCare.StatusHistory&gt;"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="managingOrganization" type="System.Any"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="condition" type="list&lt;System.Any&gt;"/>
        <ns4:element name="referralRequest" type="list&lt;System.Any&gt;"/>
        <ns4:element name="careManager" type="System.Any"/>
        <ns4:element name="careTeam" type="list&lt;QUICK.EpisodeOfCare.CareTeam&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetricCalibrationType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="medication-qicore-qicore-medication" primaryCodePath="code">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="isBrand" type="System.Boolean"/>
        <ns4:element name="manufacturer" type="System.Any"/>
        <ns4:element name="kind" type="QUICK.MedicationKind"/>
        <ns4:element name="product" type="QUICK.Medication.Product"/>
        <ns4:element name="package" type="QUICK.Medication.Package"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Source" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="software" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="contact" type="QUICK.ContactPoint"/>
        <ns4:element name="endpoint" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.NotAvailable" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="during" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequest.BodySite" baseType="QUICK.BackboneElement">
        <ns4:element name="siteCodeableConcept" type="System.Concept"/>
        <ns4:element name="siteReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FamilyMemberHistory.Condition" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="onsetAge" type="QUICK.Age"/>
        <ns4:element name="onsetRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="onsetString" type="System.String"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EnrollmentResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Batch" baseType="QUICK.BackboneElement">
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="expirationDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.IdentityAssuranceLevel" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.List" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="source" type="System.Any"/>
        <ns4:element name="status" type="QUICK.ListStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="orderedBy" type="System.Concept"/>
        <ns4:element name="mode" type="QUICK.ListMode"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="entry" type="list&lt;QUICK.List.Entry&gt;"/>
        <ns4:element name="emptyReason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RiskAssessment.Prediction" baseType="QUICK.BackboneElement">
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="probabilityDecimal" type="System.Decimal"/>
        <ns4:element name="probabilityRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="probabilityCodeableConcept" type="System.Concept"/>
        <ns4:element name="relativeRisk" type="System.Decimal"/>
        <ns4:element name="whenPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="whenRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="rationale" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.base64Binary" baseType="QUICK.Element">
        <ns4:element name="value" type="xs.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.Protocol" baseType="QUICK.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="System.Any"/>
        <ns4:element name="series" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationKind" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.ServiceType" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElementSpecificity" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EventTiming" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Filter" baseType="QUICK.BackboneElement">
        <ns4:element name="property" type="System.String"/>
        <ns4:element name="op" type="QUICK.FilterOperator"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Actor" baseType="QUICK.BackboneElement">
        <ns4:element name="entity" type="System.Any"/>
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Appointment.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="System.Any"/>
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
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Collection" baseType="QUICK.BackboneElement">
        <ns4:element name="collector" type="System.Any"/>
        <ns4:element name="comment" type="list&lt;System.String&gt;"/>
        <ns4:element name="collectedDateTime" type="System.DateTime"/>
        <ns4:element name="collectedPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="bodySiteCodeableConcept" type="System.Concept"/>
        <ns4:element name="bodySiteReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.Performer" baseType="QUICK.BackboneElement">
        <ns4:element name="person" type="System.Any"/>
        <ns4:element name="role" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetricCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetricColor" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConformanceUseContext" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem.UniqueId" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.NamingSystemIdentifierType"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="preferred" type="System.Boolean"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RelatedPerson" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="relatedperson-qicore-qicore-relatedperson" primaryCodePath="relationship">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="encounter-qicore-qicore-encounter" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.EncounterState"/>
        <ns4:element name="statusHistory" type="list&lt;QUICK.Encounter.StatusHistory&gt;"/>
        <ns4:element name="class" type="System.String"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="episodeOfCare" type="System.Any"/>
        <ns4:element name="incomingReferralRequest" type="list&lt;System.Any&gt;"/>
        <ns4:element name="participant" type="list&lt;QUICK.Encounter.Participant&gt;"/>
        <ns4:element name="fulfills" type="System.Any"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="length" type="QUICK.Duration"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Any&gt;"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="hospitalization" type="QUICK.Encounter.Hospitalization"/>
        <ns4:element name="location" type="list&lt;QUICK.Encounter.Location&gt;"/>
        <ns4:element name="serviceProvider" type="System.Any"/>
        <ns4:element name="partOf" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Network" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="QUICK.AuditEventParticipantNetworkType"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense.DosageInstruction" baseType="QUICK.BackboneElement">
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="scheduleDateTime" type="System.DateTime"/>
        <ns4:element name="schedulePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="scheduleTiming" type="QUICK.Timing"/>
        <ns4:element name="asNeededBoolean" type="System.Boolean"/>
        <ns4:element name="asNeededCodeableConcept" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="doseRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="QUICK.NamingSystemType"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="country" type="System.String"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="responsible" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="usage" type="System.String"/>
        <ns4:element name="uniqueId" type="list&lt;QUICK.NamingSystem.UniqueId&gt;"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.NamingSystem.Contact&gt;"/>
        <ns4:element name="replacedBy" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExplanationOfBenefit" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Activity" baseType="QUICK.BackboneElement">
        <ns4:element name="actionResulting" type="list&lt;System.Any&gt;"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="reference" type="System.Any"/>
        <ns4:element name="detail" type="QUICK.CarePlan.Detail"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuantityComparator" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationReliability" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Group" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="group" type="list&lt;QUICK.QuestionnaireAnswers.Group&gt;"/>
        <ns4:element name="question" type="list&lt;QUICK.QuestionnaireAnswers.Question&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Texture" baseType="QUICK.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
        <ns4:element name="foodType" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.GroupType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Actor1" baseType="QUICK.BackboneElement">
        <ns4:element name="entity" type="System.Any"/>
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Messaging" baseType="QUICK.BackboneElement">
        <ns4:element name="endpoint" type="System.String"/>
        <ns4:element name="reliableCache" type="System.Integer"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="event" type="list&lt;QUICK.Conformance.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationStatementStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation.ReferenceRange" baseType="QUICK.BackboneElement">
        <ns4:element name="low" type="System.Quantity"/>
        <ns4:element name="high" type="System.Quantity"/>
        <ns4:element name="meaning" type="System.Concept"/>
        <ns4:element name="age" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequestStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SlicingRules" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Subscription" baseType="QUICK.DomainResource">
        <ns4:element name="criteria" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="reason" type="System.String"/>
        <ns4:element name="status" type="QUICK.SubscriptionStatus"/>
        <ns4:element name="error" type="System.String"/>
        <ns4:element name="channel" type="QUICK.Subscription.Channel"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="tag" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.Related" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="ref" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy.Instance" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="sopclass" type="System.String"/>
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="content" type="list&lt;QUICK.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Measmnt_Principle" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystemType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Evidence" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="detail" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Nutrient" baseType="QUICK.BackboneElement">
        <ns4:element name="modifier" type="System.Concept"/>
        <ns4:element name="amount" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.OccurredFollowing" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="target" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Parameters.Part" baseType="QUICK.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueInteger" type="System.Integer"/>
        <ns4:element name="valueDecimal" type="System.Decimal"/>
        <ns4:element name="valueBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="valueInstant" type="System.DateTime"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueUri" type="System.String"/>
        <ns4:element name="valueDate" type="System.DateTime"/>
        <ns4:element name="valueDateTime" type="System.DateTime"/>
        <ns4:element name="valueTime" type="System.Time"/>
        <ns4:element name="valueCode" type="System.String"/>
        <ns4:element name="valueOid" type="System.String"/>
        <ns4:element name="valueUuid" type="QUICK.uuid"/>
        <ns4:element name="valueId" type="System.String"/>
        <ns4:element name="valueUnsignedInt" type="System.Integer"/>
        <ns4:element name="valuePositiveInt" type="System.Integer"/>
        <ns4:element name="valueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="valueCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueCoding" type="System.Code"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="valuePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="valueRatio" type="QUICK.Ratio"/>
        <ns4:element name="valueReference" type="System.Any"/>
        <ns4:element name="valueSampledData" type="QUICK.SampledData"/>
        <ns4:element name="valueSignature" type="QUICK.Signature"/>
        <ns4:element name="valueHumanName" type="QUICK.HumanName"/>
        <ns4:element name="valueAddress" type="QUICK.Address"/>
        <ns4:element name="valueContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="valueTiming" type="QUICK.Timing"/>
        <ns4:element name="valueMeta" type="QUICK.Meta"/>
        <ns4:element name="resource" type="QUICK.ResourceContainer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ExtensionContext" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FlagStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.GoalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Practitioner" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="practitioner-qicore-qicore-practitioner" primaryCodePath="practitionerRole.role">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="practitionerRole" type="list&lt;QUICK.Practitioner.PractitionerRole&gt;"/>
        <ns4:element name="qualification" type="list&lt;QUICK.Practitioner.Qualification&gt;"/>
        <ns4:element name="communication" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Resource" baseType="System.Any">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="meta" type="QUICK.Meta"/>
        <ns4:element name="implicitRules" type="System.String"/>
        <ns4:element name="language" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Product" baseType="QUICK.BackboneElement">
        <ns4:element name="form" type="System.Concept"/>
        <ns4:element name="ingredient" type="list&lt;QUICK.Medication.Ingredient&gt;"/>
        <ns4:element name="batch" type="list&lt;QUICK.Medication.Batch&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Communication.Payload" baseType="QUICK.BackboneElement">
        <ns4:element name="contentString" type="System.String"/>
        <ns4:element name="contentAttachment" type="QUICK.Attachment"/>
        <ns4:element name="contentReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.InstanceAvailability" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OrderStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Animal" baseType="QUICK.BackboneElement">
        <ns4:element name="species" type="System.Concept"/>
        <ns4:element name="breed" type="System.Concept"/>
        <ns4:element name="genderStatus" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.RelatedItem" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.ProcedureRelationshipType"/>
        <ns4:element name="target" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Group" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="type" type="QUICK.GroupType"/>
        <ns4:element name="actual" type="System.Boolean"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="quantity" type="System.Integer"/>
        <ns4:element name="characteristic" type="list&lt;QUICK.Group.Characteristic&gt;"/>
        <ns4:element name="member" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Modality" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPointSystem" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.ValuedItem1" baseType="QUICK.BackboneElement">
        <ns4:element name="entityCodeableConcept" type="System.Concept"/>
        <ns4:element name="entityReference" type="System.Any"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="effectiveTime" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Substance.Instance" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="payeeType" type="System.Code"/>
        <ns4:element name="item" type="list&lt;QUICK.ClaimResponse.Item&gt;"/>
        <ns4:element name="addItem" type="list&lt;QUICK.ClaimResponse.AddItem&gt;"/>
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
        <ns4:element name="coverage" type="list&lt;QUICK.ClaimResponse.Coverage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Contains" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="contains" type="list&lt;QUICK.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalImpressionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinition.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventOutcome" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CompositionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchParameter" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.SearchParameter.Contact&gt;"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="base" type="System.String"/>
        <ns4:element name="type" type="QUICK.SearchParamType"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
        <ns4:element name="target" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Coverage" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="System.Any"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
        <ns4:element name="preAuthRef" type="list&lt;System.String&gt;"/>
        <ns4:element name="claimResponse" type="System.Any"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RemittanceOutcome" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Diagnosis" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="diagnosis" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.DateCriterion" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="value" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Location" baseType="QUICK.BackboneElement">
        <ns4:element name="siteCodeableConcept" type="System.Concept"/>
        <ns4:element name="siteReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance.Entity" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="QUICK.ProvenanceEntityRole"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="reference" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="agent" type="QUICK.Provenance.Agent"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EligibilityRequest" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference" baseType="QUICK.DomainResource">
        <ns4:element name="masterIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="format" type="list&lt;System.String&gt;"/>
        <ns4:element name="author" type="list&lt;System.Any&gt;"/>
        <ns4:element name="custodian" type="System.Any"/>
        <ns4:element name="authenticator" type="System.Any"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="indexed" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.DocumentReferenceStatus"/>
        <ns4:element name="docStatus" type="System.Concept"/>
        <ns4:element name="relatesTo" type="list&lt;QUICK.DocumentReference.RelatesTo&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="confidentiality" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="content" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="context" type="QUICK.DocumentReference.Context"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EncounterLocationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinition.Mapping" baseType="QUICK.BackboneElement">
        <ns4:element name="identity" type="System.String"/>
        <ns4:element name="uri" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
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
        <ns4:element name="additive" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EnrollmentRequest" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="coverage" type="System.Any"/>
        <ns4:element name="relationship" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Attester" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="list&lt;QUICK.CompositionAttestationMode&gt;"/>
        <ns4:element name="time" type="System.DateTime"/>
        <ns4:element name="party" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReport.Image" baseType="QUICK.BackboneElement">
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="link" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="medicationdispense-qicore-qicore-medicationdispense" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.MedicationDispenseStatus"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="dispenser" type="System.Any"/>
        <ns4:element name="authorizingPrescription" type="list&lt;System.Any&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="daysSupply" type="System.Quantity"/>
        <ns4:element name="medication" type="System.Any"/>
        <ns4:element name="whenPrepared" type="System.DateTime"/>
        <ns4:element name="whenHandedOver" type="System.DateTime"/>
        <ns4:element name="destination" type="System.Any"/>
        <ns4:element name="receiver" type="list&lt;System.Any&gt;"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="dosageInstruction" type="list&lt;QUICK.MedicationDispense.DosageInstruction&gt;"/>
        <ns4:element name="substitution" type="QUICK.MedicationDispense.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ReferralRequest" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="referralrequest-qicore-qicore-referralrequest" primaryCodePath="type">
        <ns4:element name="status" type="QUICK.ReferralStatus"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="specialty" type="System.Concept"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="requester" type="System.Any"/>
        <ns4:element name="recipient" type="list&lt;System.Any&gt;"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="dateSent" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="serviceRequested" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="supportingInformation" type="list&lt;System.Any&gt;"/>
        <ns4:element name="fulfillmentTime" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalBaseGender" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.BodySite" baseType="QUICK.BackboneElement">
        <ns4:element name="siteCodeableConcept" type="System.Concept"/>
        <ns4:element name="siteReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Term" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="applies" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subType" type="System.Concept"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="action" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actionReason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="list&lt;QUICK.Contract.Actor1&gt;"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="valuedItem" type="list&lt;QUICK.Contract.ValuedItem1&gt;"/>
        <ns4:element name="group" type="list&lt;QUICK.Contract.Term&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinition" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="useContext" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.StructureDefinition.Contact&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="fhirVersion" type="System.String"/>
        <ns4:element name="mapping" type="list&lt;QUICK.StructureDefinition.Mapping&gt;"/>
        <ns4:element name="type" type="QUICK.StructureDefinitionType"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="contextType" type="QUICK.ExtensionContext"/>
        <ns4:element name="context" type="list&lt;System.String&gt;"/>
        <ns4:element name="base" type="System.String"/>
        <ns4:element name="snapshot" type="QUICK.StructureDefinition.Snapshot"/>
        <ns4:element name="differential" type="QUICK.StructureDefinition.Differential"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.VisionPrescription" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="dateWritten" type="System.DateTime"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="prescriber" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="reasonCodeableConcept" type="System.Concept"/>
        <ns4:element name="reasonReference" type="System.Any"/>
        <ns4:element name="dispense" type="list&lt;QUICK.VisionPrescription.Dispense&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EligibilityResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResponseType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.ValuedItem" baseType="QUICK.BackboneElement">
        <ns4:element name="entityCodeableConcept" type="System.Concept"/>
        <ns4:element name="entityReference" type="System.Any"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="effectiveTime" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Practitioner.PractitionerRole" baseType="QUICK.BackboneElement">
        <ns4:element name="managingOrganization" type="System.Any"/>
        <ns4:element name="role" type="System.Concept"/>
        <ns4:element name="specialty" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="location" type="list&lt;System.Any&gt;"/>
        <ns4:element name="healthcareService" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.Map" baseType="QUICK.BackboneElement">
        <ns4:element name="codeSystem" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="equivalence" type="QUICK.ConceptMapEquivalence"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="product" type="list&lt;QUICK.ConceptMap.DependsOn&gt;"/>
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
        <ns4:element name="documentMailbox" type="list&lt;System.String&gt;"/>
        <ns4:element name="compartment" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Resource" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="profile" type="System.Any"/>
        <ns4:element name="interaction" type="list&lt;QUICK.Conformance.Interaction&gt;"/>
        <ns4:element name="versioning" type="QUICK.ResourceVersionPolicy"/>
        <ns4:element name="readHistory" type="System.Boolean"/>
        <ns4:element name="updateCreate" type="System.Boolean"/>
        <ns4:element name="conditionalCreate" type="System.Boolean"/>
        <ns4:element name="conditionalUpdate" type="System.Boolean"/>
        <ns4:element name="conditionalDelete" type="System.Boolean"/>
        <ns4:element name="searchInclude" type="list&lt;System.String&gt;"/>
        <ns4:element name="searchParam" type="list&lt;QUICK.Conformance.SearchParam&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.VisionBase" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchParameter.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BundleType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ListStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispense.Substitution" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="responsibleParty" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceContainer" baseType="System.Any">
        <ns4:element name="AllergyIntolerance" type="QUICK.AllergyIntolerance"/>
        <ns4:element name="Appointment" type="QUICK.Appointment"/>
        <ns4:element name="AppointmentResponse" type="QUICK.AppointmentResponse"/>
        <ns4:element name="AuditEvent" type="QUICK.AuditEvent"/>
        <ns4:element name="Basic" type="QUICK.Basic"/>
        <ns4:element name="Binary" type="QUICK.Binary"/>
        <ns4:element name="BodySite" type="QUICK.BodySite"/>
        <ns4:element name="Bundle" type="QUICK.Bundle"/>
        <ns4:element name="CarePlan" type="QUICK.CarePlan"/>
        <ns4:element name="Claim" type="QUICK.Claim"/>
        <ns4:element name="ClaimResponse" type="QUICK.ClaimResponse"/>
        <ns4:element name="ClinicalImpression" type="QUICK.ClinicalImpression"/>
        <ns4:element name="Communication" type="QUICK.Communication"/>
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
        <ns4:element name="DeviceMetric" type="QUICK.DeviceMetric"/>
        <ns4:element name="DeviceUseRequest" type="QUICK.DeviceUseRequest"/>
        <ns4:element name="DeviceUseStatement" type="QUICK.DeviceUseStatement"/>
        <ns4:element name="DiagnosticOrder" type="QUICK.DiagnosticOrder"/>
        <ns4:element name="DiagnosticReport" type="QUICK.DiagnosticReport"/>
        <ns4:element name="DocumentManifest" type="QUICK.DocumentManifest"/>
        <ns4:element name="DocumentReference" type="QUICK.DocumentReference"/>
        <ns4:element name="EligibilityRequest" type="QUICK.EligibilityRequest"/>
        <ns4:element name="EligibilityResponse" type="QUICK.EligibilityResponse"/>
        <ns4:element name="Encounter" type="QUICK.Encounter"/>
        <ns4:element name="EnrollmentRequest" type="QUICK.EnrollmentRequest"/>
        <ns4:element name="EnrollmentResponse" type="QUICK.EnrollmentResponse"/>
        <ns4:element name="EpisodeOfCare" type="QUICK.EpisodeOfCare"/>
        <ns4:element name="ExplanationOfBenefit" type="QUICK.ExplanationOfBenefit"/>
        <ns4:element name="FamilyMemberHistory" type="QUICK.FamilyMemberHistory"/>
        <ns4:element name="Flag" type="QUICK.Flag"/>
        <ns4:element name="Goal" type="QUICK.Goal"/>
        <ns4:element name="Group" type="QUICK.Group"/>
        <ns4:element name="HealthcareService" type="QUICK.HealthcareService"/>
        <ns4:element name="ImagingObjectSelection" type="QUICK.ImagingObjectSelection"/>
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
        <ns4:element name="Order" type="QUICK.Order"/>
        <ns4:element name="OrderResponse" type="QUICK.OrderResponse"/>
        <ns4:element name="Organization" type="QUICK.Organization"/>
        <ns4:element name="Patient" type="QUICK.Patient"/>
        <ns4:element name="PaymentNotice" type="QUICK.PaymentNotice"/>
        <ns4:element name="PaymentReconciliation" type="QUICK.PaymentReconciliation"/>
        <ns4:element name="Person" type="QUICK.Person"/>
        <ns4:element name="Practitioner" type="QUICK.Practitioner"/>
        <ns4:element name="Procedure" type="QUICK.Procedure"/>
        <ns4:element name="ProcedureRequest" type="QUICK.ProcedureRequest"/>
        <ns4:element name="ProcessRequest" type="QUICK.ProcessRequest"/>
        <ns4:element name="ProcessResponse" type="QUICK.ProcessResponse"/>
        <ns4:element name="Provenance" type="QUICK.Provenance"/>
        <ns4:element name="Questionnaire" type="QUICK.Questionnaire"/>
        <ns4:element name="QuestionnaireAnswers" type="QUICK.QuestionnaireAnswers"/>
        <ns4:element name="ReferralRequest" type="QUICK.ReferralRequest"/>
        <ns4:element name="RelatedPerson" type="QUICK.RelatedPerson"/>
        <ns4:element name="RiskAssessment" type="QUICK.RiskAssessment"/>
        <ns4:element name="Schedule" type="QUICK.Schedule"/>
        <ns4:element name="SearchParameter" type="QUICK.SearchParameter"/>
        <ns4:element name="Slot" type="QUICK.Slot"/>
        <ns4:element name="Specimen" type="QUICK.Specimen"/>
        <ns4:element name="StructureDefinition" type="QUICK.StructureDefinition"/>
        <ns4:element name="Subscription" type="QUICK.Subscription"/>
        <ns4:element name="Substance" type="QUICK.Substance"/>
        <ns4:element name="Supply" type="QUICK.Supply"/>
        <ns4:element name="ValueSet" type="QUICK.ValueSet"/>
        <ns4:element name="VisionPrescription" type="QUICK.VisionPrescription"/>
        <ns4:element name="Parameters" type="QUICK.Parameters"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.Reaction" baseType="QUICK.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="detail" type="System.Any"/>
        <ns4:element name="reported" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="relationship" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Person.Link" baseType="QUICK.BackboneElement">
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="assurance" type="QUICK.IdentityAssuranceLevel"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BackboneElement" baseType="QUICK.Element">
        <ns4:element name="modifierExtension" type="list&lt;QUICK.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequest.Payload" baseType="QUICK.BackboneElement">
        <ns4:element name="contentString" type="System.String"/>
        <ns4:element name="contentAttachment" type="QUICK.Attachment"/>
        <ns4:element name="contentReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="immunization-qicore-qicore-immunization" primaryCodePath="vaccineType">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reported" type="System.Boolean"/>
        <ns4:element name="performer" type="System.Any"/>
        <ns4:element name="requester" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="manufacturer" type="System.Any"/>
        <ns4:element name="location" type="System.Any"/>
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
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BindingStrength" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentManifest" baseType="QUICK.DomainResource">
        <ns4:element name="masterIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="recipient" type="list&lt;System.Any&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="author" type="list&lt;System.Any&gt;"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="source" type="System.String"/>
        <ns4:element name="status" type="QUICK.DocumentReferenceStatus"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="content" type="list&lt;QUICK.DocumentManifest.Content&gt;"/>
        <ns4:element name="related" type="list&lt;QUICK.DocumentManifest.Related&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance.Agent" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="System.Code"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="referenceUri" type="System.String"/>
        <ns4:element name="referenceReference" type="System.Any"/>
        <ns4:element name="display" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchEntryMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Appointment" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.AppointmentStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="priority" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="slot" type="list&lt;System.Any&gt;"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="order" type="System.Any"/>
        <ns4:element name="participant" type="list&lt;QUICK.Appointment.Participant&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Substance" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="substance-qicore-qicore-substance" primaryCodePath="type">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="instance" type="QUICK.Substance.Instance"/>
        <ns4:element name="ingredient" type="list&lt;QUICK.Substance.Ingredient&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.Substitution" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PaymentReconciliation" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="outcome" type="QUICK.RemittanceOutcome"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
        <ns4:element name="detail" type="list&lt;QUICK.PaymentReconciliation.Detail&gt;"/>
        <ns4:element name="form" type="System.Code"/>
        <ns4:element name="total" type="QUICK.Money"/>
        <ns4:element name="note" type="list&lt;QUICK.PaymentReconciliation.Note&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataAbsentReason" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.VaccinationProtocol" baseType="QUICK.BackboneElement">
        <ns4:element name="doseSequence" type="System.Integer"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="authority" type="System.Any"/>
        <ns4:element name="series" type="System.String"/>
        <ns4:element name="seriesDoses" type="System.Integer"/>
        <ns4:element name="doseTarget" type="System.Concept"/>
        <ns4:element name="doseStatus" type="System.Concept"/>
        <ns4:element name="doseStatusReason" type="System.Concept"/>
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequest" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="communicationrequest-qicore-qicore-communicationrequest" primaryCodePath="category">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="sender" type="System.Any"/>
        <ns4:element name="recipient" type="list&lt;System.Any&gt;"/>
        <ns4:element name="payload" type="list&lt;QUICK.CommunicationRequest.Payload&gt;"/>
        <ns4:element name="medium" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="requester" type="System.Any"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="scheduledTime" type="System.DateTime"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="priority" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="providedBy" type="System.Any"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="serviceType" type="list&lt;QUICK.HealthcareService.ServiceType&gt;"/>
        <ns4:element name="serviceName" type="System.String"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="extraDetails" type="System.String"/>
        <ns4:element name="photo" type="QUICK.Attachment"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="coverageArea" type="list&lt;System.Any&gt;"/>
        <ns4:element name="serviceProvisionCode" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="eligibility" type="System.Concept"/>
        <ns4:element name="eligibilityNote" type="System.String"/>
        <ns4:element name="programName" type="list&lt;System.String&gt;"/>
        <ns4:element name="characteristic" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="referralMethod" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="publicKey" type="System.String"/>
        <ns4:element name="appointmentRequired" type="System.Boolean"/>
        <ns4:element name="availableTime" type="list&lt;QUICK.HealthcareService.AvailableTime&gt;"/>
        <ns4:element name="notAvailable" type="list&lt;QUICK.HealthcareService.NotAvailable&gt;"/>
        <ns4:element name="availabilityExceptions" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.Element" baseType="QUICK.BackboneElement">
        <ns4:element name="codeSystem" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="dependsOn" type="list&lt;QUICK.ConceptMap.DependsOn&gt;"/>
        <ns4:element name="map" type="list&lt;QUICK.ConceptMap.Map&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Communication" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="communication-qicore-qicore-communication" primaryCodePath="category">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="sender" type="System.Any"/>
        <ns4:element name="recipient" type="list&lt;System.Any&gt;"/>
        <ns4:element name="payload" type="list&lt;QUICK.Communication.Payload&gt;"/>
        <ns4:element name="medium" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="status" type="QUICK.CommunicationStatus"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="sent" type="System.DateTime"/>
        <ns4:element name="received" type="System.DateTime"/>
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.TransactionResponse" baseType="QUICK.BackboneElement">
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="location" type="System.String"/>
        <ns4:element name="etag" type="System.String"/>
        <ns4:element name="lastModified" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Basic" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="created" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Organization.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="purpose" type="System.Concept"/>
        <ns4:element name="name" type="QUICK.HumanName"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.UnitsOfTime" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationOutcome.Issue" baseType="QUICK.BackboneElement">
        <ns4:element name="severity" type="QUICK.IssueSeverity"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="details" type="System.String"/>
        <ns4:element name="location" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.OperationDefinition.Contact&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="kind" type="QUICK.OperationKind"/>
        <ns4:element name="idempotent" type="System.Boolean"/>
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="base" type="System.Any"/>
        <ns4:element name="system" type="System.Boolean"/>
        <ns4:element name="type" type="list&lt;System.String&gt;"/>
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
        <ns4:element name="options" type="System.Any"/>
        <ns4:element name="group" type="list&lt;QUICK.Questionnaire.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingObjectSelection.Instance" baseType="QUICK.BackboneElement">
        <ns4:element name="sopClass" type="System.String"/>
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="frames" type="list&lt;QUICK.ImagingObjectSelection.Frames&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="class" type="System.Concept"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="status" type="QUICK.CompositionStatus"/>
        <ns4:element name="confidentiality" type="System.String"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="author" type="list&lt;System.Any&gt;"/>
        <ns4:element name="attester" type="list&lt;QUICK.Composition.Attester&gt;"/>
        <ns4:element name="custodian" type="System.Any"/>
        <ns4:element name="event" type="list&lt;QUICK.Composition.Event&gt;"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="section" type="list&lt;QUICK.Composition.Section&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SampledDataDataType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition.Part" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="profile" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Provenance" baseType="QUICK.DomainResource">
        <ns4:element name="target" type="list&lt;System.Any&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="recorded" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="policy" type="list&lt;System.String&gt;"/>
        <ns4:element name="agent" type="list&lt;QUICK.Provenance.Agent&gt;"/>
        <ns4:element name="entity" type="list&lt;QUICK.Provenance.Entity&gt;"/>
        <ns4:element name="signature" type="list&lt;QUICK.Signature&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Attachment" baseType="QUICK.Element">
        <ns4:element name="contentType" type="System.String"/>
        <ns4:element name="language" type="System.String"/>
        <ns4:element name="data" type="QUICK.base64Binary"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="size" type="System.Integer"/>
        <ns4:element name="hash" type="QUICK.base64Binary"/>
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="creation" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingObjectSelection" baseType="QUICK.DomainResource">
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="title" type="System.Concept"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="authoringTime" type="System.DateTime"/>
        <ns4:element name="study" type="list&lt;QUICK.ImagingObjectSelection.Study&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="questionnaire" type="System.Any"/>
        <ns4:element name="status" type="QUICK.QuestionnaireAnswersStatus"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="authored" type="System.DateTime"/>
        <ns4:element name="source" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="group" type="QUICK.QuestionnaireAnswers.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Package" baseType="QUICK.BackboneElement">
        <ns4:element name="container" type="System.Concept"/>
        <ns4:element name="content" type="list&lt;QUICK.Medication.Content&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Destination" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="endpoint" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Order" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="source" type="System.Any"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="reasonCodeableConcept" type="System.Concept"/>
        <ns4:element name="reasonReference" type="System.Any"/>
        <ns4:element name="authority" type="System.Any"/>
        <ns4:element name="when" type="QUICK.Order.When"/>
        <ns4:element name="detail" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Location" baseType="QUICK.BackboneElement">
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="status" type="QUICK.EncounterLocationStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Identifier" baseType="QUICK.Element">
        <ns4:element name="use" type="QUICK.IdentifierUse"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="assigner" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NameUse" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication1&gt;"/>
        <ns4:element name="subDetail" type="list&lt;QUICK.ClaimResponse.SubDetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingModality" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Slot" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="schedule" type="System.Any"/>
        <ns4:element name="freeBusyType" type="QUICK.SlotStatus"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
        <ns4:element name="overbooked" type="System.Boolean"/>
        <ns4:element name="comment" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PropertyRepresentation" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventObjectType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Device" baseType="QUICK.DomainResource"
                  identifier="device-qicore-qicore-device">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.DeviceStatus"/>
        <ns4:element name="manufacturer" type="System.String"/>
        <ns4:element name="model" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="manufactureDate" type="System.DateTime"/>
        <ns4:element name="expiry" type="System.DateTime"/>
        <ns4:element name="udi" type="System.String"/>
        <ns4:element name="lotNumber" type="System.String"/>
        <ns4:element name="owner" type="System.Any"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="contact" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="url" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PaymentReconciliation.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="responce" type="System.Any"/>
        <ns4:element name="submitter" type="System.Any"/>
        <ns4:element name="payee" type="System.Any"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="amount" type="QUICK.Money"/>
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
        <ns4:element name="substance" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient.Communication" baseType="QUICK.BackboneElement">
        <ns4:element name="language" type="System.Concept"/>
        <ns4:element name="preferred" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="procedure-qicore-qicore-procedure" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="status" type="QUICK.ProcedureStatus"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;QUICK.Procedure.BodySite&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="performer" type="list&lt;QUICK.Procedure.Performer&gt;"/>
        <ns4:element name="performedDateTime" type="System.DateTime"/>
        <ns4:element name="performedPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="outcome" type="System.Concept"/>
        <ns4:element name="report" type="list&lt;System.Any&gt;"/>
        <ns4:element name="complication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="followUp" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="relatedItem" type="list&lt;QUICK.Procedure.RelatedItem&gt;"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="device" type="list&lt;QUICK.Procedure.Device&gt;"/>
        <ns4:element name="used" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequestPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="imagingstudy-qicore-qicore-imagingstudy" primaryCodePath="procedure">
        <ns4:element name="started" type="System.DateTime"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="accession" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="order" type="list&lt;System.Any&gt;"/>
        <ns4:element name="modalityList" type="list&lt;QUICK.ImagingModality&gt;"/>
        <ns4:element name="referrer" type="System.Any"/>
        <ns4:element name="availability" type="QUICK.InstanceAvailability"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="numberOfSeries" type="System.Integer"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="clinicalInformation" type="System.String"/>
        <ns4:element name="procedure" type="list&lt;System.Code&gt;"/>
        <ns4:element name="interpreter" type="System.Any"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="series" type="list&lt;QUICK.ImagingStudy.Series&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationDispenseStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="observation-qicore-qicore-observation" primaryCodePath="code">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="valueRatio" type="QUICK.Ratio"/>
        <ns4:element name="valueSampledData" type="QUICK.SampledData"/>
        <ns4:element name="valueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueTime" type="System.Time"/>
        <ns4:element name="valueDateTime" type="System.DateTime"/>
        <ns4:element name="valuePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="dataAbsentReason" type="System.Concept"/>
        <ns4:element name="interpretation" type="System.Concept"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="appliesDateTime" type="System.DateTime"/>
        <ns4:element name="appliesPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.ObservationStatus"/>
        <ns4:element name="reliability" type="QUICK.ObservationReliability"/>
        <ns4:element name="bodySiteCodeableConcept" type="System.Concept"/>
        <ns4:element name="bodySiteReference" type="System.Any"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="specimen" type="System.Any"/>
        <ns4:element name="performer" type="list&lt;System.Any&gt;"/>
        <ns4:element name="device" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="referenceRange" type="list&lt;QUICK.Observation.ReferenceRange&gt;"/>
        <ns4:element name="related" type="list&lt;QUICK.Observation.Related&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="diagnosticorder-qicore-qicore-diagnosticorder" primaryCodePath="item.code">
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="orderer" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="clinicalNotes" type="System.String"/>
        <ns4:element name="supportingInformation" type="list&lt;System.Any&gt;"/>
        <ns4:element name="specimen" type="list&lt;System.Any&gt;"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="priority" type="QUICK.DiagnosticOrderPriority"/>
        <ns4:element name="event" type="list&lt;QUICK.DiagnosticOrder.Event&gt;"/>
        <ns4:element name="item" type="list&lt;QUICK.DiagnosticOrder.Item&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Legal" baseType="QUICK.BackboneElement">
        <ns4:element name="contentAttachment" type="QUICK.Attachment"/>
        <ns4:element name="contentReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Duration" baseType="System.Quantity">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="QUICK.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Software" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="releaseDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswersStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupplyDispenseStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Meta" baseType="QUICK.Element">
        <ns4:element name="versionId" type="System.String"/>
        <ns4:element name="lastUpdated" type="System.DateTime"/>
        <ns4:element name="profile" type="list&lt;System.String&gt;"/>
        <ns4:element name="security" type="list&lt;System.Code&gt;"/>
        <ns4:element name="tag" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Constraint" baseType="QUICK.Element">
        <ns4:element name="key" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="severity" type="QUICK.ConstraintSeverity"/>
        <ns4:element name="human" type="System.String"/>
        <ns4:element name="xpath" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CompositionAttestationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AddressUse" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReferenceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="immunizationrecommendation-qicore-qicore-immunizationrec" primaryCodePath="recommendation.vaccineType">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="recommendation" type="list&lt;QUICK.ImmunizationRecommendation.Recommendation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageEvent" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Expansion" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="parameter" type="list&lt;QUICK.ValueSet.Parameter&gt;"/>
        <ns4:element name="contains" type="list&lt;QUICK.ValueSet.Contains&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventAction" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NarrativeStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.DueTo" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="target" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPoint" baseType="QUICK.Element">
        <ns4:element name="system" type="QUICK.ContactPointSystem"/>
        <ns4:element name="value" type="System.String"/>
        <ns4:element name="use" type="QUICK.ContactPointUse"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystem.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.StatusHistory" baseType="QUICK.BackboneElement">
        <ns4:element name="status" type="QUICK.EncounterState"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinitionType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Note" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Timing.Repeat" baseType="QUICK.Element">
        <ns4:element name="bounds" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="count" type="System.Integer"/>
        <ns4:element name="duration" type="System.Decimal"/>
        <ns4:element name="durationUnits" type="QUICK.UnitsOfTime"/>
        <ns4:element name="frequency" type="System.Integer"/>
        <ns4:element name="frequencyMax" type="System.Integer"/>
        <ns4:element name="period" type="System.Decimal"/>
        <ns4:element name="periodMax" type="System.Decimal"/>
        <ns4:element name="periodUnits" type="QUICK.UnitsOfTime"/>
        <ns4:element name="when" type="QUICK.EventTiming"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Document" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="QUICK.DocumentMode"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="profile" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.SubDetail" baseType="QUICK.BackboneElement">
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition" baseType="QUICK.Element">
        <ns4:element name="path" type="System.String"/>
        <ns4:element name="representation" type="list&lt;QUICK.PropertyRepresentation&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="label" type="System.String"/>
        <ns4:element name="code" type="list&lt;System.Code&gt;"/>
        <ns4:element name="slicing" type="QUICK.ElementDefinition.Slicing"/>
        <ns4:element name="short" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="alias" type="list&lt;System.String&gt;"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="type" type="list&lt;QUICK.ElementDefinition.Type&gt;"/>
        <ns4:element name="nameReference" type="System.String"/>
        <ns4:element name="defaultValueBoolean" type="System.Boolean"/>
        <ns4:element name="defaultValueInteger" type="System.Integer"/>
        <ns4:element name="defaultValueDecimal" type="System.Decimal"/>
        <ns4:element name="defaultValueBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="defaultValueInstant" type="System.DateTime"/>
        <ns4:element name="defaultValueString" type="System.String"/>
        <ns4:element name="defaultValueUri" type="System.String"/>
        <ns4:element name="defaultValueDate" type="System.DateTime"/>
        <ns4:element name="defaultValueDateTime" type="System.DateTime"/>
        <ns4:element name="defaultValueTime" type="System.Time"/>
        <ns4:element name="defaultValueCode" type="System.String"/>
        <ns4:element name="defaultValueOid" type="System.String"/>
        <ns4:element name="defaultValueUuid" type="QUICK.uuid"/>
        <ns4:element name="defaultValueId" type="System.String"/>
        <ns4:element name="defaultValueUnsignedInt" type="System.Integer"/>
        <ns4:element name="defaultValuePositiveInt" type="System.Integer"/>
        <ns4:element name="defaultValueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="defaultValueIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="defaultValueCodeableConcept" type="System.Concept"/>
        <ns4:element name="defaultValueCoding" type="System.Code"/>
        <ns4:element name="defaultValueQuantity" type="System.Quantity"/>
        <ns4:element name="defaultValueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="defaultValuePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="defaultValueRatio" type="QUICK.Ratio"/>
        <ns4:element name="defaultValueReference" type="System.Any"/>
        <ns4:element name="defaultValueSampledData" type="QUICK.SampledData"/>
        <ns4:element name="defaultValueSignature" type="QUICK.Signature"/>
        <ns4:element name="defaultValueHumanName" type="QUICK.HumanName"/>
        <ns4:element name="defaultValueAddress" type="QUICK.Address"/>
        <ns4:element name="defaultValueContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="defaultValueTiming" type="QUICK.Timing"/>
        <ns4:element name="defaultValueMeta" type="QUICK.Meta"/>
        <ns4:element name="meaningWhenMissing" type="System.String"/>
        <ns4:element name="fixedBoolean" type="System.Boolean"/>
        <ns4:element name="fixedInteger" type="System.Integer"/>
        <ns4:element name="fixedDecimal" type="System.Decimal"/>
        <ns4:element name="fixedBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="fixedInstant" type="System.DateTime"/>
        <ns4:element name="fixedString" type="System.String"/>
        <ns4:element name="fixedUri" type="System.String"/>
        <ns4:element name="fixedDate" type="System.DateTime"/>
        <ns4:element name="fixedDateTime" type="System.DateTime"/>
        <ns4:element name="fixedTime" type="System.Time"/>
        <ns4:element name="fixedCode" type="System.String"/>
        <ns4:element name="fixedOid" type="System.String"/>
        <ns4:element name="fixedUuid" type="QUICK.uuid"/>
        <ns4:element name="fixedId" type="System.String"/>
        <ns4:element name="fixedUnsignedInt" type="System.Integer"/>
        <ns4:element name="fixedPositiveInt" type="System.Integer"/>
        <ns4:element name="fixedAttachment" type="QUICK.Attachment"/>
        <ns4:element name="fixedIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="fixedCodeableConcept" type="System.Concept"/>
        <ns4:element name="fixedCoding" type="System.Code"/>
        <ns4:element name="fixedQuantity" type="System.Quantity"/>
        <ns4:element name="fixedRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="fixedPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="fixedRatio" type="QUICK.Ratio"/>
        <ns4:element name="fixedReference" type="System.Any"/>
        <ns4:element name="fixedSampledData" type="QUICK.SampledData"/>
        <ns4:element name="fixedSignature" type="QUICK.Signature"/>
        <ns4:element name="fixedHumanName" type="QUICK.HumanName"/>
        <ns4:element name="fixedAddress" type="QUICK.Address"/>
        <ns4:element name="fixedContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="fixedTiming" type="QUICK.Timing"/>
        <ns4:element name="fixedMeta" type="QUICK.Meta"/>
        <ns4:element name="patternBoolean" type="System.Boolean"/>
        <ns4:element name="patternInteger" type="System.Integer"/>
        <ns4:element name="patternDecimal" type="System.Decimal"/>
        <ns4:element name="patternBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="patternInstant" type="System.DateTime"/>
        <ns4:element name="patternString" type="System.String"/>
        <ns4:element name="patternUri" type="System.String"/>
        <ns4:element name="patternDate" type="System.DateTime"/>
        <ns4:element name="patternDateTime" type="System.DateTime"/>
        <ns4:element name="patternTime" type="System.Time"/>
        <ns4:element name="patternCode" type="System.String"/>
        <ns4:element name="patternOid" type="System.String"/>
        <ns4:element name="patternUuid" type="QUICK.uuid"/>
        <ns4:element name="patternId" type="System.String"/>
        <ns4:element name="patternUnsignedInt" type="System.Integer"/>
        <ns4:element name="patternPositiveInt" type="System.Integer"/>
        <ns4:element name="patternAttachment" type="QUICK.Attachment"/>
        <ns4:element name="patternIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="patternCodeableConcept" type="System.Concept"/>
        <ns4:element name="patternCoding" type="System.Code"/>
        <ns4:element name="patternQuantity" type="System.Quantity"/>
        <ns4:element name="patternRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="patternPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="patternRatio" type="QUICK.Ratio"/>
        <ns4:element name="patternReference" type="System.Any"/>
        <ns4:element name="patternSampledData" type="QUICK.SampledData"/>
        <ns4:element name="patternSignature" type="QUICK.Signature"/>
        <ns4:element name="patternHumanName" type="QUICK.HumanName"/>
        <ns4:element name="patternAddress" type="QUICK.Address"/>
        <ns4:element name="patternContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="patternTiming" type="QUICK.Timing"/>
        <ns4:element name="patternMeta" type="QUICK.Meta"/>
        <ns4:element name="exampleBoolean" type="System.Boolean"/>
        <ns4:element name="exampleInteger" type="System.Integer"/>
        <ns4:element name="exampleDecimal" type="System.Decimal"/>
        <ns4:element name="exampleBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="exampleInstant" type="System.DateTime"/>
        <ns4:element name="exampleString" type="System.String"/>
        <ns4:element name="exampleUri" type="System.String"/>
        <ns4:element name="exampleDate" type="System.DateTime"/>
        <ns4:element name="exampleDateTime" type="System.DateTime"/>
        <ns4:element name="exampleTime" type="System.Time"/>
        <ns4:element name="exampleCode" type="System.String"/>
        <ns4:element name="exampleOid" type="System.String"/>
        <ns4:element name="exampleUuid" type="QUICK.uuid"/>
        <ns4:element name="exampleId" type="System.String"/>
        <ns4:element name="exampleUnsignedInt" type="System.Integer"/>
        <ns4:element name="examplePositiveInt" type="System.Integer"/>
        <ns4:element name="exampleAttachment" type="QUICK.Attachment"/>
        <ns4:element name="exampleIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="exampleCodeableConcept" type="System.Concept"/>
        <ns4:element name="exampleCoding" type="System.Code"/>
        <ns4:element name="exampleQuantity" type="System.Quantity"/>
        <ns4:element name="exampleRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="examplePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="exampleRatio" type="QUICK.Ratio"/>
        <ns4:element name="exampleReference" type="System.Any"/>
        <ns4:element name="exampleSampledData" type="QUICK.SampledData"/>
        <ns4:element name="exampleSignature" type="QUICK.Signature"/>
        <ns4:element name="exampleHumanName" type="QUICK.HumanName"/>
        <ns4:element name="exampleAddress" type="QUICK.Address"/>
        <ns4:element name="exampleContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="exampleTiming" type="QUICK.Timing"/>
        <ns4:element name="exampleMeta" type="QUICK.Meta"/>
        <ns4:element name="maxLength" type="System.Integer"/>
        <ns4:element name="condition" type="list&lt;System.String&gt;"/>
        <ns4:element name="constraint" type="list&lt;QUICK.ElementDefinition.Constraint&gt;"/>
        <ns4:element name="mustSupport" type="System.Boolean"/>
        <ns4:element name="isModifier" type="System.Boolean"/>
        <ns4:element name="isSummary" type="System.Boolean"/>
        <ns4:element name="binding" type="QUICK.ElementDefinition.Binding"/>
        <ns4:element name="mapping" type="list&lt;QUICK.ElementDefinition.Mapping&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Concept" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="abstract" type="System.Boolean"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="designation" type="list&lt;QUICK.ValueSet.Designation&gt;"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalImpression.Investigations" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="item" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FilterOperator" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.IssueSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SlotStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MaritalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement.Mapping" baseType="QUICK.BackboneElement">
        <ns4:element name="identity" type="System.String"/>
        <ns4:element name="uri" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="comments" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AppointmentStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HTTPVerb" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="subDetail" type="list&lt;QUICK.Claim.SubDetail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RiskAssessment" baseType="QUICK.DomainResource" retrievable="true">
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="condition" type="System.Any"/>
        <ns4:element name="performer" type="System.Any"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="basis" type="list&lt;System.Any&gt;"/>
        <ns4:element name="prediction" type="list&lt;QUICK.RiskAssessment.Prediction&gt;"/>
        <ns4:element name="mitigation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcessRequest" baseType="QUICK.DomainResource">
        <ns4:element name="action" type="QUICK.ActionList"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="response" type="System.Any"/>
        <ns4:element name="nullify" type="System.Boolean"/>
        <ns4:element name="reference" type="System.String"/>
        <ns4:element name="item" type="list&lt;QUICK.ProcessRequest.Item&gt;"/>
        <ns4:element name="include" type="list&lt;System.String&gt;"/>
        <ns4:element name="exclude" type="list&lt;System.String&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ActionList" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescriptionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImmunizationRecommendation.Recommendation" baseType="QUICK.BackboneElement">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="vaccineType" type="System.Concept"/>
        <ns4:element name="doseNumber" type="System.Integer"/>
        <ns4:element name="forecastStatus" type="System.Concept"/>
        <ns4:element name="dateCriterion" type="list&lt;QUICK.ImmunizationRecommendation.DateCriterion&gt;"/>
        <ns4:element name="protocol" type="QUICK.ImmunizationRecommendation.Protocol"/>
        <ns4:element name="supportingImmunization" type="list&lt;System.Any&gt;"/>
        <ns4:element name="supportingPatientInformation" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DaysOfWeek" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingObjectSelection.Study" baseType="QUICK.BackboneElement">
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="series" type="list&lt;QUICK.ImagingObjectSelection.Series&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMapEquivalence" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Distance" baseType="System.Quantity">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="QUICK.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcessResponse.Notes" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="condition-qicore-qicore-condition" primaryCodePath="code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="asserter" type="System.Any"/>
        <ns4:element name="dateAsserted" type="System.DateTime"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="clinicalStatus" type="System.String"/>
        <ns4:element name="severity" type="System.Concept"/>
        <ns4:element name="onsetDateTime" type="System.DateTime"/>
        <ns4:element name="onsetAge" type="QUICK.Age"/>
        <ns4:element name="onsetPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="onsetRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="onsetString" type="System.String"/>
        <ns4:element name="abatementDate" type="System.DateTime"/>
        <ns4:element name="abatementAge" type="QUICK.Age"/>
        <ns4:element name="abatementBoolean" type="System.Boolean"/>
        <ns4:element name="abatementPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="abatementRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="abatementString" type="System.String"/>
        <ns4:element name="stage" type="QUICK.Condition.Stage"/>
        <ns4:element name="evidence" type="list&lt;QUICK.Condition.Evidence&gt;"/>
        <ns4:element name="location" type="list&lt;QUICK.Condition.Location&gt;"/>
        <ns4:element name="dueTo" type="list&lt;QUICK.Condition.DueTo&gt;"/>
        <ns4:element name="occurredFollowing" type="list&lt;QUICK.Condition.OccurredFollowing&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="applies" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="subject" type="list&lt;System.Any&gt;"/>
        <ns4:element name="authority" type="list&lt;System.Any&gt;"/>
        <ns4:element name="domain" type="list&lt;System.Any&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="action" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actionReason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="list&lt;QUICK.Contract.Actor&gt;"/>
        <ns4:element name="valuedItem" type="list&lt;QUICK.Contract.ValuedItem&gt;"/>
        <ns4:element name="signer" type="list&lt;QUICK.Contract.Signer&gt;"/>
        <ns4:element name="term" type="list&lt;QUICK.Contract.Term&gt;"/>
        <ns4:element name="bindingAttachment" type="QUICK.Attachment"/>
        <ns4:element name="bindingReference" type="System.Any"/>
        <ns4:element name="friendly" type="list&lt;QUICK.Contract.Friendly&gt;"/>
        <ns4:element name="legal" type="list&lt;QUICK.Contract.Legal&gt;"/>
        <ns4:element name="rule" type="list&lt;QUICK.Contract.Rule&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Person" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="list&lt;QUICK.HumanName&gt;"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="photo" type="QUICK.Attachment"/>
        <ns4:element name="managingOrganization" type="System.Any"/>
        <ns4:element name="active" type="System.Boolean"/>
        <ns4:element name="link" type="list&lt;QUICK.Person.Link&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Object" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="reference" type="System.Any"/>
        <ns4:element name="type" type="QUICK.AuditEventObjectType"/>
        <ns4:element name="role" type="QUICK.AuditEventObjectRole"/>
        <ns4:element name="lifecycle" type="QUICK.AuditEventObjectLifecycle"/>
        <ns4:element name="sensitivity" type="System.Concept"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="query" type="QUICK.base64Binary"/>
        <ns4:element name="detail" type="list&lt;QUICK.AuditEvent.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.RestfulConformanceMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SearchParamType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Condition.Stage" baseType="QUICK.BackboneElement">
        <ns4:element name="summary" type="System.Concept"/>
        <ns4:element name="assessment" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FamilyMemberHistory" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="familymemberhistory-qicore-qicore-familymemberhistory" primaryCodePath="relationship">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="relationship" type="System.Concept"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="bornPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="bornDate" type="System.DateTime"/>
        <ns4:element name="bornString" type="System.String"/>
        <ns4:element name="ageAge" type="QUICK.Age"/>
        <ns4:element name="ageRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="ageString" type="System.String"/>
        <ns4:element name="deceasedBoolean" type="System.Boolean"/>
        <ns4:element name="deceasedAge" type="QUICK.Age"/>
        <ns4:element name="deceasedRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="deceasedDate" type="System.DateTime"/>
        <ns4:element name="deceasedString" type="System.String"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="condition" type="list&lt;QUICK.FamilyMemberHistory.Condition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SupplyStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.IdentifierUse" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Extension" baseType="QUICK.Element">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueInteger" type="System.Integer"/>
        <ns4:element name="valueDecimal" type="System.Decimal"/>
        <ns4:element name="valueBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="valueInstant" type="System.DateTime"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueUri" type="System.String"/>
        <ns4:element name="valueDate" type="System.DateTime"/>
        <ns4:element name="valueDateTime" type="System.DateTime"/>
        <ns4:element name="valueTime" type="System.Time"/>
        <ns4:element name="valueCode" type="System.String"/>
        <ns4:element name="valueOid" type="System.String"/>
        <ns4:element name="valueUuid" type="QUICK.uuid"/>
        <ns4:element name="valueId" type="System.String"/>
        <ns4:element name="valueUnsignedInt" type="System.Integer"/>
        <ns4:element name="valuePositiveInt" type="System.Integer"/>
        <ns4:element name="valueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="valueCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueCoding" type="System.Code"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="valuePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="valueRatio" type="QUICK.Ratio"/>
        <ns4:element name="valueReference" type="System.Any"/>
        <ns4:element name="valueSampledData" type="QUICK.SampledData"/>
        <ns4:element name="valueSignature" type="QUICK.Signature"/>
        <ns4:element name="valueHumanName" type="QUICK.HumanName"/>
        <ns4:element name="valueAddress" type="QUICK.Address"/>
        <ns4:element name="valueContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="valueTiming" type="QUICK.Timing"/>
        <ns4:element name="valueMeta" type="QUICK.Meta"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="subtype" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="action" type="QUICK.AuditEventAction"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="outcome" type="QUICK.AuditEventOutcome"/>
        <ns4:element name="outcomeDesc" type="System.String"/>
        <ns4:element name="purposeOfEvent" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinition.Snapshot" baseType="QUICK.BackboneElement">
        <ns4:element name="element" type="list&lt;QUICK.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Signature" baseType="QUICK.Element">
        <ns4:element name="type" type="list&lt;System.Code&gt;"/>
        <ns4:element name="when" type="System.DateTime"/>
        <ns4:element name="whoBoolean" type="System.Boolean"/>
        <ns4:element name="whoInteger" type="System.Integer"/>
        <ns4:element name="whoDecimal" type="System.Decimal"/>
        <ns4:element name="whoBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="whoInstant" type="System.DateTime"/>
        <ns4:element name="whoString" type="System.String"/>
        <ns4:element name="whoUri" type="System.String"/>
        <ns4:element name="whoDate" type="System.DateTime"/>
        <ns4:element name="whoDateTime" type="System.DateTime"/>
        <ns4:element name="whoTime" type="System.Time"/>
        <ns4:element name="whoCode" type="System.String"/>
        <ns4:element name="whoOid" type="System.String"/>
        <ns4:element name="whoUuid" type="QUICK.uuid"/>
        <ns4:element name="whoId" type="System.String"/>
        <ns4:element name="whoUnsignedInt" type="System.Integer"/>
        <ns4:element name="whoPositiveInt" type="System.Integer"/>
        <ns4:element name="whoAttachment" type="QUICK.Attachment"/>
        <ns4:element name="whoIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="whoCodeableConcept" type="System.Concept"/>
        <ns4:element name="whoCoding" type="System.Code"/>
        <ns4:element name="whoQuantity" type="System.Quantity"/>
        <ns4:element name="whoRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="whoPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="whoRatio" type="QUICK.Ratio"/>
        <ns4:element name="whoReference" type="System.Any"/>
        <ns4:element name="whoSampledData" type="QUICK.SampledData"/>
        <ns4:element name="whoSignature" type="QUICK.Signature"/>
        <ns4:element name="whoHumanName" type="QUICK.HumanName"/>
        <ns4:element name="whoAddress" type="QUICK.Address"/>
        <ns4:element name="whoContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="whoTiming" type="QUICK.Timing"/>
        <ns4:element name="whoMeta" type="QUICK.Meta"/>
        <ns4:element name="blob" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Coverage" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="focal" type="System.Boolean"/>
        <ns4:element name="coverage" type="System.Any"/>
        <ns4:element name="businessArrangement" type="System.String"/>
        <ns4:element name="relationship" type="System.Code"/>
        <ns4:element name="preAuthRef" type="list&lt;System.String&gt;"/>
        <ns4:element name="claimResponse" type="System.Any"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Questionnaire" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="status" type="QUICK.QuestionnaireStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="group" type="QUICK.Questionnaire.Group"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Composition.Section" baseType="QUICK.BackboneElement">
        <ns4:element name="title" type="System.String"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="content" type="System.Any"/>
        <ns4:element name="section" type="list&lt;QUICK.Composition.Section&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetric.Calibration" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.DeviceMetricCalibrationType"/>
        <ns4:element name="state" type="QUICK.DeviceMetricCalibrationState"/>
        <ns4:element name="time" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingStudy.Series" baseType="QUICK.BackboneElement">
        <ns4:element name="number" type="System.Integer"/>
        <ns4:element name="modality" type="QUICK.Modality"/>
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="numberOfInstances" type="System.Integer"/>
        <ns4:element name="availability" type="QUICK.InstanceAvailability"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="laterality" type="System.Code"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="instance" type="list&lt;QUICK.ImagingStudy.Instance&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Practitioner.Qualification" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="issuer" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationParameterUse" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="individual" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Search" baseType="QUICK.BackboneElement">
        <ns4:element name="mode" type="QUICK.SearchEntryMode"/>
        <ns4:element name="score" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationStatement" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="medicationstatement-qicore-qicore-medicationstatement" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="informationSource" type="System.Any"/>
        <ns4:element name="dateAsserted" type="System.DateTime"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reasonForUseCodeableConcept" type="System.Concept"/>
        <ns4:element name="reasonForUseReference" type="System.Any"/>
        <ns4:element name="effectiveDateTime" type="System.DateTime"/>
        <ns4:element name="effectivePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="medication" type="System.Any"/>
        <ns4:element name="dosage" type="list&lt;QUICK.MedicationStatement.Dosage&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Slicing" baseType="QUICK.Element">
        <ns4:element name="discriminator" type="list&lt;System.String&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="ordered" type="System.Boolean"/>
        <ns4:element name="rules" type="QUICK.SlicingRules"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceComponent" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="lastSystemChange" type="System.DateTime"/>
        <ns4:element name="source" type="System.Any"/>
        <ns4:element name="parent" type="System.Any"/>
        <ns4:element name="operationalStatus" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="parameterGroup" type="System.Concept"/>
        <ns4:element name="measurementPrinciple" type="QUICK.Measmnt_Principle"/>
        <ns4:element name="productionSpecification" type="list&lt;QUICK.DeviceComponent.ProductionSpecification&gt;"/>
        <ns4:element name="languageCode" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PaymentReconciliation.Note" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="text" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="value" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.StructureDefinition.Differential" baseType="QUICK.BackboneElement">
        <ns4:element name="element" type="list&lt;QUICK.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Prosthesis" baseType="QUICK.BackboneElement">
        <ns4:element name="initial" type="System.Boolean"/>
        <ns4:element name="priorDate" type="System.DateTime"/>
        <ns4:element name="priorMaterial" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Use" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Adjudication" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="amount" type="QUICK.Money"/>
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="description" type="System.Concept"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="actor" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcessRequest.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Ratio" baseType="QUICK.Element">
        <ns4:element name="numerator" type="System.Quantity"/>
        <ns4:element name="denominator" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contraindication" baseType="QUICK.DomainResource">
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="severity" type="System.String"/>
        <ns4:element name="implicated" type="list&lt;System.Any&gt;"/>
        <ns4:element name="detail" type="System.String"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="reference" type="System.String"/>
        <ns4:element name="mitigation" type="list&lt;QUICK.Contraindication.Mitigation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Question" baseType="QUICK.BackboneElement">
        <ns4:element name="linkId" type="System.String"/>
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="answer" type="list&lt;QUICK.QuestionnaireAnswers.Answer&gt;"/>
        <ns4:element name="group" type="list&lt;QUICK.QuestionnaireAnswers.Group&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConstraintSeverity" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetricOperationalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Observation.Related" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.ObservationRelationshipType"/>
        <ns4:element name="target" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Interaction" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.TypeRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.OralDiet" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="scheduled" type="QUICK.Timing"/>
        <ns4:element name="nutrient" type="list&lt;QUICK.NutritionOrder.Nutrient&gt;"/>
        <ns4:element name="texture" type="list&lt;QUICK.NutritionOrder.Texture&gt;"/>
        <ns4:element name="fluidConsistencyType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="instruction" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle" baseType="QUICK.Resource">
        <ns4:element name="type" type="QUICK.BundleType"/>
        <ns4:element name="base" type="System.String"/>
        <ns4:element name="total" type="System.Integer"/>
        <ns4:element name="link" type="list&lt;QUICK.Bundle.Link&gt;"/>
        <ns4:element name="entry" type="list&lt;QUICK.Bundle.Entry&gt;"/>
        <ns4:element name="signature" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap.DependsOn" baseType="QUICK.BackboneElement">
        <ns4:element name="element" type="System.String"/>
        <ns4:element name="codeSystem" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConformanceEventMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Error" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="detailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="subdetailSequenceLinkId" type="System.Integer"/>
        <ns4:element name="code" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConditionClinicalStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LinkType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.BodySite" baseType="QUICK.DomainResource"
                  identifier="bodysite-qicore-qicore-bodysite">
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="modifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="image" type="list&lt;QUICK.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contraindication.Mitigation" baseType="QUICK.BackboneElement">
        <ns4:element name="action" type="System.Concept"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="author" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NamingSystemIdentifierType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Include" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept1&gt;"/>
        <ns4:element name="filter" type="list&lt;QUICK.ValueSet.Filter&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Entry" baseType="QUICK.BackboneElement">
        <ns4:element name="base" type="System.String"/>
        <ns4:element name="link" type="list&lt;QUICK.Bundle.Link&gt;"/>
        <ns4:element name="resource" type="QUICK.ResourceContainer"/>
        <ns4:element name="search" type="QUICK.Bundle.Search"/>
        <ns4:element name="transaction" type="QUICK.Bundle.Transaction"/>
        <ns4:element name="transactionResponse" type="QUICK.Bundle.TransactionResponse"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ListMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen" baseType="QUICK.DomainResource"
                  identifier="specimen-qicore-qicore-specimen" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="parent" type="list&lt;System.Any&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
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
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.FHIRDefinedType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Age" baseType="System.Quantity">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="QUICK.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Subscription.Channel" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="QUICK.SubscriptionChannelType"/>
        <ns4:element name="endpoint" type="System.String"/>
        <ns4:element name="payload" type="System.String"/>
        <ns4:element name="header" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Goal" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="goal-qicore-qicore-goal">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="targetDate" type="System.DateTime"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="status" type="QUICK.GoalStatus"/>
        <ns4:element name="statusDate" type="System.DateTime"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="priority" type="System.Concept"/>
        <ns4:element name="concern" type="list&lt;System.Any&gt;"/>
        <ns4:element name="notes" type="System.String"/>
        <ns4:element name="outcome" type="list&lt;QUICK.Goal.Outcome&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Concept1" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="designation" type="list&lt;QUICK.ValueSet.Designation&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalImpression.Finding" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="System.Concept"/>
        <ns4:element name="cause" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="noteNumber" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.ClaimResponse.Detail&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationStatement.Dosage" baseType="QUICK.BackboneElement">
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="schedule" type="QUICK.Timing"/>
        <ns4:element name="asNeededBoolean" type="System.Boolean"/>
        <ns4:element name="asNeededCodeableConcept" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="QUICK.ClaimType"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="use" type="QUICK.Use"/>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:element name="fundsReserve" type="System.Code"/>
        <ns4:element name="enterer" type="System.Any"/>
        <ns4:element name="facility" type="System.Any"/>
        <ns4:element name="prescription" type="System.Any"/>
        <ns4:element name="originalPrescription" type="System.Any"/>
        <ns4:element name="payee" type="QUICK.Claim.Payee"/>
        <ns4:element name="referral" type="System.Any"/>
        <ns4:element name="diagnosis" type="list&lt;QUICK.Claim.Diagnosis&gt;"/>
        <ns4:element name="condition" type="list&lt;System.Code&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="coverage" type="list&lt;QUICK.Claim.Coverage&gt;"/>
        <ns4:element name="exception" type="list&lt;System.Code&gt;"/>
        <ns4:element name="school" type="System.String"/>
        <ns4:element name="accident" type="System.DateTime"/>
        <ns4:element name="accidentType" type="System.Code"/>
        <ns4:element name="interventionException" type="list&lt;System.Code&gt;"/>
        <ns4:element name="item" type="list&lt;QUICK.Claim.Item&gt;"/>
        <ns4:element name="additionalMaterials" type="list&lt;System.Code&gt;"/>
        <ns4:element name="missingTeeth" type="list&lt;QUICK.Claim.MissingTeeth&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.Supplement" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="productName" type="System.String"/>
        <ns4:element name="scheduled" type="QUICK.Timing"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="instruction" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetric" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="unit" type="System.Concept"/>
        <ns4:element name="source" type="System.Any"/>
        <ns4:element name="parent" type="System.Any"/>
        <ns4:element name="operationalStatus" type="QUICK.DeviceMetricOperationalStatus"/>
        <ns4:element name="color" type="QUICK.DeviceMetricColor"/>
        <ns4:element name="category" type="QUICK.DeviceMetricCategory"/>
        <ns4:element name="measurementPeriod" type="QUICK.Timing"/>
        <ns4:element name="calibration" type="list&lt;QUICK.DeviceMetric.Calibration&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Security" baseType="QUICK.BackboneElement">
        <ns4:element name="cors" type="System.Boolean"/>
        <ns4:element name="service" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="certificate" type="list&lt;QUICK.Conformance.Certificate&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministration" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="medicationadministration-qicore-qicore-medicationadministration" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="status" type="QUICK.MedicationAdministrationStatus"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="practitioner" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="prescription" type="System.Any"/>
        <ns4:element name="wasNotGiven" type="System.Boolean"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reasonGiven" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="effectiveTimeDateTime" type="System.DateTime"/>
        <ns4:element name="effectiveTimePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="medication" type="System.Any"/>
        <ns4:element name="device" type="list&lt;System.Any&gt;"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="dosage" type="QUICK.MedicationAdministration.Dosage"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:SimpleTypeInfo" name="xs.base64Binary" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Supply" baseType="QUICK.DomainResource">
        <ns4:element name="kind" type="System.Concept"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.SupplyStatus"/>
        <ns4:element name="orderedItem" type="System.Any"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="dispense" type="list&lt;QUICK.Supply.Dispense&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequest" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="deviceuserequest-qicore-qicore-deviceuserequest" primaryCodePath="device.type">
        <ns4:element name="bodySiteCodeableConcept" type="System.Concept"/>
        <ns4:element name="bodySiteReference" type="System.Any"/>
        <ns4:element name="status" type="QUICK.DeviceUseRequestStatus"/>
        <ns4:element name="device" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="prnReason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="timingTiming" type="QUICK.Timing"/>
        <ns4:element name="timingPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="timingDateTime" type="System.DateTime"/>
        <ns4:element name="priority" type="QUICK.DeviceUseRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Detail" baseType="QUICK.BackboneElement">
        <ns4:element name="category" type="QUICK.CarePlanActivityCategory"/>
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="reasonCodeableConcept" type="System.Concept"/>
        <ns4:element name="reasonReference" type="System.Any"/>
        <ns4:element name="goal" type="list&lt;System.Any&gt;"/>
        <ns4:element name="status" type="QUICK.CarePlanActivityStatus"/>
        <ns4:element name="statusReason" type="System.Concept"/>
        <ns4:element name="prohibited" type="System.Boolean"/>
        <ns4:element name="scheduledTiming" type="QUICK.Timing"/>
        <ns4:element name="scheduledPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="scheduledString" type="System.String"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="performer" type="list&lt;System.Any&gt;"/>
        <ns4:element name="product" type="System.Any"/>
        <ns4:element name="dailyAmount" type="System.Quantity"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="note" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EpisodeOfCareStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OrderResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="who" type="System.Any"/>
        <ns4:element name="authorityCodeableConcept" type="System.Concept"/>
        <ns4:element name="authorityReference" type="System.Any"/>
        <ns4:element name="orderStatus" type="QUICK.OrderStatus"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="fulfillment" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseRequestPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
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
        <ns4:element name="strength" type="QUICK.BindingStrength"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="valueSetBoolean" type="System.Boolean"/>
        <ns4:element name="valueSetInteger" type="System.Integer"/>
        <ns4:element name="valueSetDecimal" type="System.Decimal"/>
        <ns4:element name="valueSetBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="valueSetInstant" type="System.DateTime"/>
        <ns4:element name="valueSetString" type="System.String"/>
        <ns4:element name="valueSetUri" type="System.String"/>
        <ns4:element name="valueSetDate" type="System.DateTime"/>
        <ns4:element name="valueSetDateTime" type="System.DateTime"/>
        <ns4:element name="valueSetTime" type="System.Time"/>
        <ns4:element name="valueSetCode" type="System.String"/>
        <ns4:element name="valueSetOid" type="System.String"/>
        <ns4:element name="valueSetUuid" type="QUICK.uuid"/>
        <ns4:element name="valueSetId" type="System.String"/>
        <ns4:element name="valueSetUnsignedInt" type="System.Integer"/>
        <ns4:element name="valueSetPositiveInt" type="System.Integer"/>
        <ns4:element name="valueSetAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueSetIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="valueSetCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueSetCoding" type="System.Code"/>
        <ns4:element name="valueSetQuantity" type="System.Quantity"/>
        <ns4:element name="valueSetRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="valueSetPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="valueSetRatio" type="QUICK.Ratio"/>
        <ns4:element name="valueSetReference" type="System.Any"/>
        <ns4:element name="valueSetSampledData" type="QUICK.SampledData"/>
        <ns4:element name="valueSetSignature" type="QUICK.Signature"/>
        <ns4:element name="valueSetHumanName" type="QUICK.HumanName"/>
        <ns4:element name="valueSetAddress" type="QUICK.Address"/>
        <ns4:element name="valueSetContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="valueSetTiming" type="QUICK.Timing"/>
        <ns4:element name="valueSetMeta" type="QUICK.Meta"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventObjectRole" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Encounter.Hospitalization" baseType="QUICK.BackboneElement">
        <ns4:element name="preAdmissionIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="origin" type="System.Any"/>
        <ns4:element name="admitSource" type="System.Concept"/>
        <ns4:element name="dietPreference" type="System.Concept"/>
        <ns4:element name="specialCourtesy" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="specialArrangement" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="destination" type="System.Any"/>
        <ns4:element name="dischargeDisposition" type="System.Concept"/>
        <ns4:element name="dischargeDiagnosis" type="System.Any"/>
        <ns4:element name="reAdmission" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrderPriority" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlanActivityStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Compose" baseType="QUICK.BackboneElement">
        <ns4:element name="import" type="list&lt;System.String&gt;"/>
        <ns4:element name="include" type="list&lt;QUICK.ValueSet.Include&gt;"/>
        <ns4:element name="exclude" type="list&lt;QUICK.ValueSet.Include&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LocationMode" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationDefinition.Parameter" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="use" type="QUICK.OperationParameterUse"/>
        <ns4:element name="min" type="System.Integer"/>
        <ns4:element name="max" type="System.String"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="profile" type="System.Any"/>
        <ns4:element name="part" type="list&lt;QUICK.OperationDefinition.Part&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCriticality" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Media" baseType="QUICK.DomainResource">
        <ns4:element name="type" type="QUICK.DigitalMediaType"/>
        <ns4:element name="subtype" type="System.Concept"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="operator" type="System.Any"/>
        <ns4:element name="view" type="System.Concept"/>
        <ns4:element name="deviceName" type="System.String"/>
        <ns4:element name="height" type="System.Integer"/>
        <ns4:element name="width" type="System.Integer"/>
        <ns4:element name="frames" type="System.Integer"/>
        <ns4:element name="duration" type="System.Integer"/>
        <ns4:element name="content" type="QUICK.Attachment"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CommunicationRequestStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Organization" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="organization-qicore-qicore-organization" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="partOf" type="System.Any"/>
        <ns4:element name="contact" type="list&lt;QUICK.Organization.Contact&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Signer" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="party" type="System.Any"/>
        <ns4:element name="signature" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Ingredient" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="System.Any"/>
        <ns4:element name="amount" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Designation" baseType="QUICK.BackboneElement">
        <ns4:element name="language" type="System.String"/>
        <ns4:element name="use" type="System.Code"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Goal.Outcome" baseType="QUICK.BackboneElement">
        <ns4:element name="resultCodeableConcept" type="System.Concept"/>
        <ns4:element name="resultReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SubscriptionChannelType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.TypeRestfulInteraction" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceMetricCalibrationState" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Location.Position" baseType="QUICK.BackboneElement">
        <ns4:element name="longitude" type="System.Decimal"/>
        <ns4:element name="latitude" type="System.Decimal"/>
        <ns4:element name="altitude" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Parameters.Parameter" baseType="QUICK.Element">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueInteger" type="System.Integer"/>
        <ns4:element name="valueDecimal" type="System.Decimal"/>
        <ns4:element name="valueBase64Binary" type="QUICK.base64Binary"/>
        <ns4:element name="valueInstant" type="System.DateTime"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueUri" type="System.String"/>
        <ns4:element name="valueDate" type="System.DateTime"/>
        <ns4:element name="valueDateTime" type="System.DateTime"/>
        <ns4:element name="valueTime" type="System.Time"/>
        <ns4:element name="valueCode" type="System.String"/>
        <ns4:element name="valueOid" type="System.String"/>
        <ns4:element name="valueUuid" type="QUICK.uuid"/>
        <ns4:element name="valueId" type="System.String"/>
        <ns4:element name="valueUnsignedInt" type="System.Integer"/>
        <ns4:element name="valuePositiveInt" type="System.Integer"/>
        <ns4:element name="valueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueIdentifier" type="QUICK.Identifier"/>
        <ns4:element name="valueCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueCoding" type="System.Code"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="valuePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="valueRatio" type="QUICK.Ratio"/>
        <ns4:element name="valueReference" type="System.Any"/>
        <ns4:element name="valueSampledData" type="QUICK.SampledData"/>
        <ns4:element name="valueSignature" type="QUICK.Signature"/>
        <ns4:element name="valueHumanName" type="QUICK.HumanName"/>
        <ns4:element name="valueAddress" type="QUICK.Address"/>
        <ns4:element name="valueContactPoint" type="QUICK.ContactPoint"/>
        <ns4:element name="valueTiming" type="QUICK.Timing"/>
        <ns4:element name="valueMeta" type="QUICK.Meta"/>
        <ns4:element name="resource" type="QUICK.ResourceContainer"/>
        <ns4:element name="part" type="list&lt;QUICK.Parameters.Part&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AppointmentResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="appointment" type="System.Any"/>
        <ns4:element name="participantType" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="System.Any"/>
        <ns4:element name="participantStatus" type="QUICK.ParticipantStatus"/>
        <ns4:element name="comment" type="System.String"/>
        <ns4:element name="start" type="System.DateTime"/>
        <ns4:element name="end" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.uuid" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalImpression.RuledOut" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="System.Concept"/>
        <ns4:element name="reason" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Flag" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="flag-qicore-qicore-flag" primaryCodePath="code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="category" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.FlagStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="code" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ContactPointUse" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministrationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.MissingTeeth" baseType="QUICK.BackboneElement">
        <ns4:element name="tooth" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="extractionDate" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Immunization.Explanation" baseType="QUICK.BackboneElement">
        <ns4:element name="reason" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reasonNotGiven" type="list&lt;System.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingObjectSelection.Frames" baseType="QUICK.BackboneElement">
        <ns4:element name="frameNumbers" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="url" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.AddItem" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="QUICK.Money"/>
        <ns4:element name="noteNumberLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication3&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.ClaimResponse.Detail1&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="useContext" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.DataElement.Contact&gt;"/>
        <ns4:element name="specificity" type="QUICK.DataElementSpecificity"/>
        <ns4:element name="mapping" type="list&lt;QUICK.DataElement.Mapping&gt;"/>
        <ns4:element name="element" type="list&lt;QUICK.ElementDefinition&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Transaction" baseType="QUICK.BackboneElement">
        <ns4:element name="method" type="QUICK.HTTPVerb"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="ifNoneMatch" type="System.String"/>
        <ns4:element name="ifMatch" type="System.String"/>
        <ns4:element name="ifModifiedSince" type="System.DateTime"/>
        <ns4:element name="ifNoneExist" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder.EnteralFormula" baseType="QUICK.BackboneElement">
        <ns4:element name="administrationInstructions" type="System.String"/>
        <ns4:element name="baseFormulaType" type="System.Concept"/>
        <ns4:element name="baseFormulaProductName" type="System.String"/>
        <ns4:element name="scheduled" type="QUICK.Timing"/>
        <ns4:element name="additiveType" type="System.Concept"/>
        <ns4:element name="additiveProductName" type="System.String"/>
        <ns4:element name="caloricDensity" type="System.Quantity"/>
        <ns4:element name="routeofAdministration" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="rateAdjustment" type="System.Quantity"/>
        <ns4:element name="maxVolumeToDeliver" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceComponent.ProductionSpecification" baseType="QUICK.BackboneElement">
        <ns4:element name="specType" type="System.Concept"/>
        <ns4:element name="componentId" type="QUICK.Identifier"/>
        <ns4:element name="productionSpec" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReportStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.SearchParam" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="System.String"/>
        <ns4:element name="type" type="QUICK.SearchParamType"/>
        <ns4:element name="documentation" type="System.String"/>
        <ns4:element name="target" type="list&lt;System.String&gt;"/>
        <ns4:element name="chain" type="list&lt;System.String&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.DosageInstruction" baseType="QUICK.BackboneElement">
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="additionalInstructions" type="System.Concept"/>
        <ns4:element name="scheduledDateTime" type="System.DateTime"/>
        <ns4:element name="scheduledPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="scheduledTiming" type="QUICK.Timing"/>
        <ns4:element name="asNeededBoolean" type="System.Boolean"/>
        <ns4:element name="asNeededCodeableConcept" type="System.Concept"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="doseRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="doseQuantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
        <ns4:element name="maxDosePerPeriod" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Friendly" baseType="QUICK.BackboneElement">
        <ns4:element name="contentAttachment" type="QUICK.Attachment"/>
        <ns4:element name="contentReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Group.Characteristic" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="valueCodeableConcept" type="System.Concept"/>
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="exclude" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipantStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRequest" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="procedurerequest-qicore-qicore-procedurerequest" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="bodySite" type="list&lt;QUICK.ProcedureRequest.BodySite&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="timingDateTime" type="System.DateTime"/>
        <ns4:element name="timingPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="timingTiming" type="QUICK.Timing"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="performer" type="System.Any"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="asNeededBoolean" type="System.Boolean"/>
        <ns4:element name="asNeededCodeableConcept" type="System.Concept"/>
        <ns4:element name="orderedOn" type="System.DateTime"/>
        <ns4:element name="orderer" type="System.Any"/>
        <ns4:element name="priority" type="QUICK.ProcedureRequestPriority"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.SubDetail" baseType="QUICK.BackboneElement">
        <ns4:element name="sequenceLinkId" type="System.Integer"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication2&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Event" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="category" type="QUICK.MessageSignificanceCategory"/>
        <ns4:element name="mode" type="QUICK.ConformanceEventMode"/>
        <ns4:element name="protocol" type="list&lt;System.Code&gt;"/>
        <ns4:element name="focus" type="System.String"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="response" type="System.Any"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Bundle.Link" baseType="QUICK.BackboneElement">
        <ns4:element name="relation" type="System.String"/>
        <ns4:element name="url" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Payee" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="person" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Implementation" baseType="QUICK.BackboneElement">
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="url" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.List.Entry" baseType="QUICK.BackboneElement">
        <ns4:element name="flag" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="deleted" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="item" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EncounterState" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcedureRelationshipType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.QuestionnaireAnswers.Answer" baseType="QUICK.BackboneElement">
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueDecimal" type="System.Decimal"/>
        <ns4:element name="valueInteger" type="System.Integer"/>
        <ns4:element name="valueDate" type="System.DateTime"/>
        <ns4:element name="valueDateTime" type="System.DateTime"/>
        <ns4:element name="valueInstant" type="System.DateTime"/>
        <ns4:element name="valueTime" type="System.Time"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueUri" type="System.String"/>
        <ns4:element name="valueAttachment" type="QUICK.Attachment"/>
        <ns4:element name="valueCoding" type="System.Code"/>
        <ns4:element name="valueQuantity" type="System.Quantity"/>
        <ns4:element name="valueReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Certificate" baseType="QUICK.BackboneElement">
        <ns4:element name="type" type="System.String"/>
        <ns4:element name="blob" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.LocationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NoteType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.HealthcareService.AvailableTime" baseType="QUICK.BackboneElement">
        <ns4:element name="daysOfWeek" type="list&lt;QUICK.DaysOfWeek&gt;"/>
        <ns4:element name="allDay" type="System.Boolean"/>
        <ns4:element name="availableStartTime" type="System.Time"/>
        <ns4:element name="availableEndTime" type="System.Time"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Medication.Content" baseType="QUICK.BackboneElement">
        <ns4:element name="item" type="System.Any"/>
        <ns4:element name="amount" type="System.Quantity"/>
    </ns4:typeInfo>
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DeviceUseStatement" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="deviceusestatement-qicore-qicore-deviceusestatement" primaryCodePath="device.type">
        <ns4:element name="bodySiteCodeableConcept" type="System.Concept"/>
        <ns4:element name="bodySiteReference" type="System.Any"/>
        <ns4:element name="whenUsed" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="device" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="indication" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="notes" type="list&lt;System.String&gt;"/>
        <ns4:element name="recordedOn" type="System.DateTime"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="timingTiming" type="QUICK.Timing"/>
        <ns4:element name="timingPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="timingDateTime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Count" baseType="System.Quantity">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="QUICK.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageSignificanceCategory" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Operation" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="definition" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Binary" baseType="QUICK.Resource">
        <ns4:element name="contentType" type="System.String"/>
        <ns4:element name="content" type="QUICK.base64Binary"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="status" type="QUICK.CarePlanStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="author" type="list&lt;System.Any&gt;"/>
        <ns4:element name="modified" type="System.DateTime"/>
        <ns4:element name="category" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="concern" type="list&lt;System.Any&gt;"/>
        <ns4:element name="support" type="list&lt;System.Any&gt;"/>
        <ns4:element name="participant" type="list&lt;QUICK.CarePlan.Participant&gt;"/>
        <ns4:element name="goal" type="list&lt;System.Any&gt;"/>
        <ns4:element name="activity" type="list&lt;QUICK.CarePlan.Activity&gt;"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent" baseType="QUICK.DomainResource">
        <ns4:element name="event" type="QUICK.AuditEvent.Event"/>
        <ns4:element name="participant" type="list&lt;QUICK.AuditEvent.Participant&gt;"/>
        <ns4:element name="source" type="QUICK.AuditEvent.Source"/>
        <ns4:element name="object" type="list&lt;QUICK.AuditEvent.Object&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DataElement.Contact" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.RelatesTo" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.DocumentRelationshipType"/>
        <ns4:element name="target" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ImagingObjectSelection.Series" baseType="QUICK.BackboneElement">
        <ns4:element name="uid" type="System.String"/>
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="instance" type="list&lt;QUICK.ImagingObjectSelection.Instance&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Contract.Rule" baseType="QUICK.BackboneElement">
        <ns4:element name="contentAttachment" type="QUICK.Attachment"/>
        <ns4:element name="contentReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Source" baseType="QUICK.BackboneElement">
        <ns4:element name="site" type="System.String"/>
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="type" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SystemRestfulInteraction" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AnswerFormat" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="useContext" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="immutable" type="System.Boolean"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.ValueSet.Contact&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="extensible" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="lockedDate" type="System.DateTime"/>
        <ns4:element name="define" type="QUICK.ValueSet.Define"/>
        <ns4:element name="compose" type="QUICK.ValueSet.Compose"/>
        <ns4:element name="expansion" type="QUICK.ValueSet.Expansion"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance.Interaction1" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="QUICK.SystemRestfulInteraction"/>
        <ns4:element name="documentation" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Type" baseType="QUICK.Element">
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="profile" type="System.String"/>
        <ns4:element name="aggregation" type="list&lt;QUICK.AggregationMode&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Conformance" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.Conformance.Contact&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="software" type="QUICK.Conformance.Software"/>
        <ns4:element name="implementation" type="QUICK.Conformance.Implementation"/>
        <ns4:element name="fhirVersion" type="System.String"/>
        <ns4:element name="acceptUnknown" type="System.Boolean"/>
        <ns4:element name="format" type="list&lt;System.String&gt;"/>
        <ns4:element name="profile" type="list&lt;System.Any&gt;"/>
        <ns4:element name="rest" type="list&lt;QUICK.Conformance.Rest&gt;"/>
        <ns4:element name="messaging" type="list&lt;QUICK.Conformance.Messaging&gt;"/>
        <ns4:element name="document" type="list&lt;QUICK.Conformance.Document&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConformanceResourceStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ConceptMap" baseType="QUICK.DomainResource">
        <ns4:element name="url" type="System.String"/>
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="useContext" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="publisher" type="System.String"/>
        <ns4:element name="contact" type="list&lt;QUICK.ConceptMap.Contact&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="requirements" type="System.String"/>
        <ns4:element name="copyright" type="System.String"/>
        <ns4:element name="status" type="QUICK.ConformanceResourceStatus"/>
        <ns4:element name="experimental" type="System.Boolean"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="sourceUri" type="System.String"/>
        <ns4:element name="sourceReference" type="System.Any"/>
        <ns4:element name="targetUri" type="System.String"/>
        <ns4:element name="targetReference" type="System.Any"/>
        <ns4:element name="element" type="list&lt;QUICK.ConceptMap.Element&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Procedure.Device" baseType="QUICK.BackboneElement">
        <ns4:element name="action" type="System.Concept"/>
        <ns4:element name="manipulated" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.NutritionOrder" baseType="QUICK.DomainResource">
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="orderer" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="dateTime" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.NutritionOrderStatus"/>
        <ns4:element name="allergyIntolerance" type="list&lt;System.Any&gt;"/>
        <ns4:element name="foodPreferenceModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="excludeFoodModifier" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="oralDiet" type="QUICK.NutritionOrder.OralDiet"/>
        <ns4:element name="supplement" type="list&lt;QUICK.NutritionOrder.Supplement&gt;"/>
        <ns4:element name="enteralFormula" type="QUICK.NutritionOrder.EnteralFormula"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Money" baseType="System.Quantity">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="comparator" type="QUICK.QuantityComparator"/>
        <ns4:element name="units" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="code" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationAdministration.Dosage" baseType="QUICK.BackboneElement">
        <ns4:element name="text" type="System.String"/>
        <ns4:element name="site" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="rate" type="QUICK.Ratio"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Patient" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="patient-qicore-qicore-patient">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="list&lt;QUICK.HumanName&gt;"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="gender" type="System.String"/>
        <ns4:element name="birthDate" type="System.DateTime"/>
        <ns4:element name="deceasedBoolean" type="System.Boolean"/>
        <ns4:element name="deceasedDateTime" type="System.DateTime"/>
        <ns4:element name="address" type="list&lt;QUICK.Address&gt;"/>
        <ns4:element name="maritalStatus" type="System.Concept"/>
        <ns4:element name="multipleBirthBoolean" type="System.Boolean"/>
        <ns4:element name="multipleBirthInteger" type="System.Integer"/>
        <ns4:element name="photo" type="list&lt;QUICK.Attachment&gt;"/>
        <ns4:element name="contact" type="list&lt;QUICK.Patient.Contact&gt;"/>
        <ns4:element name="animal" type="QUICK.Patient.Animal"/>
        <ns4:element name="communication" type="list&lt;QUICK.Patient.Communication&gt;"/>
        <ns4:element name="careProvider" type="list&lt;System.Any&gt;"/>
        <ns4:element name="managingOrganization" type="System.Any"/>
        <ns4:element name="link" type="list&lt;QUICK.Patient.Link&gt;"/>
        <ns4:element name="active" type="System.Boolean"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClaimResponse.Detail1" baseType="QUICK.BackboneElement">
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="fee" type="QUICK.Money"/>
        <ns4:element name="adjudication" type="list&lt;QUICK.ClaimResponse.Adjudication4&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="medicationprescription-qicore-qicore-medicationprescription" primaryCodePath="medication.code">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="dateWritten" type="System.DateTime"/>
        <ns4:element name="status" type="QUICK.MedicationPrescriptionStatus"/>
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="prescriber" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="reasonCodeableConcept" type="System.Concept"/>
        <ns4:element name="reasonReference" type="System.Any"/>
        <ns4:element name="note" type="System.String"/>
        <ns4:element name="medication" type="System.Any"/>
        <ns4:element name="dosageInstruction" type="list&lt;QUICK.MedicationPrescription.DosageInstruction&gt;"/>
        <ns4:element name="dispense" type="QUICK.MedicationPrescription.Dispense"/>
        <ns4:element name="substitution" type="QUICK.MedicationPrescription.Substitution"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProcessResponse" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="outcome" type="System.Code"/>
        <ns4:element name="disposition" type="System.String"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="requestProvider" type="System.Any"/>
        <ns4:element name="requestOrganization" type="System.Any"/>
        <ns4:element name="form" type="System.Code"/>
        <ns4:element name="notes" type="list&lt;QUICK.ProcessResponse.Notes&gt;"/>
        <ns4:element name="error" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ElementDefinition.Mapping" baseType="QUICK.Element">
        <ns4:element name="identity" type="System.String"/>
        <ns4:element name="language" type="System.String"/>
        <ns4:element name="map" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Specimen.Container" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="capacity" type="System.Quantity"/>
        <ns4:element name="specimenQuantity" type="System.Quantity"/>
        <ns4:element name="additiveCodeableConcept" type="System.Concept"/>
        <ns4:element name="additiveReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Claim.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="diagnosisLinkId" type="list&lt;System.Integer&gt;"/>
        <ns4:element name="service" type="System.Code"/>
        <ns4:element name="serviceDate" type="System.DateTime"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="unitPrice" type="QUICK.Money"/>
        <ns4:element name="factor" type="System.Decimal"/>
        <ns4:element name="points" type="System.Decimal"/>
        <ns4:element name="net" type="QUICK.Money"/>
        <ns4:element name="udi" type="System.Code"/>
        <ns4:element name="bodySite" type="System.Code"/>
        <ns4:element name="subSite" type="list&lt;System.Code&gt;"/>
        <ns4:element name="modifier" type="list&lt;System.Code&gt;"/>
        <ns4:element name="detail" type="list&lt;QUICK.Claim.Detail&gt;"/>
        <ns4:element name="prosthesis" type="QUICK.Claim.Prosthesis"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventParticipantNetworkType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Define" baseType="QUICK.BackboneElement">
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
        <ns4:element name="caseSensitive" type="System.Boolean"/>
        <ns4:element name="concept" type="list&lt;QUICK.ValueSet.Concept&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ObservationStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AllergyIntoleranceCertainty" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="timestamp" type="System.DateTime"/>
        <ns4:element name="event" type="System.Code"/>
        <ns4:element name="response" type="QUICK.MessageHeader.Response"/>
        <ns4:element name="source" type="QUICK.MessageHeader.Source"/>
        <ns4:element name="destination" type="list&lt;QUICK.MessageHeader.Destination&gt;"/>
        <ns4:element name="enterer" type="System.Any"/>
        <ns4:element name="author" type="System.Any"/>
        <ns4:element name="receiver" type="System.Any"/>
        <ns4:element name="responsible" type="System.Any"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="data" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.OperationOutcome" baseType="QUICK.DomainResource">
        <ns4:element name="issue" type="list&lt;QUICK.OperationOutcome.Issue&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MedicationPrescription.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="medication" type="System.Any"/>
        <ns4:element name="validityPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="numberOfRepeatsAllowed" type="System.Integer"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="expectedSupplyDuration" type="QUICK.Duration"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ResourceVersionPolicy" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ReferralStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ValueSet.Parameter" baseType="QUICK.BackboneElement">
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="valueString" type="System.String"/>
        <ns4:element name="valueBoolean" type="System.Boolean"/>
        <ns4:element name="valueInteger" type="System.Integer"/>
        <ns4:element name="valueDecimal" type="System.Decimal"/>
        <ns4:element name="valueUri" type="System.String"/>
        <ns4:element name="valueCode" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Element" baseType="System.Any">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="extension" type="list&lt;QUICK.Extension&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEventObjectLifecycle" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.PaymentNotice" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="ruleset" type="System.Code"/>
        <ns4:element name="originalRuleset" type="System.Code"/>
        <ns4:element name="created" type="System.DateTime"/>
        <ns4:element name="target" type="System.Any"/>
        <ns4:element name="provider" type="System.Any"/>
        <ns4:element name="organization" type="System.Any"/>
        <ns4:element name="request" type="System.Any"/>
        <ns4:element name="response" type="System.Any"/>
        <ns4:element name="paymentStatus" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ParticipantRequired" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentManifest.Related" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="ref" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ClinicalImpression" baseType="QUICK.DomainResource">
        <ns4:element name="patient" type="System.Any"/>
        <ns4:element name="assessor" type="System.Any"/>
        <ns4:element name="status" type="QUICK.ClinicalImpressionStatus"/>
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="previous" type="System.Any"/>
        <ns4:element name="problem" type="list&lt;System.Any&gt;"/>
        <ns4:element name="triggerCodeableConcept" type="System.Concept"/>
        <ns4:element name="triggerReference" type="System.Any"/>
        <ns4:element name="investigations" type="list&lt;QUICK.ClinicalImpression.Investigations&gt;"/>
        <ns4:element name="protocol" type="System.String"/>
        <ns4:element name="summary" type="System.String"/>
        <ns4:element name="finding" type="list&lt;QUICK.ClinicalImpression.Finding&gt;"/>
        <ns4:element name="resolved" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="ruledOut" type="list&lt;QUICK.ClinicalImpression.RuledOut&gt;"/>
        <ns4:element name="prognosis" type="System.String"/>
        <ns4:element name="plan" type="list&lt;System.Any&gt;"/>
        <ns4:element name="action" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentReference.Context" baseType="QUICK.BackboneElement">
        <ns4:element name="event" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="facilityType" type="System.Concept"/>
        <ns4:element name="practiceSetting" type="System.Concept"/>
        <ns4:element name="sourcePatientInfo" type="System.Any"/>
        <ns4:element name="related" type="list&lt;QUICK.DocumentReference.Related&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.VisionEyes" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.VisionPrescription.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="product" type="System.Code"/>
        <ns4:element name="eye" type="QUICK.VisionEyes"/>
        <ns4:element name="sphere" type="System.Decimal"/>
        <ns4:element name="cylinder" type="System.Decimal"/>
        <ns4:element name="axis" type="System.Integer"/>
        <ns4:element name="prism" type="System.Decimal"/>
        <ns4:element name="base" type="QUICK.VisionBase"/>
        <ns4:element name="add" type="System.Decimal"/>
        <ns4:element name="power" type="System.Decimal"/>
        <ns4:element name="backCurve" type="System.Decimal"/>
        <ns4:element name="diameter" type="System.Decimal"/>
        <ns4:element name="duration" type="System.Quantity"/>
        <ns4:element name="color" type="System.String"/>
        <ns4:element name="brand" type="System.String"/>
        <ns4:element name="notes" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticOrder.Item" baseType="QUICK.BackboneElement">
        <ns4:element name="code" type="System.Concept"/>
        <ns4:element name="specimen" type="list&lt;System.Any&gt;"/>
        <ns4:element name="bodySiteCodeableConcept" type="System.Concept"/>
        <ns4:element name="bodySiteReference" type="System.Any"/>
        <ns4:element name="status" type="System.String"/>
        <ns4:element name="event" type="list&lt;QUICK.DiagnosticOrder.Event&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DigitalMediaType" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Supply.Dispense" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="QUICK.Identifier"/>
        <ns4:element name="status" type="QUICK.SupplyDispenseStatus"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="quantity" type="System.Quantity"/>
        <ns4:element name="suppliedItem" type="System.Any"/>
        <ns4:element name="supplier" type="System.Any"/>
        <ns4:element name="whenPrepared" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="whenHandedOver" type="System.DateTime"/>
        <ns4:element name="destination" type="System.Any"/>
        <ns4:element name="receiver" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Coverage" baseType="QUICK.DomainResource">
        <ns4:element name="issuer" type="System.Any"/>
        <ns4:element name="bin" type="QUICK.Identifier"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="subscriberId" type="QUICK.Identifier"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="group" type="System.String"/>
        <ns4:element name="plan" type="System.String"/>
        <ns4:element name="subPlan" type="System.String"/>
        <ns4:element name="dependent" type="System.Integer"/>
        <ns4:element name="sequence" type="System.Integer"/>
        <ns4:element name="subscriber" type="System.Any"/>
        <ns4:element name="network" type="QUICK.Identifier"/>
        <ns4:element name="contract" type="list&lt;System.Any&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.AuditEvent.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="reference" type="System.Any"/>
        <ns4:element name="userId" type="System.String"/>
        <ns4:element name="altId" type="System.String"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="requestor" type="System.Boolean"/>
        <ns4:element name="location" type="System.Any"/>
        <ns4:element name="policy" type="list&lt;System.String&gt;"/>
        <ns4:element name="media" type="System.Code"/>
        <ns4:element name="network" type="QUICK.AuditEvent.Network"/>
        <ns4:element name="purposeOfUse" type="list&lt;System.Code&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DocumentManifest.Content" baseType="QUICK.BackboneElement">
        <ns4:element name="pAttachment" type="QUICK.Attachment"/>
        <ns4:element name="pReference" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.MessageHeader.Response" baseType="QUICK.BackboneElement">
        <ns4:element name="identifier" type="System.String"/>
        <ns4:element name="code" type="QUICK.ResponseType"/>
        <ns4:element name="details" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.DiagnosticReport" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="diagnosticreport-qicore-qicore-diagnosticreport" primaryCodePath="name">
        <ns4:element name="name" type="System.Concept"/>
        <ns4:element name="status" type="QUICK.DiagnosticReportStatus"/>
        <ns4:element name="issued" type="System.DateTime"/>
        <ns4:element name="subject" type="System.Any"/>
        <ns4:element name="performer" type="System.Any"/>
        <ns4:element name="encounter" type="System.Any"/>
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="requestDetail" type="list&lt;System.Any&gt;"/>
        <ns4:element name="serviceCategory" type="System.Concept"/>
        <ns4:element name="diagnosticDateTime" type="System.DateTime"/>
        <ns4:element name="diagnosticPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="specimen" type="list&lt;System.Any&gt;"/>
        <ns4:element name="result" type="list&lt;System.Any&gt;"/>
        <ns4:element name="imagingStudy" type="list&lt;System.Any&gt;"/>
        <ns4:element name="image" type="list&lt;QUICK.DiagnosticReport.Image&gt;"/>
        <ns4:element name="conclusion" type="System.String"/>
        <ns4:element name="codedDiagnosis" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="presentedForm" type="list&lt;QUICK.Attachment&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EpisodeOfCare.StatusHistory" baseType="QUICK.BackboneElement">
        <ns4:element name="status" type="QUICK.EpisodeOfCareStatus"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.SubscriptionStatus" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.EpisodeOfCare.CareTeam" baseType="QUICK.BackboneElement">
        <ns4:element name="member" type="System.Any"/>
        <ns4:element name="role" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="period" type="interval&lt;System.DateTime&gt;"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.CarePlan.Participant" baseType="QUICK.BackboneElement">
        <ns4:element name="role" type="System.Concept"/>
        <ns4:element name="member" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Schedule" baseType="QUICK.DomainResource">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="type" type="list&lt;System.Concept&gt;"/>
        <ns4:element name="actor" type="System.Any"/>
        <ns4:element name="planningHorizon" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="comment" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.Location" baseType="QUICK.DomainResource"
                  retrievable="true" identifier="location-qicore-qicore-location" primaryCodePath="type">
        <ns4:element name="identifier" type="list&lt;QUICK.Identifier&gt;"/>
        <ns4:element name="name" type="System.String"/>
        <ns4:element name="description" type="System.String"/>
        <ns4:element name="mode" type="QUICK.LocationMode"/>
        <ns4:element name="type" type="System.Concept"/>
        <ns4:element name="telecom" type="list&lt;QUICK.ContactPoint&gt;"/>
        <ns4:element name="address" type="QUICK.Address"/>
        <ns4:element name="physicalType" type="System.Concept"/>
        <ns4:element name="position" type="QUICK.Location.Position"/>
        <ns4:element name="managingOrganization" type="System.Any"/>
        <ns4:element name="partOf" type="System.Any"/>
        <ns4:element name="status" type="QUICK.LocationStatus"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QUICK.ProvenanceEntityRole" baseType="QUICK.Element">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
</ns4:modelInfo>''';