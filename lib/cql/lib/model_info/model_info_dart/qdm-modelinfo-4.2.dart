const qdmmodelinfo42 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QDM" url="urn:healthit-gov:qdm:v4_2" targetQualifier="qdm" patientClassName="QDM.Patient" patientClassIdentifier="Patient" patientBirthDatePropertyName="birth datetime" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="4.2">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Patient" baseType="System.Any" identifier="Patient">
        <ns4:element name="birth datetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamOrder" identifier="PhysicalExamOrder" label="Physical Exam, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureIntolerance" identifier="ProcedureIntolerance" label="Procedure, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicSex" identifier="PatientCharacteristicSex" label="Patient Characteristic Sex" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterActive" identifier="EncounterActive" label="Encounter, Active" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CareGoal" identifier="CareGoal" label="Care Goal" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="relatedTo" type="System.Concept"/>
        <ns4:element name="targetOutcome" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristic" identifier="PatientCharacteristic" label="Patient Characteristic" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicEthnicity" identifier="PatientCharacteristicEthnicity" label="Patient Characteristic Ethnicity" retrievable="true" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicRace" identifier="PatientCharacteristicRace" label="Patient Characteristic Race" retrievable="true" baseType="System.Any"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAllergy" identifier="MedicationAllergy" label="Medication Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusRecommended" identifier="FunctionalStatusRecommended" label="Functional Status, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestPerformed" identifier="LaboratoryTestPerformed" label="Laboratory Test, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="referenceRangeHigh" type="System.Quantity"/>
        <ns4:element name="referenceRangeLow" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Symptom" identifier="Symptom" label="Symptom" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="severity" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAdministered" identifier="MedicationAdministered" label="Medication, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.RiskCategoryAssessment" identifier="RiskCategoryAssessment" label="Risk Category Assessment" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureRecommended" identifier="ProcedureRecommended" label="Procedure, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterPerformed" identifier="EncounterPerformed" label="Encounter, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="dischargeStatus" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="diagnosis" type="System.Concept"/>
        <ns4:element name="principalDiagnosis" type="System.Concept"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyIntolerance" identifier="DiagnosticStudyIntolerance" label="Diagnostic Study, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromProviderToPatient" identifier="CommunicationFromProviderToPatient" label="Communication: From Provider to Patient" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Diagnosis" identifier="Diagnosis" label="Diagnosis" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="severity" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.TransferFrom" identifier="TransferFrom" label="Transfer From" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionIntolerance" identifier="InterventionIntolerance" label="Intervention, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicClinicalTrialParticipant" identifier="PatientCharacteristicClinicalTrialParticipant" label="Patient Characteristic Clinical Trial Participant" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceOrder" identifier="DeviceOrder" label="Device, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyPerformed" identifier="DiagnosticStudyPerformed" label="Diagnostic Study, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionOrder" identifier="InterventionOrder" label="Intervention, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceAllergy" identifier="DeviceAllergy" label="Device, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureAdverseEvent" identifier="ProcedureAdverseEvent" label="Procedure, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FamilyHistory" identifier="FamilyHistory" label="Family History" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="onsetAge" type="System.Quantity"/>
        <ns4:element name="recordedDatetime" type="System.DateTime"/>
        <ns4:element name="relationship" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationAllergy" identifier="ImmunizationAllergy" label="Immunization, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAdverseEffects" identifier="MedicationAdverseEffects" label="Medication, Adverse Effects" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromProviderToProvider" identifier="CommunicationFromProviderToProvider" label="Communication: From Provider to Provider" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationActive" identifier="MedicationActive" label="Medication, Active" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestOrder" identifier="LaboratoryTestOrder" label="Laboratory Test, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAdverseEvent" identifier="SubstanceAdverseEvent" label="Substance, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyOrder" identifier="DiagnosticStudyOrder" label="Diagnostic Study, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationIntolerance" identifier="ImmunizationIntolerance" label="Immunization, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceOrder" identifier="SubstanceOrder" label="Substance, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicPayer" identifier="PatientCharacteristicPayer" label="Patient Characteristic Payer" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicExpired" identifier="PatientCharacteristicExpired" label="Patient Characteristic Expired" retrievable="true" baseType="System.Any">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="time" type="System.Time"/>
        <ns4:element name="cause" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestAdverseEvent" identifier="LaboratoryTestAdverseEvent" label="Laboratory Test, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationAdministered" identifier="ImmunizationAdministered" label="Immunization, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAdministered" identifier="SubstanceAdministered" label="Substance, Administered" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterOrder" identifier="EncounterOrder" label="Encounter, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestIntolerance" identifier="LaboratoryTestIntolerance" label="Laboratory Test, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceAdverseEvent" identifier="DeviceAdverseEvent" label="Device, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterRecommended" identifier="EncounterRecommended" label="Encounter, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedurePerformed" identifier="ProcedurePerformed" label="Procedure, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="incisionDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProviderCharacteristic" retrievable="false" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamRecommended" identifier="PhysicalExamRecommended" label="Physical Exam, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusPerformed" identifier="FunctionalStatusPerformed" label="Functional Status, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicBirthdate" identifier="PatientCharacteristicBirthdate" label="Patient Characteristic Birthdate" retrievable="true" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionAdverseEvent" identifier="InterventionAdverseEvent" label="Intervention, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.QDMBaseType" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromPatientToProvider" identifier="CommunicationFromPatientToProvider" label="Communication: From Patient to Provider" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusOrder" identifier="FunctionalStatusOrder" label="Functional Status, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceRecommended" identifier="DeviceRecommended" label="Device, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceApplied" identifier="DeviceApplied" label="Device, Applied" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="removalDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="anatomialLocationSite" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDischarge" identifier="MedicationDischarge" label="Medication, Discharge" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionPerformed" identifier="InterventionPerformed" label="Intervention, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="status" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestRecommended" identifier="LaboratoryTestRecommended" label="Laboratory Test, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDispensed" identifier="MedicationDispensed" label="Medication, Dispensed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyAdverseEvent" identifier="DiagnosticStudyAdverseEvent" label="Diagnostic Study, Adverse Event" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyRecommended" identifier="DiagnosticStudyRecommended" label="Diagnostic Study, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Quantity"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationOrder" identifier="ImmunizationOrder" label="Immunization, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="signedDatetime" type="System.DateTime"/>
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceIntolerance" identifier="DeviceIntolerance" label="Device, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCareExperience" identifier="PatientCareExperience" label="Patient Care Experience" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.TransferTo" identifier="Transfer To" label="Transfer To" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProviderCareExperience" identifier="ProviderCareExperience" label="Provider Care Experience" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceIntolerance" identifier="SubstanceIntolerance" label="Substance, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureOrder" identifier="ProcedureOrder" label="Procedure, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationOrder" identifier="MedicationOrder" label="Medication, Order" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="signedDatetime" type="System.DateTime"/>
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceRecommended" identifier="SubstanceRecommended" label="Substance, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionRecommended" identifier="InterventionRecommended" label="Intervention, Recommended" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamPerformed" identifier="PhysicalExamPerformed" label="Physical Exam, Performed" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAllergy" identifier="SubstanceAllergy" label="Substance, Allergy" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationIntolerance" identifier="MedicationIntolerance" label="Medication, Intolerance" retrievable="true" primaryCodePath="code" baseType="QDM.QDMBaseType">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
</ns4:modelInfo>
''';