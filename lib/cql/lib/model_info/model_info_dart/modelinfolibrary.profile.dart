const modelinfolibraryprofile = r'''<?xml version="1.0" encoding="UTF-8"?>

<StructureDefinition xmlns="http://hl7.org/fhir">
  <id value="modelinfolibrary"/>
  <text>
    <status value="generated"/>
    <div xmlns="http://www.w3.org/1999/xhtml">to do</div>
  </text>
  <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm">
    <valueInteger value="3"/>
  </extension>
  <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-wg">
    <valueCode value="cds"/>
  </extension>
  <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
    <valueCode value="trial-use"/>
  </extension>
  <url value="http://hl7.org/fhir/StructureDefinition/modelinfolibrary"/>
  <identifier>
    <system value="urn:ietf:rfc:3986"/>
    <value value="urn:oid:2.16.840.1.113883.4.642.5.1163"/>
  </identifier>
  <version value="5.0.0-cibuild"/>
  <name value="ModelInfoLibrary"/>
  <title value="Model Information Library"/>
  <status value="draft"/>
  <experimental value="false"/>
  <date value="2020-12-28T16:55:11+11:00"/>
  <publisher value="HL7"/>
  <description value="Represents a computable representation of a model information library"/>
  <fhirVersion value="5.0.0-cibuild"/>
  <mapping>
    <identity value="rim"/>
    <uri value="http://hl7.org/v3"/>
    <name value="RIM Mapping"/>
  </mapping>
  <mapping>
    <identity value="workflow"/>
    <uri value="http://hl7.org/fhir/workflow"/>
    <name value="Workflow Pattern"/>
  </mapping>
  <mapping>
    <identity value="w5"/>
    <uri value="http://hl7.org/fhir/fivews"/>
    <name value="FiveWs Pattern Mapping"/>
  </mapping>
  <mapping>
    <identity value="objimpl"/>
    <uri value="http://hl7.org/fhir/object-implementation"/>
    <name value="Object Implementation Information"/>
  </mapping>
  <kind value="resource"/>
  <abstract value="false"/>
  <type value="Library"/>
  <baseDefinition value="http://hl7.org/fhir/StructureDefinition/shareablelibrary"/>
  <derivation value="constraint"/>
  <snapshot>
    <element id="Library">
      <path value="Library"/>
      <short value="Represents a library of quality improvement components"/>
      <definition value="The Library resource is a general-purpose container for knowledge asset definitions. It can be used to describe and expose existing knowledge assets such as logic libraries and information model descriptions, as well as to describe a collection of knowledge assets."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <constraint>
        <key value="cnl-0"/>
        <severity value="warning"/>
        <human value="Name should be usable as an identifier for the module by machine processing applications such as code generation"/>
        <expression value="name.exists() implies name.matches('^[A-Z]([A-Za-z0-9_]){1,254}$')"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Library"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="w5"/>
        <map value="conformance.behavior,clinical.general"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="Act[classCode=GROUPER;moodCode=EVN]"/>
      </mapping>
    </element>
    <element id="Library.id">
      <path value="Library.id"/>
      <short value="Logical id of this artifact"/>
      <definition value="The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes."/>
      <comment value="Within the context of the FHIR RESTful interactions, the resource has an id except for cases like the create and conditional update. Otherwise, the use of the resouce id depends on the given use case."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Resource.id"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type">
          <valueUrl value="id"/>
        </extension>
        <code value="http://hl7.org/fhirpath/System.String"/>
      </type>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
    </element>
    <element id="Library.meta">
      <path value="Library.meta"/>
      <short value="Metadata about the resource"/>
      <definition value="The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Resource.meta"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="Meta"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
    </element>
    <element id="Library.implicitRules">
      <path value="Library.implicitRules"/>
      <short value="A set of rules under which this content was created"/>
      <definition value="A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc."/>
      <comment value="Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of its narrative along with other profiles, value sets, etc."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Resource.implicitRules"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="uri"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="true"/>
      <isModifierReason value="This element is labeled as a modifier because the implicit rules may provide additional knowledge about the resource that modifies its meaning or interpretation"/>
      <isSummary value="true"/>
    </element>
    <element id="Library.language">
      <path value="Library.language"/>
      <short value="Language of the resource content"/>
      <definition value="The base language in which the resource is written."/>
      <comment value="Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Resource.language"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Language"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="IETF language tag for a human language"/>
        <valueSet value="http://hl7.org/fhir/ValueSet/all-languages|5.0.0-cibuild"/>
        <additional>
          <purpose value="starter"/>
          <valueSet value="http://hl7.org/fhir/ValueSet/languages"/>
        </additional>
      </binding>
    </element>
    <element id="Library.text">
      <path value="Library.text"/>
      <short value="Text summary of the resource, for human interpretation"/>
      <definition value="A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it &quot;clinically safe&quot; for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety."/>
      <comment value="Contained resources do not have a narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a &quot;text blob&quot; or where text is additionally entered raw or narrated and encoded information is added later."/>
      <alias value="narrative"/>
      <alias value="html"/>
      <alias value="xhtml"/>
      <alias value="display"/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="DomainResource.text"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="Narrative"/>
      </type>
      <condition value="dom-6"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="Act.text?"/>
      </mapping>
    </element>
    <element id="Library.contained">
      <path value="Library.contained"/>
      <short value="Contained, inline Resources"/>
      <definition value="These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, nor can they have their own independent transaction scope. This is allowed to be a Parameters resource if and only if it is referenced by a resource that provides context/meaning."/>
      <comment value="This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags in their meta elements, but SHALL NOT have security labels."/>
      <alias value="inline resources"/>
      <alias value="anonymous resources"/>
      <alias value="contained resources"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.contained"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Resource"/>
      </type>
      <condition value="dom-2"/>
      <condition value="dom-4"/>
      <condition value="dom-3"/>
      <condition value="dom-5"/>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A"/>
      </mapping>
    </element>
    <element id="Library.extension">
      <path value="Library.extension"/>
      <slicing>
        <discriminator>
          <type value="value"/>
          <path value="url"/>
        </discriminator>
        <ordered value="false"/>
        <rules value="open"/>
      </slicing>
      <short value="Extension"/>
      <definition value="An Extension"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
    </element>
    <element id="Library.extension:knowledgeCapability">
      <path value="Library.extension"/>
      <sliceName value="knowledgeCapability"/>
      <short value="shareable | computable | publishable | executable"/>
      <definition value="Defines a knowledge capability afforded by this knowledge artifact."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
        <profile value="http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
    </element>
    <element id="Library.extension:knowledgeRepresentationLevel">
      <path value="Library.extension"/>
      <sliceName value="knowledgeRepresentationLevel"/>
      <short value="narrative | semi-structured | structured | executable"/>
      <definition value="Defines a knowledge representation level provided by this knowledge artifact."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
        <profile value="http://hl7.org/fhir/StructureDefinition/cqf-knowledgeRepresentationLevel"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
    </element>
    <element id="Library.extension:artifactComment">
      <path value="Library.extension"/>
      <sliceName value="artifactComment"/>
      <short value="Additional documentation, review, or usage guidance"/>
      <definition value="A comment containing additional documentation, a review comment, usage guidance, or other relevant information from a particular user."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
        <profile value="http://hl7.org/fhir/StructureDefinition/cqf-artifactComment"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
    </element>
    <element id="Library.modifierExtension">
      <path value="Library.modifierExtension"/>
      <short value="Extensions that cannot be ignored"/>
      <definition value="May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.&#xA;&#xA;Modifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself)."/>
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."/>
      <requirements value="Modifier extensions allow for extensions that *cannot* be safely ignored to be clearly distinguished from the vast majority of extensions which can be safely ignored.  This promotes interoperability by eliminating the need for implementers to prohibit the presence of extensions. For further information, see the [definition of modifier extensions](extensibility.html#modifierExtension)."/>
      <alias value="extensions"/>
      <alias value="user content"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="DomainResource.modifierExtension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="true"/>
      <isModifierReason value="Modifier extensions are expected to modify the meaning or interpretation of the resource that contains them"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A"/>
      </mapping>
    </element>
    <element id="Library.url">
      <path value="Library.url"/>
      <short value="Canonical identifier for this library, represented as a URI (globally unique)"/>
      <definition value="An absolute URI that is used to identify this library when it is referenced in a specification, model, design or an instance; also called its canonical identifier. This SHOULD be globally unique and SHOULD be a literal address at which an authoritative instance of this library is (or will be) published. This URL can be the target of a canonical reference. It SHALL remain the same when the library is stored on different servers."/>
      <comment value="Can be a urn:uuid: or a urn:oid: but real http: addresses are preferred.  Multiple instances may share the same URL if they have a distinct version.&#xA;&#xA;The determination of when to create a new version of a resource (same url, new version) vs. defining a new artifact is up to the author.  Considerations for making this decision are found in [Technical and Business Versions](resource.html#versions). &#xA;&#xA;In some cases, the resource can no longer be found at the stated url, but the url itself cannot change. Implementations can use the [meta.source](resource.html#meta) element to indicate where the current master source of the resource can be found."/>
      <requirements value="Allows the library to be referenced by a single globally unique identifier."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.url"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="uri"/>
      </type>
      <constraint>
        <key value="cnl-1"/>
        <severity value="warning"/>
        <human value="URL should not contain | or # - these characters make processing canonical references problematic"/>
        <expression value="exists() implies matches('^[^|# ]+$')"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Library"/>
      </constraint>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.identifier"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".identifier[scope=BUSN;reliability=ISS]"/>
      </mapping>
    </element>
    <element id="Library.identifier">
      <path value="Library.identifier"/>
      <short value="Additional identifier for the library"/>
      <definition value="A formal identifier that is used to identify this library when it is represented in other formats, or referenced in a specification, model, design or an instance. e.g. CMS or NQF identifiers for a measure artifact. Note that at least one identifier is required for non-experimental active artifacts."/>
      <comment value="Typically, this is used for identifiers that can go in an HL7 V3 II (instance identifier) data type, and can then identify this library outside of FHIR, where it is not possible to use the logical URI."/>
      <requirements value="Allows externally provided and/or usable business identifiers to be easily associated with the module."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.identifier"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Identifier"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.identifier"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".identifier"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.version">
      <path value="Library.version"/>
      <short value="Business version of the library"/>
      <definition value="The identifier that is used to identify this version of the library when it is referenced in a specification, model, design or instance. This is an arbitrary value managed by the library author and is not expected to be globally unique. For example, it might be a timestamp (e.g. yyyymmdd) if a managed version is not available. There is also no expectation that versions can be placed in a lexicographical sequence. To provide a version consistent with the Decision Support Service specification, use the format Major.Minor.Revision (e.g. 1.0.0). For more information on versioning knowledge assets, refer to the Decision Support Service specification. Note that a version is required for non-experimental active artifacts."/>
      <comment value="There may be different library instances that have the same identifier but different versions.  The version can be appended to the url in a reference to allow a reference to a particular business version of the library with the format [url]|[version]. The version SHOULD NOT contain a '#' - see [Business Version](resource.html#bv-format)."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.version"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.version"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.versionAlgorithm[x]">
      <path value="Library.versionAlgorithm[x]"/>
      <short value="How to compare versions"/>
      <definition value="Indicates the mechanism used to compare versions to determine which is more current."/>
      <comment value="If set as a string, this is a FHIRPath expression that has two additional context variables passed in - %version1 and %version2 and will return a negative number if version1 is newer, a positive number if version2 and a 0 if the version ordering can't be successfully be determined."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.versionAlgorithm[x]"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <type>
        <code value="Coding"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <strength value="extensible"/>
        <valueSet value="http://hl7.org/fhir/ValueSet/version-algorithm"/>
      </binding>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.version"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.name">
      <path value="Library.name"/>
      <short value="Name for this library (computer friendly)"/>
      <definition value="A natural language name identifying the library. This name should be usable as an identifier for the module by machine processing applications such as code generation."/>
      <comment value="The name is not expected to be globally unique. The name should be a simple alphanumeric type name to ensure that it is machine-processing friendly."/>
      <requirements value="Support human navigation and code generation."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.name"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <condition value="cnl-0"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A"/>
      </mapping>
    </element>
    <element id="Library.title">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.title"/>
      <short value="Name for this library (human friendly)"/>
      <definition value="A short, descriptive, user-friendly title for the library."/>
      <comment value="This name does not need to be machine-processing friendly and may contain punctuation, white-space, etc."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.title"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".title"/>
      </mapping>
    </element>
    <element id="Library.subtitle">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.subtitle"/>
      <short value="Subordinate title of the library"/>
      <definition value="An explanatory or alternate title for the library giving additional information about its content."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.subtitle"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A"/>
      </mapping>
    </element>
    <element id="Library.status">
      <path value="Library.status"/>
      <short value="draft | active | retired | unknown"/>
      <definition value="The status of this library. Enables tracking the life-cycle of the content."/>
      <comment value="Allows filtering of libraries that are appropriate for use vs. not.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.status"/>
        <min value="1"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="true"/>
      <isModifierReason value="This is labeled as &quot;Is Modifier&quot; because applications should not use a retired {{title}} without due consideration"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="PublicationStatus"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="The lifecycle status of an artifact."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/publication-status|5.0.0-cibuild"/>
      </binding>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.status"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".status"/>
      </mapping>
    </element>
    <element id="Library.experimental">
      <path value="Library.experimental"/>
      <short value="For testing purposes, not real usage"/>
      <definition value="A Boolean value to indicate that this library is authored for testing purposes (or education/evaluation/marketing) and is not intended to be used for genuine usage."/>
      <comment value="Allows filtering of librarys that are appropriate for use versus not."/>
      <requirements value="Enables experimental content to be developed following the same lifecycle that would be used for a production-level library."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.experimental"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="boolean"/>
      </type>
      <meaningWhenMissing value="If absent, this resource is treated as though it is not experimental."/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.class"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.type">
      <path value="Library.type"/>
      <short value="logic-library | model-definition | asset-collection | module-definition"/>
      <definition value="Identifies the type of library such as a Logic Library, Model Definition, Asset Collection, or Module Definition."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.type"/>
        <min value="1"/>
        <max value="1"/>
      </base>
      <type>
        <code value="CodeableConcept"/>
      </type>
      <patternCodeableConcept>
        <coding>
          <system value="http://terminology.hl7.org/CodeSystem/library-type"/>
          <code value="model-definition"/>
        </coding>
      </patternCodeableConcept>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="LibraryType"/>
        </extension>
        <strength value="extensible"/>
        <description value="The type of knowledge asset this library contains."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/library-type"/>
      </binding>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.what[x]"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".code"/>
      </mapping>
    </element>
    <element id="Library.subject[x]">
      <path value="Library.subject[x]"/>
      <short value="Type of individual the library content is focused on"/>
      <definition value="A code or group definition that describes the intended subject of the contents of the library."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.subject[x]"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="CodeableConcept"/>
      </type>
      <type>
        <code value="Reference"/>
        <targetProfile value="http://hl7.org/fhir/StructureDefinition/Group"/>
      </type>
      <meaningWhenMissing value="Patient"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="SubjectType"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="extensible"/>
        <description value="The possible types of subjects for a library (E.g. Patient, Practitioner, Organization, Location, etc.)."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/participant-resource-types"/>
      </binding>
      <mapping>
        <identity value="rim"/>
        <map value="N/A"/>
      </mapping>
    </element>
    <element id="Library.date">
      <path value="Library.date"/>
      <short value="Date last changed"/>
      <definition value="The date  (and optionally time) when the library was last significantly changed. The date must change when the business version changes and it must change if the status code changes. In addition, it should change when the substantive content of the library changes."/>
      <comment value="The date is often not tracked until the resource is published, but may be present on draft content. Note that this is not the same as the resource last-modified-date, since the resource may be a secondary representation of the library. Additional specific dates may be added as extensions or be found by consulting Provenances associated with past versions of the resource.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <alias value="Revision Date"/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.date"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="dateTime"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.recorded"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=AUT].time"/>
      </mapping>
    </element>
    <element id="Library.publisher">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.publisher"/>
      <short value="Name of the publisher/steward (organization or individual)"/>
      <definition value="The name of the organization or individual responsible for the release and ongoing maintenance of the library."/>
      <comment value="Usually an organization but may be an individual. The publisher (or steward) of the library is the organization or individual primarily responsible for the maintenance and upkeep of the library. This is not necessarily the same individual or organization that developed and initially authored the content. The publisher is the primary point of contact for questions or issues with the library. This item SHOULD be populated unless the information is available from context."/>
      <requirements value="Helps establish the &quot;authority/credibility&quot; of the library.  May also allow for contact."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.publisher"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.witness"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=AUT].role"/>
      </mapping>
    </element>
    <element id="Library.contact">
      <path value="Library.contact"/>
      <short value="Contact details for the publisher"/>
      <definition value="Contact details to assist a user in finding and communicating with the publisher."/>
      <comment value="May be a web site, an email address, a telephone number, etc.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.contact"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ContactDetail"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=CALLBCK].role"/>
      </mapping>
    </element>
    <element id="Library.description">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.description"/>
      <short value="Natural language description of the library"/>
      <definition value="A free text natural language description of the library from a consumer's perspective."/>
      <comment value="This description can be used to capture details such as comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the library as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the library is presumed to be the predominant language in the place the library was created)."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Library.description"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="markdown"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".text"/>
      </mapping>
    </element>
    <element id="Library.useContext">
      <path value="Library.useContext"/>
      <short value="The context that the content is intended to support"/>
      <definition value="The content was developed with a focus and intent of supporting the contexts that are listed. These contexts may be general categories (gender, age, ...) or may be references to specific programs (insurance plans, studies, ...) and may be used to assist with indexing and searching for appropriate library instances."/>
      <comment value="When multiple useContexts are specified, there is no expectation that all or any of the contexts apply."/>
      <requirements value="Assist in searching for appropriate content."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.useContext"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="UsageContext"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.jurisdiction">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="deprecated"/>
      </extension>
      <path value="Library.jurisdiction"/>
      <short value="Intended jurisdiction for library (if applicable)"/>
      <definition value="A legal or geographic region in which the library is intended to be used."/>
      <comment value="It may be possible for the library to be used in jurisdictions other than those for which it was originally designed or intended.&#xA;&#xA;DEPRECATION NOTE: For consistency, implementations are encouraged to migrate to using the new 'jurisdiction' code in the useContext element.  (I.e. useContext.code indicating http://terminology.hl7.org/CodeSystem/usage-context-type#jurisdiction and useContext.valueCodeableConcept indicating the jurisdiction.)"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.jurisdiction"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="CodeableConcept"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Jurisdiction"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="extensible"/>
        <description value="Countries and regions within which this artifact is targeted for use."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/jurisdiction"/>
      </binding>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.purpose">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.purpose"/>
      <short value="Why this library is defined"/>
      <definition value="Explanation of why this library is needed and why it has been designed as it has."/>
      <comment value="This element does not describe the usage of the library. Instead, it provides traceability of ''why'' the resource is either needed or ''why'' it is defined as it is.  This may be used to point to source materials or specifications that drove the structure of this library."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.purpose"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="markdown"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="w5"/>
        <map value="FiveWs.why[x]"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value=".reasonCode.text"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.usage">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.usage"/>
      <short value="Describes the clinical usage of the library"/>
      <definition value="A detailed description of how the library is used from a clinical perspective."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.usage"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="markdown"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.copyright">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.copyright"/>
      <short value="Use and/or publishing restrictions"/>
      <definition value="A copyright statement relating to the library and/or its contents. Copyright statements are generally legal restrictions on the use and publishing of the library."/>
      <comment value="The short copyright declaration (e.g. (c) '2015+ xyz organization' should be sent in the copyrightLabel element."/>
      <requirements value="Consumers must be able to determine any legal restrictions on the use of the library and/or its content."/>
      <alias value="License"/>
      <alias value="Restrictions"/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.copyright"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="markdown"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.copyrightLabel">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.copyrightLabel"/>
      <short value="Copyright holder and year(s)"/>
      <definition value="A short string (&lt;50 characters), suitable for inclusion in a page footer that identifies the copyright holder, effective period, and optionally whether rights are resctricted. (e.g. 'All rights reserved', 'Some rights reserved')."/>
      <comment value="The (c) symbol should NOT be included in this string. It will be added by software when rendering the notation. Full details about licensing, restrictions, warrantees, etc. goes in the more general 'copyright' element."/>
      <requirements value="Defines the content expected to be rendered in all representations of the artifact."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.copyrightLabel"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.approvalDate">
      <path value="Library.approvalDate"/>
      <short value="When the library was approved by publisher"/>
      <definition value="The date on which the resource content was approved by the publisher. Approval happens once when the content is officially approved for usage."/>
      <comment value="The 'date' element may be more recent than the approval date because of minor changes or editorial corrections.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.approvalDate"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="date"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;SUBJ&quot;].act[classCode=CACT;moodCode=EVN;code=&quot;approval&quot;].effectiveTime"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.lastReviewDate">
      <path value="Library.lastReviewDate"/>
      <short value="When the library was last reviewed by the publisher"/>
      <definition value="The date on which the resource content was last reviewed. Review happens periodically after approval but does not change the original approval date."/>
      <comment value="If specified, this date follows the original approval date.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <requirements value="Gives a sense of how &quot;current&quot; the content is.  Resources that have not been reviewed in a long time may have a risk of being less appropriate/relevant."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.lastReviewDate"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="date"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;SUBJ&quot;; subsetCode=&quot;RECENT&quot;].act[classCode=CACT;moodCode=EVN;code=&quot;review&quot;].effectiveTime"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.effectivePeriod">
      <path value="Library.effectivePeriod"/>
      <short value="When the library is expected to be used"/>
      <definition value="The period during which the library content was or is planned to be in active use."/>
      <comment value="The effective period for a library determines when the content is applicable for usage and is independent of publication and review dates. For example, a library intended to be used for the year 2016 might be published in 2015.&#xA;&#xA;See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <requirements value="Allows establishing a transition before a resource comes into effect and also allows for a sunsetting  process when new versions of the library are or are expected to be used instead."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Library.effectivePeriod"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="Period"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
      <mapping>
        <identity value="objimpl"/>
        <map value="no-gen-base"/>
      </mapping>
    </element>
    <element id="Library.topic">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="deprecated"/>
      </extension>
      <path value="Library.topic"/>
      <short value="E.g. Education, Treatment, Assessment, etc"/>
      <definition value="Descriptive topics related to the content of the library. Topics provide a high-level categorization of the library that can be useful for filtering and searching."/>
      <comment value="DEPRECATION NOTE: For consistency, implementations are encouraged to migrate to using the new 'topic' code in the useContext element.  (I.e. useContext.code indicating http://terminology.hl7.org/CodeSystem/usage-context-type#topic and useContext.valueCodeableConcept indicating the topic)"/>
      <requirements value="Repositories must be able to determine how to categorize the library so that it can be found by topical searches."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.topic"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="CodeableConcept"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <binding>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="DefinitionTopic"/>
        </extension>
        <strength value="example"/>
        <description value="High-level categorization of the definition, used for searching, sorting, and filtering."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/definition-topic"/>
      </binding>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.author">
      <path value="Library.author"/>
      <short value="Who authored the content"/>
      <definition value="An individiual or organization primarily involved in the creation and maintenance of the content."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.author"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ContactDetail"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=AUT]"/>
      </mapping>
    </element>
    <element id="Library.editor">
      <path value="Library.editor"/>
      <short value="Who edited the content"/>
      <definition value="An individual or organization primarily responsible for internal coherence of the content."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.editor"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ContactDetail"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=AUT]"/>
      </mapping>
    </element>
    <element id="Library.reviewer">
      <path value="Library.reviewer"/>
      <short value="Who reviewed the content"/>
      <definition value="An individual or organization asserted by the publisher to be primarily responsible for review of some aspect of the content."/>
      <comment value="See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.reviewer"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ContactDetail"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=VRF] {not clear whether VRF best corresponds to reviewer or endorser}"/>
      </mapping>
    </element>
    <element id="Library.endorser">
      <path value="Library.endorser"/>
      <short value="Who endorsed the content"/>
      <definition value="An individual or organization asserted by the publisher to be responsible for officially endorsing the content for use in some setting."/>
      <comment value="See guidance around (not) making local changes to elements [here](canonicalresource.html#localization)."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.endorser"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ContactDetail"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".participation[typeCode=VRF] {not clear whether VRF best corresponds to reviewer or endorser}"/>
      </mapping>
    </element>
    <element id="Library.relatedArtifact">
      <path value="Library.relatedArtifact"/>
      <short value="Additional documentation, citations, etc"/>
      <definition value="Related artifacts such as additional documentation, justification, or bibliographic references."/>
      <comment value="Each related artifact is either an attachment, or a reference to another resource, but not both."/>
      <requirements value="Libraries must be able to provide enough information for consumers of the content (and/or interventions or results produced by the content) to be able to determine and understand the justification for and evidence in support of the content."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.relatedArtifact"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="RelatedArtifact"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=DOC,RSON,PREV, DRIV, USE, COMP] {successor would be PREV w/ inversionInd=true; No support for citation}"/>
      </mapping>
    </element>
    <element id="Library.parameter">
      <path value="Library.parameter"/>
      <short value="Parameters defined by the library"/>
      <definition value="The parameter element defines parameters used by the library."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.parameter"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="ParameterDefinition"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.dataRequirement">
      <path value="Library.dataRequirement"/>
      <short value="What data is referenced by this library"/>
      <definition value="Describes a set of data that must be provided in order to be able to successfully perform the computations defined by the library."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.dataRequirement"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="DataRequirement"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="false"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (to add?)"/>
      </mapping>
    </element>
    <element id="Library.content">
      <path value="Library.content"/>
      <slicing>
        <discriminator>
          <type value="value"/>
          <path value="contentType"/>
        </discriminator>
        <rules value="open"/>
      </slicing>
      <short value="Contents of the library, either embedded or referenced"/>
      <definition value="The content of the library as an Attachment. The content may be a reference to a url, or may be directly embedded as a base-64 string. Either way, the contentType of the attachment determines how to interpret the content."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.content"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Attachment"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".text"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent">
      <path value="Library.content"/>
      <sliceName value="modelInfoXmlContent"/>
      <short value="ModelInfo XML Content"/>
      <definition value="The XML representation of the ModelInfo as base-64 encoded data."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.content"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Attachment"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".text"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.id">
      <path value="Library.content.id"/>
      <representation value="xmlAttr"/>
      <short value="Unique id for inter-element referencing"/>
      <definition value="Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Element.id"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type">
          <valueUrl value="id"/>
        </extension>
        <code value="http://hl7.org/fhirpath/System.String"/>
      </type>
      <condition value="ele-1"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="n/a"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.extension">
      <path value="Library.content.extension"/>
      <slicing>
        <discriminator>
          <type value="value"/>
          <path value="url"/>
        </discriminator>
        <description value="Extensions are always sliced by (at least) url"/>
        <rules value="open"/>
      </slicing>
      <short value="Additional content defined by implementations"/>
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."/>
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."/>
      <alias value="extensions"/>
      <alias value="user content"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Element.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="n/a"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.contentType">
      <path value="Library.content.contentType"/>
      <short value="Mime type of the content, with charset etc."/>
      <definition value="Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate."/>
      <requirements value="Processors of the data need to be able to know how to interpret the data."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.contentType"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <fixedCode value="application/xml"/>
      <example>
        <label value="General"/>
        <valueCode value="text/plain; charset=UTF-8, image/png"/>
      </example>
      <condition value="att-1"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/tools/StructureDefinition/binding-definition">
          <valueString value="The mime type of an attachment. Any valid mime type is allowed."/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="MimeType"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="BCP 13 (RFCs 2045, 2046, 2047, 4288, 4289 and 2049)"/>
        <valueSet value="http://hl7.org/fhir/ValueSet/mimetypes|5.0.0-cibuild"/>
      </binding>
      <mapping>
        <identity value="v2"/>
        <map value="ED.2+ED.3/RP.2+RP.3. Note conversion may be needed if old style values are being used"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./mediaType, ./charset"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.language">
      <path value="Library.content.language"/>
      <short value="Human language of the content (BCP-47)"/>
      <definition value="The human language of the content. The value can be any valid value according to BCP 47."/>
      <requirements value="Users need to be able to choose between the languages in a set of attachments."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.language"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <example>
        <label value="General"/>
        <valueCode value="en-AU"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/tools/StructureDefinition/binding-definition">
          <valueString value="IETF language tag for a human language."/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Language"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="IETF language tag for a human language."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/all-languages|5.0.0-cibuild"/>
        <additional>
          <purpose value="starter"/>
          <valueSet value="http://hl7.org/fhir/ValueSet/languages"/>
        </additional>
      </binding>
      <mapping>
        <identity value="rim"/>
        <map value="./language"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.data">
      <path value="Library.content.data"/>
      <short value="Data inline, base64ed"/>
      <definition value="The actual data of the attachment - a sequence of bytes, base64 encoded."/>
      <comment value="The base64-encoded data SHALL be expressed in the same character set as the base resource XML or JSON."/>
      <requirements value="The data needs to able to be transmitted inline."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Attachment.data"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="base64Binary"/>
      </type>
      <condition value="att-1"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="v2"/>
        <map value="ED.5"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./data"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.url">
      <path value="Library.content.url"/>
      <short value="Uri where the data can be found"/>
      <definition value="A location where the data can be accessed."/>
      <comment value="If both data and url are provided, the url SHALL point to the same content as the data contains. Urls may be relative references or may reference transient locations such as a wrapping envelope using cid: though this has ramifications for using signatures. Relative URLs are interpreted relative to the service url, like a resource reference, rather than relative to the resource itself. If a URL is provided, it SHALL resolve to actual data."/>
      <requirements value="The data needs to be transmitted by reference."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.url"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="url"/>
      </type>
      <example>
        <label value="General"/>
        <valueUrl value="http://www.acme.com/logo-small.png"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="v2"/>
        <map value="RP.1+RP.2 - if they refer to a URL (see v2.6)"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./reference/literal"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.size">
      <path value="Library.content.size"/>
      <short value="Number of bytes of content (if url provided)"/>
      <definition value="The number of bytes of data that make up this attachment (before base64 encoding, if that is done)."/>
      <comment value="The number of bytes is redundant if the data is provided as a base64binary, but is useful if the data is provided as a url reference."/>
      <requirements value="Representing the size allows applications to determine whether they should fetch the content automatically in advance, or refuse to fetch it at all."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.size"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="integer64"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (needs data type R3 proposal)"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.hash">
      <path value="Library.content.hash"/>
      <short value="Hash of the data (sha-1, base64ed)"/>
      <definition value="The calculated hash of the data using SHA-1. Represented using base64."/>
      <comment value="The hash is calculated on the data prior to base64 encoding, if the data is based64 encoded. The hash is not intended to support digital signatures. Where protection against malicious threats a digital signature should be considered, see [Provenance.signature](provenance-definitions.html#Provenance.signature) for mechanism to protect a resource with a digital signature."/>
      <requirements value="Included so that applications can verify that the contents of a location have not changed due to technical failures (e.g., storage rot, transport glitch, incorrect version)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.hash"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="base64Binary"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".integrityCheck[parent::ED/integrityCheckAlgorithm=&quot;SHA-1&quot;]"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.title">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.content.title"/>
      <short value="Label to display in place of the data"/>
      <definition value="A label or set of text to display in place of the data."/>
      <comment value="May sometimes be derived from the source filename."/>
      <requirements value="Applications need a label to display to a human user in place of the actual data if the data cannot be rendered or perceived by the viewer."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.title"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <example>
        <label value="General"/>
        <valueString value="Official Corporate Logo"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="./title/data"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.creation">
      <path value="Library.content.creation"/>
      <short value="Date attachment was first created"/>
      <definition value="The date that the attachment was first created."/>
      <requirements value="This is often tracked as an integrity issue for use of the attachment."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.creation"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="dateTime"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (needs data type R3 proposal)"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.height">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.height"/>
      <short value="Height of the image in pixels (photo/video)"/>
      <definition value="Height of the image in pixels (photo/video)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.height"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.width">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.width"/>
      <short value="Width of the image in pixels (photo/video)"/>
      <definition value="Width of the image in pixels (photo/video)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.width"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.frames">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.frames"/>
      <short value="Number of frames if &gt; 1 (photo)"/>
      <definition value="The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required."/>
      <comment value="if the number of frames is not supplied, the value may be unknown. Applications should not assume that there is only one frame unless it is explicitly stated."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.frames"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.duration">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.duration"/>
      <short value="Length in seconds (audio / video)"/>
      <definition value="The duration of the recording in seconds - for audio and video."/>
      <comment value="The duration might differ from occurrencePeriod if recording was paused."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.duration"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="decimal"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoXmlContent.pages">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.pages"/>
      <short value="Number of printed pages"/>
      <definition value="The number of pages when printed."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.pages"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
    </element>
    <element id="Library.content:modelInfoJsonContent">
      <path value="Library.content"/>
      <sliceName value="modelInfoJsonContent"/>
      <short value="ModelInfo JSON Content"/>
      <definition value="The JSON representation of the ModelInfo as base-64 encoded data."/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Library.content"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Attachment"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".text"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.id">
      <path value="Library.content.id"/>
      <representation value="xmlAttr"/>
      <short value="Unique id for inter-element referencing"/>
      <definition value="Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Element.id"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type">
          <valueUrl value="id"/>
        </extension>
        <code value="http://hl7.org/fhirpath/System.String"/>
      </type>
      <condition value="ele-1"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="n/a"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.extension">
      <path value="Library.content.extension"/>
      <slicing>
        <discriminator>
          <type value="value"/>
          <path value="url"/>
        </discriminator>
        <description value="Extensions are always sliced by (at least) url"/>
        <rules value="open"/>
      </slicing>
      <short value="Additional content defined by implementations"/>
      <definition value="May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and managable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension."/>
      <comment value="There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone."/>
      <alias value="extensions"/>
      <alias value="user content"/>
      <min value="0"/>
      <max value="*"/>
      <base>
        <path value="Element.extension"/>
        <min value="0"/>
        <max value="*"/>
      </base>
      <type>
        <code value="Extension"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <constraint>
        <key value="ext-1"/>
        <severity value="error"/>
        <human value="Must have either extensions or value[x], not both"/>
        <expression value="extension.exists() != value.exists()"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Extension"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value="n/a"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.contentType">
      <path value="Library.content.contentType"/>
      <short value="Mime type of the content, with charset etc."/>
      <definition value="Identifies the type of the data in the attachment and allows a method to be chosen to interpret or render the data. Includes mime type parameters such as charset where appropriate."/>
      <requirements value="Processors of the data need to be able to know how to interpret the data."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.contentType"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <fixedCode value="application/json"/>
      <example>
        <label value="General"/>
        <valueCode value="text/plain; charset=UTF-8, image/png"/>
      </example>
      <condition value="att-1"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/tools/StructureDefinition/binding-definition">
          <valueString value="The mime type of an attachment. Any valid mime type is allowed."/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="MimeType"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="BCP 13 (RFCs 2045, 2046, 2047, 4288, 4289 and 2049)"/>
        <valueSet value="http://hl7.org/fhir/ValueSet/mimetypes|5.0.0-cibuild"/>
      </binding>
      <mapping>
        <identity value="v2"/>
        <map value="ED.2+ED.3/RP.2+RP.3. Note conversion may be needed if old style values are being used"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./mediaType, ./charset"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.language">
      <path value="Library.content.language"/>
      <short value="Human language of the content (BCP-47)"/>
      <definition value="The human language of the content. The value can be any valid value according to BCP 47."/>
      <requirements value="Users need to be able to choose between the languages in a set of attachments."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.language"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="code"/>
      </type>
      <example>
        <label value="General"/>
        <valueCode value="en-AU"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <binding>
        <extension url="http://hl7.org/fhir/tools/StructureDefinition/binding-definition">
          <valueString value="IETF language tag for a human language."/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName">
          <valueString value="Language"/>
        </extension>
        <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding">
          <valueBoolean value="true"/>
        </extension>
        <strength value="required"/>
        <description value="IETF language tag for a human language."/>
        <valueSet value="http://hl7.org/fhir/ValueSet/all-languages|5.0.0-cibuild"/>
        <additional>
          <purpose value="starter"/>
          <valueSet value="http://hl7.org/fhir/ValueSet/languages"/>
        </additional>
      </binding>
      <mapping>
        <identity value="rim"/>
        <map value="./language"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.data">
      <path value="Library.content.data"/>
      <short value="Data inline, base64ed"/>
      <definition value="The actual data of the attachment - a sequence of bytes, base64 encoded."/>
      <comment value="The base64-encoded data SHALL be expressed in the same character set as the base resource XML or JSON."/>
      <requirements value="The data needs to able to be transmitted inline."/>
      <min value="1"/>
      <max value="1"/>
      <base>
        <path value="Attachment.data"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="base64Binary"/>
      </type>
      <condition value="att-1"/>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <mustSupport value="true"/>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="v2"/>
        <map value="ED.5"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./data"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.url">
      <path value="Library.content.url"/>
      <short value="Uri where the data can be found"/>
      <definition value="A location where the data can be accessed."/>
      <comment value="If both data and url are provided, the url SHALL point to the same content as the data contains. Urls may be relative references or may reference transient locations such as a wrapping envelope using cid: though this has ramifications for using signatures. Relative URLs are interpreted relative to the service url, like a resource reference, rather than relative to the resource itself. If a URL is provided, it SHALL resolve to actual data."/>
      <requirements value="The data needs to be transmitted by reference."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.url"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="url"/>
      </type>
      <example>
        <label value="General"/>
        <valueUrl value="http://www.acme.com/logo-small.png"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="v2"/>
        <map value="RP.1+RP.2 - if they refer to a URL (see v2.6)"/>
      </mapping>
      <mapping>
        <identity value="rim"/>
        <map value="./reference/literal"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.size">
      <path value="Library.content.size"/>
      <short value="Number of bytes of content (if url provided)"/>
      <definition value="The number of bytes of data that make up this attachment (before base64 encoding, if that is done)."/>
      <comment value="The number of bytes is redundant if the data is provided as a base64binary, but is useful if the data is provided as a url reference."/>
      <requirements value="Representing the size allows applications to determine whether they should fetch the content automatically in advance, or refuse to fetch it at all."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.size"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="integer64"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (needs data type R3 proposal)"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.hash">
      <path value="Library.content.hash"/>
      <short value="Hash of the data (sha-1, base64ed)"/>
      <definition value="The calculated hash of the data using SHA-1. Represented using base64."/>
      <comment value="The hash is calculated on the data prior to base64 encoding, if the data is based64 encoded. The hash is not intended to support digital signatures. Where protection against malicious threats a digital signature should be considered, see [Provenance.signature](provenance-definitions.html#Provenance.signature) for mechanism to protect a resource with a digital signature."/>
      <requirements value="Included so that applications can verify that the contents of a location have not changed due to technical failures (e.g., storage rot, transport glitch, incorrect version)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.hash"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="base64Binary"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value=".integrityCheck[parent::ED/integrityCheckAlgorithm=&quot;SHA-1&quot;]"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.title">
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <extension url="http://hl7.org/fhir/StructureDefinition/elementdefinition-translatable">
        <valueBoolean value="true"/>
      </extension>
      <path value="Library.content.title"/>
      <short value="Label to display in place of the data"/>
      <definition value="A label or set of text to display in place of the data."/>
      <comment value="May sometimes be derived from the source filename."/>
      <requirements value="Applications need a label to display to a human user in place of the actual data if the data cannot be rendered or perceived by the viewer."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.title"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="string"/>
      </type>
      <example>
        <label value="General"/>
        <valueString value="Official Corporate Logo"/>
      </example>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="./title/data"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.creation">
      <path value="Library.content.creation"/>
      <short value="Date attachment was first created"/>
      <definition value="The date that the attachment was first created."/>
      <requirements value="This is often tracked as an integrity issue for use of the attachment."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.creation"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="dateTime"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="true"/>
      <mapping>
        <identity value="rim"/>
        <map value="N/A (needs data type R3 proposal)"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.height">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.height"/>
      <short value="Height of the image in pixels (photo/video)"/>
      <definition value="Height of the image in pixels (photo/video)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.height"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.width">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.width"/>
      <short value="Width of the image in pixels (photo/video)"/>
      <definition value="Width of the image in pixels (photo/video)."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.width"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.frames">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.frames"/>
      <short value="Number of frames if &gt; 1 (photo)"/>
      <definition value="The number of frames in a photo. This is used with a multi-page fax, or an imaging acquisition context that takes multiple slices in a single image, or an animated gif. If there is more than one frame, this SHALL have a value in order to alert interface software that a multi-frame capable rendering widget is required."/>
      <comment value="if the number of frames is not supplied, the value may be unknown. Applications should not assume that there is only one frame unless it is explicitly stated."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.frames"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.duration">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.duration"/>
      <short value="Length in seconds (audio / video)"/>
      <definition value="The duration of the recording in seconds - for audio and video."/>
      <comment value="The duration might differ from occurrencePeriod if recording was paused."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.duration"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="decimal"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
      <mapping>
        <identity value="rim"/>
        <map value=".outboundRelationship[typeCode=&quot;COMP].target[classCode=&quot;OBS&quot;, moodCode=&quot;EVN&quot;,code=&quot;&lt;CODE&gt;&quot;].value"/>
      </mapping>
    </element>
    <element id="Library.content:modelInfoJsonContent.pages">
      <extension url="http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status">
        <valueCode value="trial-use"/>
      </extension>
      <path value="Library.content.pages"/>
      <short value="Number of printed pages"/>
      <definition value="The number of pages when printed."/>
      <min value="0"/>
      <max value="1"/>
      <base>
        <path value="Attachment.pages"/>
        <min value="0"/>
        <max value="1"/>
      </base>
      <type>
        <code value="positiveInt"/>
      </type>
      <constraint>
        <key value="ele-1"/>
        <severity value="error"/>
        <human value="All FHIR elements must have a @value or children"/>
        <expression value="hasValue() or (children().count() &gt; id.count())"/>
        <source value="http://hl7.org/fhir/StructureDefinition/Element"/>
      </constraint>
      <isModifier value="false"/>
      <isSummary value="false"/>
    </element>
  </snapshot>
  <differential>
    <element id="Library">
      <path value="Library"/>
      <min value="1"/>
      <max value="1"/>
    </element>
    <element id="Library.type">
      <path value="Library.type"/>
      <min value="1"/>
      <max value="1"/>
      <type>
        <code value="CodeableConcept"/>
      </type>
      <patternCodeableConcept>
        <coding>
          <system value="http://terminology.hl7.org/CodeSystem/library-type"/>
          <code value="model-definition"/>
        </coding>
      </patternCodeableConcept>
    </element>
    <element id="Library.content">
      <path value="Library.content"/>
      <slicing>
        <discriminator>
          <type value="value"/>
          <path value="contentType"/>
        </discriminator>
        <rules value="open"/>
      </slicing>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoXmlContent">
      <path value="Library.content"/>
      <sliceName value="modelInfoXmlContent"/>
      <short value="ModelInfo XML Content"/>
      <definition value="The XML representation of the ModelInfo as base-64 encoded data."/>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoXmlContent.contentType">
      <path value="Library.content.contentType"/>
      <min value="0"/>
      <max value="1"/>
      <type>
        <code value="code"/>
      </type>
      <fixedCode value="application/xml"/>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoXmlContent.data">
      <path value="Library.content.data"/>
      <min value="1"/>
      <max value="1"/>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoJsonContent">
      <path value="Library.content"/>
      <sliceName value="modelInfoJsonContent"/>
      <short value="ModelInfo JSON Content"/>
      <definition value="The JSON representation of the ModelInfo as base-64 encoded data."/>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoJsonContent.contentType">
      <path value="Library.content.contentType"/>
      <min value="0"/>
      <max value="1"/>
      <type>
        <code value="code"/>
      </type>
      <fixedCode value="application/json"/>
      <mustSupport value="true"/>
    </element>
    <element id="Library.content:modelInfoJsonContent.data">
      <path value="Library.content.data"/>
      <min value="1"/>
      <max value="1"/>
      <mustSupport value="true"/>
    </element>
  </differential>
</StructureDefinition>''';