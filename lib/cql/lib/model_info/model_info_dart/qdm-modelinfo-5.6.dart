const qdmmodelinfo56 = r'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<ns4:modelInfo name="QDM" url="urn:healthit-gov:qdm:v5_6" targetQualifier="qdm" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns4="urn:hl7-org:elm-modelinfo:r1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
               patientClassName="QDM.Patient" patientClassIdentifier="Patient" patientBirthDatePropertyName="birthDatetime" version="5.6" strictRetrieveTyping="true">
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Patient" baseType="System.Any" identifier="Patient">
        <ns4:element name="birthDatetime" type="System.DateTime"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Identifier" baseType="System.Any">
        <ns4:element name="namingSystem" type="System.String"/>
        <ns4:element name="value" type="System.String"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Entity" baseType="System.Any" retrievable="false">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="identifier" type="QDM.Identifier"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientEntity" baseType="QDM.Entity" retrievable="false">
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CarePartner" baseType="QDM.Entity" retrievable="false">
        <ns4:element name="relationship" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.RelatedPerson" baseType="QDM.QDMBaseType" label="Related Person" retrievable="true" primaryCodePath="code">
        <ns4:element name="identifier" type="QDM.Identifier"/>
        <ns4:element name="linkedPatientId" type="System.String"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
        <ns4:targetContextRelationship context="Patient" relatedKeyElement="linkedPatientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Practitioner" baseType="QDM.Entity" retrievable="false">
        <ns4:element name="role" type="System.Code"/>
        <ns4:element name="specialty" type="System.Code"/>
        <ns4:element name="qualification" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Organization" baseType="QDM.Entity" retrievable="false">
        <ns4:element name="organizationType" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Location" baseType="QDM.Entity" retrievable="false">
        <ns4:element name="locationType" type="System.Code"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Participation" retrievable="true" baseType="QDM.QDMBaseType" label="Participation" primaryCodePath="code">
        <ns4:element name="participationPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicSex" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Sex" primaryCodePath="code">
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CareGoal" retrievable="true" baseType="QDM.QDMBaseType" label="Care Goal" primaryCodePath="code">
        <ns4:element name="statusDate" type="System.Date"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:element name="targetOutcome"> <!--type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristic" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicEthnicity" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Ethnicity" primaryCodePath="code">
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicRace" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Race" primaryCodePath="code">
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result"> <!-- type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="resultDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="referenceRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:element name="interpretation" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="components" type="list&lt;QDM.ResultComponent&gt;"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Symptom" retrievable="true" baseType="QDM.QDMBaseType" label="Symptom" primaryCodePath="code">
        <ns4:element name="prevalencePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="severity" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationAdministered" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="rank" type="System.Integer"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="admissionSource" type="System.Code"/>
        <ns4:element name="class" type="System.Code"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="dischargeDisposition" type="System.Code"/>
        <ns4:element name="facilityLocations" type="list&lt;QDM.FacilityLocation&gt;"/>
        <ns4:element name="diagnoses" type="list&lt;QDM.DiagnosisComponent&gt;"/>
        <ns4:element name="lengthOfStay" type="System.Quantity"/>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:element name="participant">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Diagnosis" retrievable="true" baseType="QDM.QDMBaseType" label="Diagnosis" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="prevalencePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="severity" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.CommunicationPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="category" type="System.Code"/>
        <ns4:element name="medium" type="System.Code"/>
        <ns4:element name="sender">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="recipient">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:element name="sentDatetime" type="System.DateTime"/>
        <ns4:element name="receivedDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.AssessmentPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result"> <!-- type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="interpretation" type="System.Code"/>
        <ns4:element name="components" type="list&lt;QDM.Component&gt;"/>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicClinicalTrialParticipant" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Clinical Trial Participant" primaryCodePath="code">
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="result"> <!--type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="resultDatetime" type="System.DateTime"/>
        <ns4:element name="interpretation" type="System.Code"/>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="components" type="list&lt;QDM.Component&gt;"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FamilyHistory" retrievable="true" baseType="QDM.QDMBaseType" label="Family History" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relationship" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.Component" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="result"> <!-- type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosisComponent" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="presentOnAdmissionIndicator" type="System.Code"/>
        <ns4:element name="rank" type="System.Integer"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ResultComponent" retrievable="false" baseType="QDM.Component">
        <ns4:element name="referenceRange" type="interval&lt;System.Quantity&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.FacilityLocation" retrievable="false" baseType="System.Any">
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="locationPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationActive" retrievable="true" baseType="QDM.QDMBaseType" label="Medication, Active" primaryCodePath="code">
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="supply" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicPayer" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Payer" primaryCodePath="code">
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicExpired" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Expired" primaryCodePath="code">
        <ns4:element name="expiredDatetime" type="System.DateTime"/>
        <ns4:element name="cause" type="System.Code"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.AssessmentOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.AssessmentRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationAdministered" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceAdministered" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.EncounterRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedurePerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result"> <!--type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="rank" type="System.Integer"/>
        <ns4:element name="incisionDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="components" type="list&lt;QDM.Component&gt;"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.AllergyIntolerance" retrievable="true" baseType="QDM.QDMBaseType" label="Allergy/Intolerance" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="prevalencePeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="severity" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCharacteristicBirthdate" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Characteristic Birthdate" primaryCodePath="code">
        <ns4:element name="birthDatetime" type="System.DateTime"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.AdverseEvent" retrievable="true" baseType="QDM.QDMBaseType" label="Adverse Event" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="severity" type="System.Code"/>
        <ns4:element name="facilityLocation" type="System.Code"/>
        <ns4:element name="type" type="System.Code"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.QDMBaseType" retrievable="false" baseType="System.Any">
        <ns4:element name="id" type="System.String"/>
        <ns4:element name="code" type="System.Code"/>
        <ns4:element name="patientId" type="System.String"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DeviceRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDischarge" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="supply" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="daysSupplied" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="prescriber">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="result"> <!-- type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="status" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.LaboratoryTestRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationDispensed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="supply" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="daysSupplied" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="prescriber">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="dispenser">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.DiagnosticStudyRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ImmunizationOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="activeDatetime" type="System.DateTime"/>
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="supply" type="System.Quantity"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PatientCareExperience" retrievable="true" baseType="QDM.QDMBaseType" label="Patient Care Experience" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProviderCareExperience" retrievable="true" baseType="QDM.QDMBaseType" label="Provider Care Experience" primaryCodePath="code">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="recorder">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.ProcedureOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="rank" type="System.Integer"/>
        <ns4:element name="priority" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.MedicationOrder" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="supply" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="daysSupplied" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="setting" type="System.Code"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="prescriber">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.SubstanceRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="dosage" type="System.Quantity"/>
        <ns4:element name="frequency" type="System.Code"/>
        <ns4:element name="refills" type="System.Integer"/>
        <ns4:element name="route" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.InterventionRecommended" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="requester">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ClassInfo" name="QDM.PhysicalExamPerformed" retrievable="false" baseType="QDM.QDMBaseType">
        <ns4:element name="authorDatetime" type="System.DateTime"/>
        <ns4:element name="relevantDatetime" type="System.DateTime"/>
        <ns4:element name="relevantPeriod" type="interval&lt;System.DateTime&gt;"/>
        <ns4:element name="reason" type="System.Code"/>
        <ns4:element name="method" type="System.Code"/>
        <ns4:element name="result"> <!--type="System.Any">-->
            <ns4:typeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Integer"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Code"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Date"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="DateTime"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Decimal"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Quantity"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Ratio"/>
                <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="System" name="Time"/>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="anatomicalLocationSite" type="System.Code"/>
        <ns4:element name="negationRationale" type="System.Code"/>
        <ns4:element name="components" type="list&lt;QDM.Component&gt;"/>
        <ns4:element name="performer">
            <ns4:typeSpecifier xsi:type="ns4:ListTypeSpecifier">
                <ns4:elementTypeSpecifier xsi:type="ns4:ChoiceTypeSpecifier">
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="PatientEntity"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="CarePartner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Practitioner"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Organization"/>
                    <ns4:choice xsi:type="ns4:NamedTypeSpecifier" modelName="QDM" name="Location"/>
                </ns4:elementTypeSpecifier>
            </ns4:typeSpecifier>
        </ns4:element>
        <ns4:element name="relatedTo" type="list&lt;System.String&gt;"/>
        <ns4:contextRelationship context="Patient" relatedKeyElement="patientId"/>
    </ns4:typeInfo>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveAssessmentOrder" retrievable="true" baseType="QDM.AssessmentOrder" identifier="PositiveAssessmentOrder" label="Assessment, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeAssessmentOrder" retrievable="true" baseType="QDM.AssessmentOrder" identifier="NegativeAssessmentOrder" label="Assessment, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveAssessmentRecommended" retrievable="true" baseType="QDM.AssessmentRecommended" identifier="PositiveAssessmentRecommended" label="Assessment, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeAssessmentRecommended" retrievable="true" baseType="QDM.AssessmentRecommended" identifier="NegativeAssessmentRecommended" label="Assessment, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveAssessmentPerformed" retrievable="true" baseType="QDM.AssessmentPerformed" identifier="PositiveAssessmentPerformed" label="Assessment, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeAssessmentPerformed" retrievable="true" baseType="QDM.AssessmentPerformed" identifier="NegativeAssessmentPerformed" label="Assessment, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveCommunicationPerformed" retrievable="true" baseType="QDM.CommunicationPerformed" identifier="PositiveCommunicationPerformed" label="Communication, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeCommunicationPerformed" retrievable="true" baseType="QDM.CommunicationPerformed" identifier="NegativeCommunicationPerformed" label="Communication, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveDeviceOrder" retrievable="true" baseType="QDM.DeviceOrder" identifier="PositiveDeviceOrder" label="Device, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeDeviceOrder" retrievable="true" baseType="QDM.DeviceOrder" identifier="NegativeDeviceOrder" label="Device, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveDeviceRecommended" retrievable="true" baseType="QDM.DeviceRecommended" identifier="PositiveDeviceRecommended" label="Device, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeDeviceRecommended" retrievable="true" baseType="QDM.DeviceRecommended" identifier="NegativeDeviceRecommended" label="Device, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveDiagnosticStudyOrder" retrievable="true" baseType="QDM.DiagnosticStudyOrder" identifier="PositiveDiagnosticStudyOrder" label="Diagnostic Study, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeDiagnosticStudyOrder" retrievable="true" baseType="QDM.DiagnosticStudyOrder" identifier="NegativeDiagnosticStudyOrder" label="Diagnostic Study, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveDiagnosticStudyRecommended" retrievable="true" baseType="QDM.DiagnosticStudyRecommended" identifier="PositiveDiagnosticStudyRecommended" label="Diagnostic Study, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeDiagnosticStudyRecommended" retrievable="true" baseType="QDM.DiagnosticStudyRecommended" identifier="NegativeDiagnosticStudyRecommended" label="Diagnostic Study, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveDiagnosticStudyPerformed" retrievable="true" baseType="QDM.DiagnosticStudyPerformed" identifier="PositiveDiagnosticStudyPerformed" label="Diagnostic Study, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeDiagnosticStudyPerformed" retrievable="true" baseType="QDM.DiagnosticStudyPerformed" identifier="NegativeDiagnosticStudyPerformed" label="Diagnostic Study, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveEncounterOrder" retrievable="true" baseType="QDM.EncounterOrder" identifier="PositiveEncounterOrder" label="Encounter, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeEncounterOrder" retrievable="true" baseType="QDM.EncounterOrder" identifier="NegativeEncounterOrder" label="Encounter, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveEncounterRecommended" retrievable="true" baseType="QDM.EncounterRecommended" identifier="PositiveEncounterRecommended" label="Encounter, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeEncounterRecommended" retrievable="true" baseType="QDM.EncounterRecommended" identifier="NegativeEncounterRecommended" label="Encounter, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveEncounterPerformed" retrievable="true" baseType="QDM.EncounterPerformed" identifier="PositiveEncounterPerformed" label="Encounter, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveInterventionOrder" retrievable="true" baseType="QDM.InterventionOrder" identifier="PositiveInterventionOrder" label="Intervention, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeInterventionOrder" retrievable="true" baseType="QDM.InterventionOrder" identifier="NegativeInterventionOrder" label="Intervention, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveInterventionRecommended" retrievable="true" baseType="QDM.InterventionRecommended" identifier="PositiveInterventionRecommended" label="Intervention, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeInterventionRecommended" retrievable="true" baseType="QDM.InterventionRecommended" identifier="NegativeInterventionRecommended" label="Intervention, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveInterventionPerformed" retrievable="true" baseType="QDM.InterventionPerformed" identifier="PositiveInterventionPerformed" label="Intervention, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeInterventionPerformed" retrievable="true" baseType="QDM.InterventionPerformed" identifier="NegativeInterventionPerformed" label="Intervention, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveImmunizationOrder" retrievable="true" baseType="QDM.ImmunizationOrder" identifier="PositiveImmunizationOrder" label="Immunization, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeImmunizationOrder" retrievable="true" baseType="QDM.ImmunizationOrder" identifier="NegativeImmunizationOrder" label="Immunization, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveImmunizationAdministered" retrievable="true" baseType="QDM.ImmunizationAdministered" identifier="PositiveImmunizationAdministered" label="Immunization, Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeImmunizationAdministered" retrievable="true" baseType="QDM.ImmunizationAdministered" identifier="NegativeImmunizationAdministered" label="Immunization, Not Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveMedicationAdministered" retrievable="true" baseType="QDM.MedicationAdministered" identifier="PositiveMedicationAdministered" label="Medication, Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeMedicationAdministered" retrievable="true" baseType="QDM.MedicationAdministered" identifier="NegativeMedicationAdministered" label="Medication, Not Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveMedicationDispensed" retrievable="true" baseType="QDM.MedicationDispensed" identifier="PositiveMedicationDispensed" label="Medication, Dispensed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeMedicationDispensed" retrievable="true" baseType="QDM.MedicationDispensed" identifier="NegativeMedicationDispensed" label="Medication, Not Dispensed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveMedicationDischarge" retrievable="true" baseType="QDM.MedicationDischarge" identifier="PositiveMedicationDischarge" label="Medication, Discharge" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeMedicationDischarge" retrievable="true" baseType="QDM.MedicationDischarge" identifier="NegativeMedicationDischarge" label="Medication, Not Discharged" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveMedicationOrder" retrievable="true" baseType="QDM.MedicationOrder" identifier="PositiveMedicationOrder" label="Medication, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeMedicationOrder" retrievable="true" baseType="QDM.MedicationOrder" identifier="NegativeMedicationOrder" label="Medication, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositivePhysicalExamOrder" retrievable="true" baseType="QDM.PhysicalExamOrder" identifier="PositivePhysicalExamOrder" label="Physical Exam, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativePhysicalExamOrder" retrievable="true" baseType="QDM.PhysicalExamOrder" identifier="NegativePhysicalExamOrder" label="Physical Exam, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositivePhysicalExamRecommended" retrievable="true" baseType="QDM.PhysicalExamRecommended" identifier="PositivePhysicalExamRecommended" label="Physical Exam, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativePhysicalExamRecommended" retrievable="true" baseType="QDM.PhysicalExamRecommended" identifier="NegativePhysicalExamRecommended" label="Physical Exam, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositivePhysicalExamPerformed" retrievable="true" baseType="QDM.PhysicalExamPerformed" identifier="PositivePhysicalExamPerformed" label="Physical Exam, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativePhysicalExamPerformed" retrievable="true" baseType="QDM.PhysicalExamPerformed" identifier="NegativePhysicalExamPerformed" label="Physical Exam, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveProcedureOrder" retrievable="true" baseType="QDM.ProcedureOrder" identifier="PositiveProcedureOrder" label="Procedure, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeProcedureOrder" retrievable="true" baseType="QDM.ProcedureOrder" identifier="NegativeProcedureOrder" label="Procedure, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveProcedureRecommended" retrievable="true" baseType="QDM.ProcedureRecommended" identifier="PositiveProcedureRecommended" label="Procedure, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeProcedureRecommended" retrievable="true" baseType="QDM.ProcedureRecommended" identifier="NegativeProcedureRecommended" label="Procedure, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveProcedurePerformed" retrievable="true" baseType="QDM.ProcedurePerformed" identifier="PositiveProcedurePerformed" label="Procedure, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeProcedurePerformed" retrievable="true" baseType="QDM.ProcedurePerformed" identifier="NegativeProcedurePerformed" label="Procedure, Not Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveSubstanceOrder" retrievable="true" baseType="QDM.SubstanceOrder" identifier="PositiveSubstanceOrder" label="Substance, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeSubstanceOrder" retrievable="true" baseType="QDM.SubstanceOrder" identifier="NegativeSubstanceOrder" label="Substance, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveSubstanceRecommended" retrievable="true" baseType="QDM.SubstanceRecommended" identifier="PositiveSubstanceRecommended" label="Substance, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeSubstanceRecommended" retrievable="true" baseType="QDM.SubstanceRecommended" identifier="NegativeSubstanceRecommended" label="Substance, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveSubstanceAdministered" retrievable="true" baseType="QDM.SubstanceAdministered" identifier="PositiveSubstanceAdministered" label="Substance, Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeSubstanceAdministered" retrievable="true" baseType="QDM.SubstanceAdministered" identifier="NegativeSubstanceAdministered" label="Substance, Not Administered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveLaboratoryTestOrder" retrievable="true" baseType="QDM.LaboratoryTestOrder" identifier="PositiveLaboratoryTestOrder" label="Laboratory Test, Order" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeLaboratoryTestOrder" retrievable="true" baseType="QDM.LaboratoryTestOrder" identifier="NegativeLaboratoryTestOrder" label="Laboratory Test, Not Ordered" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveLaboratoryTestRecommended" retrievable="true" baseType="QDM.LaboratoryTestRecommended" identifier="PositiveLaboratoryTestRecommended" label="Laboratory Test, Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeLaboratoryTestRecommended" retrievable="true" baseType="QDM.LaboratoryTestRecommended" identifier="NegativeLaboratoryTestRecommended" label="Laboratory Test, Not Recommended" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.PositiveLaboratoryTestPerformed" retrievable="true" baseType="QDM.LaboratoryTestPerformed" identifier="PositiveLaboratoryTestPerformed" label="Laboratory Test, Performed" primaryCodePath="code"/>
    <ns4:typeInfo xsi:type="ns4:ProfileInfo" name="QDM.NegativeLaboratoryTestPerformed" retrievable="true" baseType="QDM.LaboratoryTestPerformed" identifier="NegativeLaboratoryTestPerformed" label="Laboratory Test, Not Performed" primaryCodePath="code"/>
    <ns4:contextInfo name="Patient" keyElement="id" birthDateElement="birthDatetime">
        <ns4:contextType modelName="QDM" name="Patient"/>
    </ns4:contextInfo>
</ns4:modelInfo>
''';