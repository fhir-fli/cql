const qdmmodelconfig42 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QDM" url="urn:healthit-gov:qdm:v4_2" targetQualifier="qdm" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" patientClassName="QDM.Patient" patientClassIdentifier="Patient" patientBirthDatePropertyName="birth datetime" version="4.2">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Patient" baseType="System.Any" identifier="Patient">
        <ns4:element name="birth datetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Physical Exam, Order" identifier="PhysicalExamOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Procedure, Intolerance" identifier="ProcedureIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
        <ns4:element name="procedurePerformed" type="QDM.ProcedurePerformed"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicSex" baseType="System.Any" retrievable="true" label="Patient Characteristic Sex" identifier="PatientCharacteristicSex">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterActive" baseType="QDM.QDMBaseType" retrievable="true" label="Encounter, Active" identifier="EncounterActive" primaryCodePath="code">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CareGoal" baseType="QDM.QDMBaseType" retrievable="true" label="Care Goal" identifier="CareGoal" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="relatedTo" type="System.Concept"/>
        <ns4:element name="targetOutcome" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristic" baseType="System.Any" retrievable="true" label="Patient Characteristic" identifier="PatientCharacteristic">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicEthnicity" baseType="System.Any" retrievable="true" label="Patient Characteristic Ethnicity" identifier="PatientCharacteristicEthnicity"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicRace" baseType="System.Any" retrievable="true" label="Patient Characteristic Race" identifier="PatientCharacteristicRace"/>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAllergy" baseType="QDM.QDMBaseType" retrievable="true" label="Medication Allergy" identifier="MedicationAllergy" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Functional Status, Recommended" identifier="FunctionalStatusRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Laboratory Test, Performed" identifier="LaboratoryTestPerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="referenceRangeHigh" type="System.Concept"/>
        <ns4:element name="referenceRangeLow" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Symptom" baseType="QDM.QDMBaseType"  retrievable="true" label="Symptom" identifier="Symptom" primaryCodePath="code">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="severity" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAdministered" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Administered" identifier="MedicationAdministered" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.RiskCategoryAssessment" baseType="QDM.QDMBaseType" retrievable="true" label="Risk Category Assessment" identifier="RiskCategoryAssessment" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="result" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Procedure, Recommended" identifier="ProcedureRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Encounter, Performed" identifier="EncounterPerformed" primaryCodePath="code">
        <ns4:element name="admissionDatetime" type="System.DateTime"/>
        <ns4:element name="dischargeDatetime" type="System.DateTime"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="dischargeStatus" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
        <ns4:element name="facilityLocationArrivalDatetime" type="System.DateTime"/>
        <ns4:element name="facilityLocationDepartureDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="diagnosis" type="QDM.Diagnosis"/>
        <ns4:element name="principalDiagnosis" type="QDM.Diagnosis"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Diagnostic Study, Intolerance" identifier="DiagnosticStudyIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Diagnosis" baseType="QDM.QDMBaseType"  retrievable="true" label="Diagnosis" identifier="Diagnosis" primaryCodePath="code">
        <ns4:element name="onsetDatetime" type="System.DateTime"/>
        <ns4:element name="abatementDatetime" type="System.DateTime"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="severity" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromProviderToPatient" baseType="QDM.QDMBaseType" retrievable="true" label="Communication: From Provider to Patient" identifier="CommunicationFromProviderToPatient" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.TransferFrom" baseType="QDM.QDMBaseType" retrievable="true" label="Transfer From" identifier="TransferFrom" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Intervention, Intolerance" identifier="InterventionIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicClinicalTrialParticipant" baseType="System.Any" retrievable="true" label="Patient Characteristic Clinical Trial Participant" identifier="PatientCharacteristicClinicalTrialParticipant">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Order" identifier="DeviceOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Diagnostic Study, Performed" identifier="DiagnosticStudyPerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="result" type="System.Concept"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Intervention, Order" identifier="InterventionOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceAllergy" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Allergy" identifier="DeviceAllergy" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Procedure, Adverse Event" identifier="ProcedureAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="procedurePerformed" type="QDM.ProcedurePerformed"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FamilyHistory" baseType="QDM.QDMBaseType" retrievable="true" label="Family History" identifier="FamilyHistory" primaryCodePath="code">
        <ns4:element name="onsetAge" type="System.Quantity"/>
        <ns4:element name="recordedDatetime" type="System.DateTime"/>
        <ns4:element name="relationship" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationAllergy" baseType="QDM.QDMBaseType" retrievable="true" label="Immunization, Allergy" identifier="ImmunizationAllergy" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAdverseEffects" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Adverse Effects" identifier="MedicationAdverseEffects" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromProviderToProvider" baseType="QDM.QDMBaseType" retrievable="true" label="Communication: From Provider to Provider" identifier="CommunicationFromProviderToProvider" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationActive" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Active" identifier="MedicationActive" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Laboratory Test, Order" identifier="LaboratoryTestOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Adverse Event" identifier="SubstanceAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Diagnostic Study, Order" identifier="DiagnosticStudyOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Immunization, Intolerance" identifier="ImmunizationIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Order" identifier="SubstanceOrder" primaryCodePath="code">
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicPayer" baseType="System.Any" retrievable="true" label="Patient Characteristic Payer" identifier="PatientCharacteristicPayer">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicExpired" baseType="System.Any" retrievable="true" label="Patient Characteristic Expired" identifier="PatientCharacteristicExpired">
        <ns4:element name="date" type="System.DateTime"/>
        <ns4:element name="time" type="System.Time"/>
        <ns4:element name="cause" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Laboratory Test, Adverse Event" identifier="LaboratoryTestAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="laboratoryTestPerformed" type="QDM.LaboratoryTestPerformed"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationAdministered" baseType="QDM.QDMBaseType" retrievable="true" label="Immunization, Administered" identifier="ImmunizationAdministered" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAdministered" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Administered" identifier="SubstanceAdministered" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Encounter, Order" identifier="EncounterOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Laboratory Test, Intolerance" identifier="LaboratoryTestIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="laboratoryTestPerformed" type="QDM.LaboratoryTestPerformed"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Adverse Event" identifier="DeviceAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Encounter, Recommended" identifier="EncounterRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="facilityLocation" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedurePerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Procedure, Performed" identifier="ProcedurePerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Concept"/>
        <ns4:element name="status" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="incisionDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProviderCharacteristic" baseType="System.Any">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Physical Exam, Recommended" identifier="PhysicalExamRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Functional Status, Performed" identifier="FunctionalStatusPerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicBirthdate" baseType="System.Any" retrievable="true" label="Patient Characteristic Birthdate" identifier="PatientCharacteristicBirthdate">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Intervention, Adverse Event" identifier="InterventionAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.QDMBaseType" baseType="System.Any">
        <ns4:element name="code" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationFromPatientToProvider" baseType="QDM.QDMBaseType" retrievable="true" label="Communication: From Patient to Provider" identifier="CommunicationFromPatientToProvider" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FunctionalStatusOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Functional Status, Order" identifier="FunctionalStatusOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Recommended" identifier="DeviceRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceApplied" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Applied" identifier="DeviceApplied" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="removalDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="anatomialLocationSite" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDischarge" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Discharge" identifier="MedicationDischarge" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Intervention, Performed" identifier="InterventionPerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="result" type="System.Concept"/>
        <ns4:element name="status" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Laboratory Test, Recommended" identifier="LaboratoryTestRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDispensed" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Dispensed" identifier="MedicationDispensed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dose" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="cumulativeMedicationDuration" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyAdverseEvent" baseType="QDM.QDMBaseType" retrievable="true" label="Diagnostic Study, Adverse Event" identifier="DiagnosticStudyAdverseEvent" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Diagnostic Study, Recommended" identifier="DiagnosticStudyRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="radiationDosage" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Immunization, Order" identifier="ImmunizationOrder" primaryCodePath="code">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="signedDatetime" type="System.DateTime"/>
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="route" type="System.Concept"/>
        <ns4:element name="dose" type="System.Quantity"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Device, Intolerance" identifier="DeviceIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCareExperience" baseType="QDM.QDMBaseType" retrievable="true" label="Patient Care Experience" identifier="PatientCareExperience" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.TransferTo" baseType="QDM.QDMBaseType" retrievable="true" label="Transfer To" identifier="Transfer To" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProviderCareExperience" baseType="QDM.QDMBaseType" retrievable="true" label="Provider Care Experience" identifier="ProviderCareExperience" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Intolerance" identifier="SubstanceIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
        <ns4:element name="frequency" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Procedure, Order" identifier="ProcedureOrder" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="anatomicalApproachSite" type="System.Concept"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
        <ns4:element name="ordinality" type="System.Concept"/>
        <ns4:element name="radiationDuration" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationOrder" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Order" identifier="MedicationOrder" primaryCodePath="code">
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Recommended" identifier="SubstanceRecommended" primaryCodePath="code">
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
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionRecommended" baseType="QDM.QDMBaseType" retrievable="true" label="Intervention, Recommended" identifier="InterventionRecommended" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamPerformed" baseType="QDM.QDMBaseType" retrievable="true" label="Physical Exam, Performed" identifier="PhysicalExamPerformed" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Concept"/>
        <ns4:element name="reason" type="System.Concept"/>
        <ns4:element name="method" type="System.Concept"/>
        <ns4:element name="result" type="System.Any"/>
        <ns4:element name="anatomicalLocationSite" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAllergy" baseType="QDM.QDMBaseType" retrievable="true" label="Substance, Allergy" identifier="SubstanceAllergy" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationIntolerance" baseType="QDM.QDMBaseType" retrievable="true" label="Medication, Intolerance" identifier="MedicationIntolerance" primaryCodePath="code">
        <ns4:element name="startDatetime" type="System.DateTime"/>
        <ns4:element name="stopDatetime" type="System.DateTime"/>
        <ns4:element name="reaction" type="System.Concept"/>
    </ns4:typeInfo>
</ns4:modelInfo>
''';