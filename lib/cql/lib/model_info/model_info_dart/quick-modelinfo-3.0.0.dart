const quickmodelinfo300 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="urn:hl7-org:elm-modelinfo:r1 modelinfo.xsd" xmlns:quick="http://cimi.hl7.org"
 xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" name="QUICK"
 patientBirthDatePropertyName="birthDate" patientClassName="Patient" targetQualifier="quick"
 url="http://cimi.hl7.org" version="3.0.0">
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.MedicationDoseQuantity" name="QUICK.DoseRange" retrievable="false">
    <ns4:element name="value">
      <ns4:typeSpecifier pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Goal" retrievable="false">
    <ns4:element name="lifecycleStatus" type="System.String"/>
    <ns4:element name="description" type="System.Concept"/>
    <ns4:element name="start">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="addresses">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Condition" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Observation" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="MedicationStatement" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="NutritionRequest" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="ServiceRequest" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="target">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="expressedBy" type="QUICK.Party"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.ProfessionalQualification" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="issuer" type="QUICK.Organization"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.CareRecipient" name="QUICK.Group" primaryCodePath="code" retrievable="true">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="type" type="System.String"/>
    <ns4:element name="actual" type="System.Boolean"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="quantity" type="System.Integer"/>
    <ns4:element name="managingEntity" type="QUICK.Party"/>
    <ns4:element name="characteristic" type="QUICK.GroupCharacteristic"/>
    <ns4:element name="member" type="QUICK.GroupMember"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Finding" retrievable="false">
    <ns4:element name="status" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Reference" retrievable="false">
    <ns4:element name="reference" type="System.String"/>
    <ns4:element name="type" type="System.String"/>
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="display" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.CareGiver" name="QUICK.CareTeam" retrievable="false">
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="subject" type="QUICK.CareRecipient"/>
    <ns4:element name="encounter" type="QUICK.Encounter"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="participant" type="QUICK.Participation"/>
    <ns4:element name="reasonCode" type="System.Concept"/>
    <ns4:element name="reasonReference" type="QUICK.Condition"/>
    <ns4:element name="managingOrganization" type="QUICK.Organization"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="note" type="QUICK.Annotation"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Location" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="operationalStatus" type="System.Code"/>
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="alias" type="System.String"/>
    <ns4:element name="description" type="System.String"/>
    <ns4:element name="mode" type="System.String"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="address" type="QUICK.Address"/>
    <ns4:element name="physicalType" type="System.Concept"/>
    <ns4:element name="position" type="QUICK.GpsLocation"/>
    <ns4:element name="managingOrganization" type="QUICK.Organization"/>
    <ns4:element name="partOf" type="QUICK.Location"/>
    <ns4:element name="hoursOfOperation" type="QUICK.AvailableTime"/>
    <ns4:element name="availabilityExceptions" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.MedicationAdministration" primaryCodePath="medication.code" retrievable="true">
    <ns4:element name="medication" type="QUICK.Medication"/>
    <ns4:element name="dosage" type="QUICK.DosageTaken"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Narrative" retrievable="false">
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="div" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Hospitalization" retrievable="false">
    <ns4:element name="preAdmissionIdentifier" type="QUICK.Identifier"/>
    <ns4:element name="origin">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Location" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Organization" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="admitSource" type="System.Concept"/>
    <ns4:element name="reAdmission" type="System.Concept"/>
    <ns4:element name="dietPreference" type="System.Concept"/>
    <ns4:element name="specialCourtesy" type="System.Concept"/>
    <ns4:element name="specialArrangement" type="System.Concept"/>
    <ns4:element name="destination">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Location" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Organization" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="dischargeDisposition" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Meta" retrievable="false">
    <ns4:element name="versionId" type="System.String"/>
    <ns4:element name="lastUpdated" type="System.DateTime"/>
    <ns4:element name="source" type="System.String"/>
    <ns4:element name="profile" type="System.String"/>
    <ns4:element name="security" type="System.Code"/>
    <ns4:element name="tag" type="System.Code"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DosageTaken" retrievable="false">
    <ns4:element name="text" type="System.String"/>
    <ns4:element name="site" type="System.Concept"/>
    <ns4:element name="route" type="System.Concept"/>
    <ns4:element name="method" type="System.Concept"/>
    <ns4:element name="dose" type="QUICK.DoseQuantity"/>
    <ns4:element name="rate" type="QUICK.MedicationDosePointRate"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DeviceUdiCarrier" retrievable="false">
    <ns4:element name="deviceIdentifier" type="System.String"/>
    <ns4:element name="issuer" type="System.String"/>
    <ns4:element name="jurisdiction" type="System.String"/>
    <ns4:element name="carrierAIDC" type="System.String"/>
    <ns4:element name="carrierHRF" type="System.String"/>
    <ns4:element name="entryType" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.EncounterDiagnosisOrProcedure" retrievable="false">
    <ns4:element name="reference">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Condition" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Procedure" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="use" type="System.Concept"/>
    <ns4:element name="rank" type="System.Integer"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.BackboneElement" name="QUICK.MedicationDoseQuantity" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.AdverseEvent" retrievable="false">
    <ns4:element name="event" type="System.Concept"/>
    <ns4:element name="subject" type="QUICK.Party"/>
    <ns4:element name="date" type="System.DateTime"/>
    <ns4:element name="seriousness" type="System.Concept"/>
    <ns4:element name="severity" type="System.Concept"/>
    <ns4:element name="recorder" type="QUICK.Party"/>
    <ns4:element name="location" type="QUICK.Location"/>
    <ns4:element name="suspectEntity" type="QUICK.SuspectEntity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.Immunization" primaryCodePath="vaccineCode" retrievable="true">
    <ns4:element name="vaccineCode" type="System.Concept"/>
    <ns4:element name="doseQuantity" type="System.Quantity"/>
    <ns4:element name="route" type="System.Concept"/>
    <ns4:element name="primarySource" type="System.Boolean"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Address" retrievable="false">
    <ns4:element name="use" type="System.String"/>
    <ns4:element name="type" type="System.String"/>
    <ns4:element name="text" type="System.String"/>
    <ns4:element name="line" type="System.String"/>
    <ns4:element name="city" type="System.String"/>
    <ns4:element name="district" type="System.String"/>
    <ns4:element name="state" type="System.String"/>
    <ns4:element name="postalCode" type="System.String"/>
    <ns4:element name="country" type="System.String"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.IndividualCareRecipient" name="QUICK.Patient" retrievable="false">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="name" type="QUICK.HumanName"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="gender" type="System.String"/>
    <ns4:element name="birthDate" type="System.DateTime"/>
    <ns4:element name="deceased">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="address" type="QUICK.Address"/>
    <ns4:element name="maritalStatus" type="System.Concept"/>
    <ns4:element name="multipleBirth">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Integer" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="photo" type="QUICK.Attachment"/>
    <ns4:element name="contact" type="QUICK.IndividualContact"/>
    <ns4:element name="communication" type="QUICK.LanguageCompetency"/>
    <ns4:element name="generalPractitioner" type="QUICK.CareGiver"/>
    <ns4:element name="managingOrganization" type="QUICK.Organization"/>
    <ns4:element name="link" type="QUICK.RecordLink"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.Appointment" retrievable="false">
    <ns4:element name="serviceCategory" type="System.Concept"/>
    <ns4:element name="serviceType" type="System.Concept"/>
    <ns4:element name="specialty" type="System.Concept"/>
    <ns4:element name="appointmentTime" type="System.Concept"/>
    <ns4:element name="priority" type="System.Integer"/>
    <ns4:element name="description" type="System.String"/>
    <ns4:element name="supportingInformation" type="QUICK.Resource"/>
    <ns4:element name="start" type="System.DateTime"/>
    <ns4:element name="stop" type="System.DateTime"/>
    <ns4:element name="minutesDuration" type="System.Integer"/>
    <ns4:element name="slot" type="QUICK.Slot"/>
    <ns4:element name="created" type="System.DateTime"/>
    <ns4:element name="comment" type="System.String"/>
    <ns4:element name="patientInstruction" type="System.String"/>
    <ns4:element name="participant" type="QUICK.Participation"/>
    <ns4:element name="requestedPeriod">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.IndividualCareGiver" name="QUICK.PractitionerRole" primaryCodePath="code" retrievable="true">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="practitioner" type="QUICK.Practitioner"/>
    <ns4:element name="organization" type="QUICK.Organization"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="specialty" type="System.Concept"/>
    <ns4:element name="location" type="QUICK.Location"/>
    <ns4:element name="healthcareService" type="QUICK.HealthcareService"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="availableTime" type="QUICK.AvailableTime"/>
    <ns4:element name="notAvailable" type="QUICK.NonAvailability"/>
    <ns4:element name="availabilityExceptions" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Resource" name="QUICK.DomainResource" retrievable="false">
    <ns4:element name="text" type="QUICK.Narrative"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.LanguageCompetency" retrievable="false">
    <ns4:element name="language" type="System.Concept"/>
    <ns4:element name="preferred" type="System.Boolean"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DeviceName" retrievable="false">
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="type" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.RecordLink" retrievable="false">
    <ns4:element name="other" type="QUICK.IndividualCareRecipient"/>
    <ns4:element name="type" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.GroupMember" retrievable="false">
    <ns4:element name="entity" type="QUICK.Party"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="inactive" type="System.Boolean"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.AvailableTime" retrievable="false">
    <ns4:element name="daysOfWeek" type="System.String"/>
    <ns4:element name="allDay" type="System.Boolean"/>
    <ns4:element name="availableStartTime" type="System.Time"/>
    <ns4:element name="availableEndTime" type="System.Time"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Ingredient" retrievable="false">
    <ns4:element name="item">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="DomainResource" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="isActive" type="System.Boolean"/>
    <ns4:element name="strength" type="QUICK.Ratio"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Party" name="QUICK.Device" primaryCodePath="type" retrievable="true">
    <ns4:element name="udiCarrier" type="QUICK.DeviceUdiCarrier"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="deviceName" type="QUICK.DeviceName"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="statusReason" type="System.Concept"/>
    <ns4:element name="patient" type="QUICK.Patient"/>
    <ns4:element name="owner" type="QUICK.Organization"/>
    <ns4:element name="distinctIdentifier" type="System.String"/>
    <ns4:element name="manufacturer" type="System.String"/>
    <ns4:element name="manufactureDate" type="System.DateTime"/>
    <ns4:element name="expirationDate" type="System.DateTime"/>
    <ns4:element name="lotNumber" type="System.String"/>
    <ns4:element name="serialNumber" type="System.String"/>
    <ns4:element name="modelNumber" type="System.String"/>
    <ns4:element name="partNumber" type="System.String"/>
    <ns4:element name="version" type="QUICK.DeviceVersion"/>
    <ns4:element name="contact" type="QUICK.ContactPoint"/>
    <ns4:element name="location" type="QUICK.Location"/>
    <ns4:element name="url" type="System.String"/>
    <ns4:element name="note" type="QUICK.Annotation"/>
    <ns4:element name="safety" type="System.Concept"/>
    <ns4:element name="parent" type="QUICK.Device"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Slot" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="serviceCategory" type="System.Concept"/>
    <ns4:element name="serviceType" type="System.Concept"/>
    <ns4:element name="specialty" type="System.Concept"/>
    <ns4:element name="appointmentType" type="System.Concept"/>
    <ns4:element name="schedule" type="QUICK.Schedule"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="start" type="System.DateTime"/>
    <ns4:element name="end" type="System.DateTime"/>
    <ns4:element name="overbooked" type="System.Boolean"/>
    <ns4:element name="comment" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.IndividualCareRecipient" name="QUICK.RelatedPerson" retrievable="false">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="patient" type="QUICK.Patient"/>
    <ns4:element name="relationship" type="System.Concept"/>
    <ns4:element name="name" type="QUICK.HumanName"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="gender" type="System.String"/>
    <ns4:element name="birthDate" type="System.DateTime"/>
    <ns4:element name="address" type="QUICK.Address"/>
    <ns4:element name="photo" type="QUICK.Attachment"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="communication" type="QUICK.LanguageCompetency"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.GroupCharacteristic" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="value">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Integer" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Ratio" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Time" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="exclude" type="System.Boolean"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.SampledData" retrievable="false">
    <ns4:element name="origin" type="System.Quantity"/>
    <ns4:element name="period" type="System.Decimal"/>
    <ns4:element name="factor" type="System.Decimal"/>
    <ns4:element name="lowerLimit" type="System.Decimal"/>
    <ns4:element name="upperLimit" type="System.Decimal"/>
    <ns4:element name="dimensions" type="System.Integer"/>
    <ns4:element name="data" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.BackboneElement" name="QUICK.MedicationDoseRate" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo baseType="QUICK.Party" name="QUICK.CareGiver" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo baseType="QUICK.Element" name="QUICK.ChoiceElement" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DoseAndRate" retrievable="false">
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="dose" type="QUICK.MedicationDoseQuantity"/>
    <ns4:element name="rate" type="QUICK.MedicationDoseRate"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.Party" name="QUICK.CareRecipient" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo baseType="QUICK.CareGiver" name="QUICK.IndividualCareGiver" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Causality" retrievable="false">
    <ns4:element name="assessment" type="System.Concept"/>
    <ns4:element name="productRelatedness" type="System.String"/>
    <ns4:element name="author" type="QUICK.IndividualCareGiver"/>
    <ns4:element name="method" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.GpsLocation" retrievable="false">
    <ns4:element name="longitude" type="System.Decimal"/>
    <ns4:element name="latitude" type="System.Decimal"/>
    <ns4:element name="altitude" type="System.Decimal"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.MedicationDoseRate" name="QUICK.MedicationDosePointRate" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Contact" retrievable="false">
    <ns4:element name="name" type="QUICK.HumanName"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="address" type="QUICK.Address"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Medication" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="manufacturer" type="QUICK.Organization"/>
    <ns4:element name="form" type="System.Concept"/>
    <ns4:element name="amount" type="QUICK.Ratio"/>
    <ns4:element name="ingredient" type="QUICK.Ingredient"/>
    <ns4:element name="batch" type="QUICK.MedicationBatch"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.Procedure" primaryCodePath="code" retrievable="true">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="outcome" type="System.Concept"/>
    <ns4:element name="bodySite" type="System.Concept"/>
    <ns4:element name="performed">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Timing" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="partOf" type="QUICK.Event"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.CareRecipient" name="QUICK.IndividualCareRecipient" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.MedicationDosePointRate" name="QUICK.RateQuantity" retrievable="false">
    <ns4:element name="value" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.GoalTarget" retrievable="false">
    <ns4:element name="measure" type="System.Concept"/>
    <ns4:element name="detail">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Integer" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Ratio" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Time" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.ContactPoint" retrievable="false">
    <ns4:element name="system" type="System.String"/>
    <ns4:element name="value" type="System.String"/>
    <ns4:element name="use" type="System.String"/>
    <ns4:element name="rank" type="System.Integer"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.MedicationDispense" primaryCodePath="medication.code" retrievable="true">
    <ns4:element name="quantity" type="System.Quantity"/>
    <ns4:element name="daysSupply" type="System.Quantity"/>
    <ns4:element name="dosageInstruction" type="QUICK.DosageInstruction"/>
    <ns4:element name="performer" type="QUICK.Performer"/>
    <ns4:element name="medication" type="QUICK.Medication"/>
    <ns4:element name="fillNumber" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.Request" name="QUICK.NutritionRequest" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Money" retrievable="false">
    <ns4:element name="value" type="System.Decimal"/>
    <ns4:element name="currency" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.DiagnosticReport" retrievable="false">
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="subject" type="QUICK.Party"/>
    <ns4:element name="encounter" type="QUICK.Encounter"/>
    <ns4:element name="effective">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Timing" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="issued" type="System.DateTime"/>
    <ns4:element name="performer" type="QUICK.Party"/>
    <ns4:element name="resultsInterpreter" type="QUICK.Party"/>
    <ns4:element name="result" type="QUICK.Observation"/>
    <ns4:element name="conclusion" type="System.String"/>
    <ns4:element name="conclusionCode" type="System.Concept"/>
    <ns4:element name="presentedForm" type="QUICK.Attachment"/>
    <ns4:element name="locationPerformed" type="QUICK.Location"/>
    <ns4:element name="code" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.Condition" retrievable="false">
    <ns4:element name="onset">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="abatement">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="bodySite" type="System.Concept"/>
    <ns4:element name="severity" type="System.Concept"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="asserter" type="QUICK.Party"/>
    <ns4:element name="clinicalStatus" type="System.Concept"/>
    <ns4:element name="assertedDate" type="System.DateTime"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.FamilyMemberHistoryCondition" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="outcome" type="System.Concept"/>
    <ns4:element name="contributedToDeath" type="System.Boolean"/>
    <ns4:element name="onset">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="note" type="QUICK.Annotation"/>
  </ns4:typeInfo>
  <ns4:typeInfo name="QUICK.Element" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.NonAvailability" retrievable="false">
    <ns4:element name="description" type="System.String"/>
    <ns4:element name="during">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.SuspectEntity" retrievable="false">
    <ns4:element name="instance">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Immunization" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Procedure" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Medication" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="MedicationAdministration" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="MedicationStatement" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Device" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Substance" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="causality" type="QUICK.Causality"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.PatientLocation" retrievable="false">
    <ns4:element name="location" type="QUICK.Location"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="physicalType" type="System.Concept"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Request" name="QUICK.ServiceRequest" primaryCodePath="code" retrievable="true">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="bodySite" type="System.Concept"/>
    <ns4:element name="doNotPerform" type="System.Boolean"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.Communication" retrievable="false">
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="sender" type="QUICK.Performer"/>
    <ns4:element name="recipient" type="QUICK.Party"/>
    <ns4:element name="sent" type="System.DateTime"/>
    <ns4:element name="received" type="System.DateTime"/>
    <ns4:element name="medium" type="System.Concept"/>
    <ns4:element name="payload" type="QUICK.CommunicationPayload"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Contact" name="QUICK.IndividualContact" retrievable="false">
    <ns4:element name="relationship" type="System.Concept"/>
    <ns4:element name="gender" type="System.String"/>
    <ns4:element name="organization" type="QUICK.Organization"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.DeviceUseStatement" primaryCodePath="device.code" retrievable="true">
    <ns4:element name="bodySite" type="System.Concept"/>
    <ns4:element name="device" type="QUICK.Device"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Signature" retrievable="false">
    <ns4:element name="type" type="System.Code"/>
    <ns4:element name="when" type="System.DateTime"/>
    <ns4:element name="who" type="QUICK.Reference"/>
    <ns4:element name="onBehalfOf" type="QUICK.Reference"/>
    <ns4:element name="targetFormat" type="System.String"/>
    <ns4:element name="sigFormat" type="System.String"/>
    <ns4:element name="data" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.SubstancePackage" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="expiry" type="System.DateTime"/>
    <ns4:element name="quantity" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Eligibility" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="comment" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo baseType="QUICK.Element" name="QUICK.BackboneElement" retrievable="false" xsi:type="ns4:ClassInfo"/>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.Encounter" primaryCodePath="class" retrievable="true">
    <ns4:element name="class" type="System.Code"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="serviceType" type="System.Concept"/>
    <ns4:element name="priority" type="System.Concept"/>
    <ns4:element name="participant" type="QUICK.Participation"/>
    <ns4:element name="appointment" type="QUICK.Appointment"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="length" type="System.Quantity"/>
    <ns4:element name="diagnosisOrProcedure">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="Condition" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Procedure" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="hospitalization" type="QUICK.Hospitalization"/>
    <ns4:element name="location" type="QUICK.PatientLocation"/>
    <ns4:element name="serviceProvider" type="QUICK.Organization"/>
    <ns4:element name="partOf" type="QUICK.Encounter"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.Observation" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="value">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Integer" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Ratio" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Time" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="method" type="System.Concept"/>
    <ns4:element name="component" type="QUICK.ObservationComponent"/>
    <ns4:element name="performer" type="QUICK.Party"/>
    <ns4:element name="effective">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Timing" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="issued" type="System.DateTime"/>
    <ns4:element name="bodySite" type="System.Concept"/>
    <ns4:element name="dataAbsentReason" type="System.Concept"/>
    <ns4:element name="basedOn" type="QUICK.Request"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Event" name="QUICK.MedicationStatement" primaryCodePath="medication.code" retrievable="true">
    <ns4:element name="dosage" type="QUICK.DosageInstruction"/>
    <ns4:element name="medication" type="QUICK.Medication"/>
    <ns4:element name="informationSource" type="QUICK.Party"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.MedicationDoseQuantity" name="QUICK.DoseQuantity" retrievable="false">
    <ns4:element name="value" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.AllergyIntolerance" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="criticality" type="System.String"/>
    <ns4:element name="patient" type="QUICK.Patient"/>
    <ns4:element name="onset">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="recorder" type="QUICK.Party"/>
    <ns4:element name="asserter" type="QUICK.Party"/>
    <ns4:element name="assertedDate" type="System.DateTime"/>
    <ns4:element name="lastOccurrence" type="System.DateTime"/>
    <ns4:element name="note" type="QUICK.Annotation"/>
    <ns4:element name="reaction" type="QUICK.Reaction"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Request" name="QUICK.DeviceRequest" primaryCodePath="code" retrievable="true">
    <ns4:element name="code">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="DomainResource" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.MedicationDoseRate" name="QUICK.RateRange" retrievable="false">
    <ns4:element name="value">
      <ns4:typeSpecifier pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Timing" retrievable="false">
    <ns4:element name="event" type="System.DateTime"/>
    <ns4:element name="repeat" type="QUICK.TimingRepeat"/>
    <ns4:element name="code" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Contact" name="QUICK.OrganizationalContact" retrievable="false">
    <ns4:element name="purpose" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.InitialFill" retrievable="false">
    <ns4:element name="quantity" type="System.Quantity"/>
    <ns4:element name="duration" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.HumanName" retrievable="false">
    <ns4:element name="use" type="System.String"/>
    <ns4:element name="text" type="System.String"/>
    <ns4:element name="family" type="System.String"/>
    <ns4:element name="given" type="System.String"/>
    <ns4:element name="prefix" type="System.String"/>
    <ns4:element name="suffix" type="System.String"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Party" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.MedicationDosePointRate" name="QUICK.RateRatio" retrievable="false">
    <ns4:element name="value" type="QUICK.Ratio"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Request" name="QUICK.CommunicationRequest" retrievable="false">
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="doNotPerform" type="System.Boolean"/>
    <ns4:element name="medium" type="System.Concept"/>
    <ns4:element name="payload" type="QUICK.CommunicationPayload"/>
    <ns4:element name="sender" type="QUICK.Party"/>
    <ns4:element name="recipient" type="QUICK.Party"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Performer" retrievable="false">
    <ns4:element name="function" type="System.Concept"/>
    <ns4:element name="actor" type="QUICK.Party"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.MedicationBatch" retrievable="false">
    <ns4:element name="lotNumber" type="System.String"/>
    <ns4:element name="expirationDate" type="System.DateTime"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.IndividualCareGiver" name="QUICK.Practitioner" retrievable="false">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="name" type="QUICK.HumanName"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="address" type="QUICK.Address"/>
    <ns4:element name="gender" type="System.String"/>
    <ns4:element name="birthdate" type="System.DateTime"/>
    <ns4:element name="photo" type="QUICK.Attachment"/>
    <ns4:element name="qualification" type="QUICK.ProfessionalQualification"/>
    <ns4:element name="communication" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DosageInstruction" retrievable="false">
    <ns4:element name="doseAndRate" type="QUICK.DoseAndRate"/>
    <ns4:element name="timing" type="QUICK.Timing"/>
    <ns4:element name="route" type="System.Concept"/>
    <ns4:element name="method" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Participation" retrievable="false">
    <ns4:element name="role" type="System.Concept"/>
    <ns4:element name="member" type="QUICK.Party"/>
    <ns4:element name="onBehalfOf" type="QUICK.Organization"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="required" type="System.String"/>
    <ns4:element name="status" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DispenseRequest" retrievable="false">
    <ns4:element name="initialFill" type="QUICK.InitialFill"/>
    <ns4:element name="dispenseInterval" type="System.Quantity"/>
    <ns4:element name="validityPeriod">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="numberOfRepeatsAllowed" type="System.Integer"/>
    <ns4:element name="quantity" type="System.Quantity"/>
    <ns4:element name="expectedSupplyDuration" type="System.Quantity"/>
    <ns4:element name="performer" type="QUICK.Organization"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Resource" retrievable="false">
    <ns4:element name="id" type="System.String"/>
    <ns4:element name="meta" type="QUICK.Meta"/>
    <ns4:element name="implicitRules" type="System.String"/>
    <ns4:element name="language" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.CareGiver" name="QUICK.HealthcareService" retrievable="false">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="providedBy" type="QUICK.Organization"/>
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="specialty" type="System.Concept"/>
    <ns4:element name="location" type="QUICK.Location"/>
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="comment" type="System.String"/>
    <ns4:element name="extraDetails" type="System.String"/>
    <ns4:element name="photo" type="QUICK.Attachment"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="coverageArea" type="QUICK.Location"/>
    <ns4:element name="serviceProvisionCode" type="System.Concept"/>
    <ns4:element name="eligibility" type="QUICK.Eligibility"/>
    <ns4:element name="program" type="System.Concept"/>
    <ns4:element name="characteristic" type="System.Concept"/>
    <ns4:element name="communication" type="System.Concept"/>
    <ns4:element name="referralMethod" type="System.Concept"/>
    <ns4:element name="appointmentRequired" type="System.Boolean"/>
    <ns4:element name="availableTime" type="QUICK.AvailableTime"/>
    <ns4:element name="notAvailable" type="QUICK.NonAvailability"/>
    <ns4:element name="availabilityException" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.CareGiver" name="QUICK.Organization" retrievable="false">
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="name" type="System.String"/>
    <ns4:element name="alias" type="System.String"/>
    <ns4:element name="telecom" type="QUICK.ContactPoint"/>
    <ns4:element name="address" type="QUICK.Address"/>
    <ns4:element name="partOf" type="QUICK.Organization"/>
    <ns4:element name="contact" type="QUICK.OrganizationalContact"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Request" name="QUICK.MedicationRequest" primaryCodePath="medication.code" retrievable="true">
    <ns4:element name="dosageInstruction" type="QUICK.DosageInstruction"/>
    <ns4:element name="dispenseRequest" type="QUICK.DispenseRequest"/>
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="medication" type="QUICK.Medication"/>
    <ns4:element name="doNotPerform" type="System.Boolean"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.DeviceVersion" retrievable="false">
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="component" type="QUICK.Identifier"/>
    <ns4:element name="value" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Request" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="intent" type="System.String"/>
    <ns4:element name="reasonCode" type="System.Concept"/>
    <ns4:element name="authoredOn" type="System.DateTime"/>
    <ns4:element name="requester" type="QUICK.Party"/>
    <ns4:element name="subject" type="QUICK.CareRecipient"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="statusReason" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Finding" name="QUICK.FamilyMemberHistory" retrievable="false">
    <ns4:element name="date" type="System.DateTime"/>
    <ns4:element name="relationship" type="System.Concept"/>
    <ns4:element name="condition" type="QUICK.FamilyMemberHistoryCondition"/>
    <ns4:element name="patient" type="QUICK.Patient"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Event" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="statusReason" type="System.Concept"/>
    <ns4:element name="subject" type="QUICK.CareRecipient"/>
    <ns4:element name="performer" type="QUICK.Performer"/>
    <ns4:element name="reasonCode" type="System.Concept"/>
    <ns4:element name="reasonReference" type="QUICK.Condition"/>
    <ns4:element name="occurrence">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Timing" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="basedOn" type="QUICK.Request"/>
    <ns4:element name="recorded" type="System.DateTime"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Identifier" retrievable="false">
    <ns4:element name="use" type="System.String"/>
    <ns4:element name="type" type="System.Concept"/>
    <ns4:element name="system" type="System.String"/>
    <ns4:element name="value" type="System.String"/>
    <ns4:element name="period">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="assigner" type="QUICK.Reference"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.ObservationComponent" retrievable="false">
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="value">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Concept" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Boolean" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Integer" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Ratio" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="Time" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="DateTime" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="dataAbsentReason" type="System.Concept"/>
    <ns4:element name="interpretation" type="System.Concept"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.Reaction" retrievable="false">
    <ns4:element name="substance" type="System.Concept"/>
    <ns4:element name="manifestation" type="System.Concept"/>
    <ns4:element name="description" type="System.String"/>
    <ns4:element name="onset" type="System.DateTime"/>
    <ns4:element name="severity" type="System.String"/>
    <ns4:element name="exposureRoute" type="System.Concept"/>
    <ns4:element name="note" type="QUICK.Annotation"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Ratio" retrievable="false">
    <ns4:element name="numerator" type="System.Quantity"/>
    <ns4:element name="denominator" type="System.Quantity"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.CommunicationPayload" retrievable="false">
    <ns4:element name="content">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="Attachment" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="QUICK" name="DomainResource" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Annotation" retrievable="false">
    <ns4:element name="author">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="QUICK" name="DomainResource" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice modelName="System" name="String" xsi:type="ns4:NamedTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="time" type="System.DateTime"/>
    <ns4:element name="text" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Schedule" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="active" type="System.Boolean"/>
    <ns4:element name="serviceCategory" type="System.Concept"/>
    <ns4:element name="serviceType" type="System.Concept"/>
    <ns4:element name="specialty" type="System.Concept"/>
    <ns4:element name="actor" type="QUICK.Party"/>
    <ns4:element name="planningHorizon">
      <ns4:typeSpecifier pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
    </ns4:element>
    <ns4:element name="comment" type="System.String"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.DomainResource" name="QUICK.Substance" retrievable="false">
    <ns4:element name="identifier" type="QUICK.Identifier"/>
    <ns4:element name="status" type="System.String"/>
    <ns4:element name="category" type="System.Concept"/>
    <ns4:element name="code" type="System.Concept"/>
    <ns4:element name="description" type="System.String"/>
    <ns4:element name="instance" type="QUICK.SubstancePackage"/>
    <ns4:element name="ingredient" type="QUICK.Ingredient"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.Element" name="QUICK.Attachment" retrievable="false">
    <ns4:element name="contentType" type="System.String"/>
    <ns4:element name="language" type="System.String"/>
    <ns4:element name="data" type="System.String"/>
    <ns4:element name="url" type="System.String"/>
    <ns4:element name="size" type="System.Integer"/>
    <ns4:element name="hash" type="System.String"/>
    <ns4:element name="title" type="System.String"/>
    <ns4:element name="creation" type="System.DateTime"/>
  </ns4:typeInfo>
  <ns4:typeInfo xsi:type="ns4:ClassInfo" baseType="QUICK.BackboneElement" name="QUICK.TimingRepeat" retrievable="false">
    <ns4:element name="bounds">
      <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
        <ns4:choice modelName="System" name="Quantity" xsi:type="ns4:NamedTypeSpecifier"/>
        <ns4:choice pointType="System.Quantity" xsi:type="ns4:IntervalTypeSpecifier"/>
        <ns4:choice pointType="System.DateTime" xsi:type="ns4:IntervalTypeSpecifier"/>
      </ns4:elementTypeSpecifier>
    </ns4:element>
    <ns4:element name="count" type="System.Integer"/>
    <ns4:element name="countMax" type="System.Integer"/>
    <ns4:element name="duration" type="System.Decimal"/>
    <ns4:element name="durationMax" type="System.Decimal"/>
    <ns4:element name="durationUnit" type="System.String"/>
    <ns4:element name="frequency" type="System.Integer"/>
    <ns4:element name="frequencyMax" type="System.Integer"/>
    <ns4:element name="period" type="System.Decimal"/>
    <ns4:element name="periodMax" type="System.Decimal"/>
    <ns4:element name="periodUnit" type="System.String"/>
    <ns4:element name="dayOfWeek" type="System.String"/>
    <ns4:element name="timeOfDay" type="System.Time"/>
    <ns4:element name="when" type="System.String"/>
    <ns4:element name="offset" type="System.Integer"/>
  </ns4:typeInfo>
</ns4:modelInfo>
''';