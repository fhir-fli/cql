const qdmmodelinfo43 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QDM" version="4.3" url="urn:healthit-gov:qdm:v4_3" targetQualifier="qdm" patientClassName="QDM.Patient" patientClassIdentifier="Patient" patientBirthDatePropertyName="birthDatetime" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               strictRetrieveTyping="true">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Patient" baseType="System.Any" identifier="Patient">
        <ns4:element name="birthDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PhysicalExamOrder" identifier="PhysicalExamOrder" label="Physical Exam, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProcedureIntolerance" identifier="ProcedureIntolerance" label="Procedure, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
        <ns4:element name="ordinality" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicSex" identifier="PatientCharacteristicSex" label="Patient Characteristic Sex" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="EncounterActive" identifier="EncounterActive" label="Encounter, Active" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="CareGoal" identifier="CareGoal" label="Care Goal" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="relatedTo" type="System.Code"/>
        <ns4:element name="targetOutcome" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristic" identifier="PatientCharacteristic" label="Patient Characteristic" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicEthnicity" identifier="PatientCharacteristicEthnicity" label="Patient Characteristic Ethnicity" retrievable="true" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicRace" identifier="PatientCharacteristicRace" label="Patient Characteristic Race" retrievable="true" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationAllergy" identifier="MedicationAllergy" label="Medication Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="LaboratoryTestPerformed" identifier="LaboratoryTestPerformed" label="Laboratory Test, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="referenceRangeHigh" type="System.Quantity"/>
        <ns4:element name="referenceRangeLow" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="String" retrievable="false" baseType="System.Any">
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Symptom" identifier="Symptom" label="Symptom" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="severity" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationAdministered" identifier="MedicationAdministered" label="Medication, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProcedureRecommended" identifier="ProcedureRecommended" label="Procedure, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="anatomicalApproachSite" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="ordinality" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="EncounterPerformed" identifier="EncounterPerformed" label="Encounter, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="dischargeStatus" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="diagnosis" type="System.Code"/>
        <ns4:element name="principalDiagnosis" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DiagnosticStudyIntolerance" identifier="DiagnosticStudyIntolerance" label="Diagnostic Study, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Decimal" retrievable="false" baseType="System.Any">
        <ns4:element name="value" type="System.Decimal"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="CommunicationFromProviderToPatient" identifier="CommunicationFromProviderToPatient" label="Communication: From Provider to Patient" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Diagnosis" identifier="Diagnosis" label="Diagnosis" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="severity" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="TransferFrom" identifier="TransferFrom" label="Transfer From" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="AssessmentPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="InterventionIntolerance" identifier="InterventionIntolerance" label="Intervention, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicClinicalTrialParticipant" identifier="PatientCharacteristicClinicalTrialParticipant" label="Patient Characteristic Clinical Trial Participant" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceOrder" identifier="DeviceOrder" label="Device, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DiagnosticStudyPerformed" identifier="DiagnosticStudyPerformed" label="Diagnostic Study, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="InterventionOrder" identifier="InterventionOrder" label="Intervention, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceAllergy" identifier="DeviceAllergy" label="Device, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProcedureAdverseEvent" identifier="ProcedureAdverseEvent" label="Procedure, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="FamilyHistory" identifier="FamilyHistory" label="Family History" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetAge" type="System.Quantity"/>
        <ns4:element name="recordedDatetime" type="System.DateTime"/>
        <ns4:element name="relationship" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ImmunizationAllergy" identifier="ImmunizationAllergy" label="Immunization, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationAdverseEffects" identifier="MedicationAdverseEffects" label="Medication, Adverse Effects" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="CommunicationFromProviderToProvider" identifier="CommunicationFromProviderToProvider" label="Communication: From Provider to Provider" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Code" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.String"/>
        <ns4:element name="display" type="System.String"/>
        <ns4:element name="system" type="System.String"/>
        <ns4:element name="version" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationActive" identifier="MedicationActive" label="Medication, Active" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="LaboratoryTestOrder" identifier="LaboratoryTestOrder" label="Laboratory Test, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceAdverseEvent" identifier="SubstanceAdverseEvent" label="Substance, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DiagnosticStudyOrder" identifier="DiagnosticStudyOrder" label="Diagnostic Study, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ImmunizationIntolerance" identifier="ImmunizationIntolerance" label="Immunization, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceOrder" identifier="SubstanceOrder" label="Substance, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicPayer" identifier="PatientCharacteristicPayer" label="Patient Characteristic Payer" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicExpired" identifier="PatientCharacteristicExpired" label="Patient Characteristic Expired" retrievable="true" baseType="System.Any">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="time" type="System.Time"/>
        <ns4:element name="cause" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="AssessmentRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="LaboratoryTestAdverseEvent" identifier="LaboratoryTestAdverseEvent" label="Laboratory Test, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ImmunizationAdministered" identifier="ImmunizationAdministered" label="Immunization, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceAdministered" identifier="SubstanceAdministered" label="Substance, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="EncounterOrder" identifier="EncounterOrder" label="Encounter, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="LaboratoryTestIntolerance" identifier="LaboratoryTestIntolerance" label="Laboratory Test, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceAdverseEvent" identifier="DeviceAdverseEvent" label="Device, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="EncounterRecommended" identifier="EncounterRecommended" label="Encounter, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProcedurePerformed" identifier="ProcedurePerformed" label="Procedure, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="anatomicalApproachSite" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="ordinality" type="System.Code"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="incisionDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProviderCharacteristic" retrievable="false" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PhysicalExamRecommended" identifier="PhysicalExamRecommended" label="Physical Exam, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCharacteristicBirthdate" identifier="PatientCharacteristicBirthdate" label="Patient Characteristic Birthdate" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="InterventionAdverseEvent" identifier="InterventionAdverseEvent" label="Intervention, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDMBaseType" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Any" retrievable="false" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="CommunicationFromPatientToProvider" identifier="CommunicationFromPatientToProvider" label="Communication: From Patient to Provider" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceRecommended" identifier="DeviceRecommended" label="Device, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceApplied" identifier="DeviceApplied" label="Device, Applied" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="removalDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="anatomialLocationSite" type="System.Code"/>
        <ns4:element name="anatomicalApproachSite" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationDischarge" identifier="MedicationDischarge" label="Medication, Discharge" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="InterventionPerformed" identifier="InterventionPerformed" label="Intervention, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="LaboratoryTestRecommended" identifier="LaboratoryTestRecommended" label="Laboratory Test, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationDispensed" identifier="MedicationDispensed" label="Medication, Dispensed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DiagnosticStudyAdverseEvent" identifier="DiagnosticStudyAdverseEvent" label="Diagnostic Study, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DiagnosticStudyRecommended" identifier="DiagnosticStudyRecommended" label="Diagnostic Study, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ImmunizationOrder" identifier="ImmunizationOrder" label="Immunization, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="signedDatetime" type="System.DateTime"/>
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="DeviceIntolerance" identifier="DeviceIntolerance" label="Device, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PatientCareExperience" identifier="PatientCareExperience" label="Patient Care Experience" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="TransferTo" identifier="Transfer To" label="Transfer To" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProviderCareExperience" identifier="ProviderCareExperience" label="Provider Care Experience" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="Quantity" retrievable="false" baseType="System.Any">
        <ns4:element name="value" type="System.Decimal"/>
        <ns4:element name="unit" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceIntolerance" identifier="SubstanceIntolerance" label="Substance, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="ProcedureOrder" identifier="ProcedureOrder" label="Procedure, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="anatomicalApproachSite" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="ordinality" type="System.Code"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationOrder" identifier="MedicationOrder" label="Medication, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="signedDatetime" type="System.DateTime"/>
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceRecommended" identifier="SubstanceRecommended" label="Substance, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="InterventionRecommended" identifier="InterventionRecommended" label="Intervention, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="PhysicalExamPerformed" identifier="PhysicalExamPerformed" label="Physical Exam, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="SubstanceAllergy" identifier="SubstanceAllergy" label="Substance, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="MedicationIntolerance" identifier="MedicationIntolerance" label="Medication, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Code"/>
    </ns4:typeInfo>
</ns4:modelInfo>
''';