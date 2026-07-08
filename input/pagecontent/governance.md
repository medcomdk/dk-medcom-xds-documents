This page addresses information about the document exchange that is of a general and is independent of the any specific projects.

## MedCom FHIR Documents

### Resource Identifiers in MedCom FHIR Documents
In FHIR, `Resource.identifier` is intended to capture business identifiers that remain constant across system boundaries, which differs from `Resource.id`, the internal technical identifier used within a single FHIR Bundle.
All resources included in a MedCom FHIR document **MUST** carry an `identifier` element consisting of both a `system` and a `value`. The identifier SHALL be globally unique, persistent, and stable over time. This means that the identifier **MUST NOT** change as long as the resource represents the same underlying real-world entity or dataset. For example, a Patient resource will always carry the same civil registration number (CPR) as its identifier.

**Global uniqueness:** To ensure global uniqueness, implementations may for example use UUIDv4 or UUIDv5. Use authoritative identifiers when available, such as CPR numbers or SOR codes.

**Persistence across snapshots:** Even if a document is re-created or updated, resources representing the same entity (e.g., Patient, Practitioner, Organization, Encounter) **MUST** retain their identifier.

**Bundle.identifier:** Once a document is assembled into a Bundle, the document is immutable, meaning its content cannot be changed, and the document id (Bundle.identifier) can never be reused. 

### XML and JSON
**XML and JSON:** Note that the document may be represented in either XML or JSON and converted between the two formats or have its character encoding changed, all while remaining the same document. 
As a retriever of a document you must be able to handle both formats.

### Narratives in the Document
Narrative text is a part of a MedCom FHIR Document. The [importance of the narrative text and requirements](https://medcomdk.github.io/MedComLandingPage/assets/documents/GeneralGovernanceFHIRStandards.html#5-implementation-requirements-for-narrative-texts) is described on general level. 

### Replacement-CPR
The Danish XDS infrastructure cannot handle replacement-CPR numbers. Therefore, it is only allowed to provide documents with Danish CPR numbers.

### Name and address protection (DA: Navne- og adressebeskyttelse)
If the patient and/or citizen is marked with name and address protection (DA: [Navne- og adressebeskyttelse](https://www.retsinformation.dk/eli/lta/2017/646#idee1fb7b6-c7e7-429d-a738-881c5e486fa6)) in the CPR Register, the patient's given name and family name **MUST** be populated with "ADRESSEBESKYTTET". This is the current approach used to ensure that the patient's name is not shared when the person has requested that it not be disclosed.

## XDS-metadata
The [XDS-metadata standard](https://medcomfhir.dk/ig/xdsmetadata) defines a set of metadata elements associated with health documents, enabling a consistent and structured description of the documents. The purpose is to facilitate the reliable and secure exchange of documents. 

The profiles [MedComContainedDocumentReference](../pagecontent/StructureDefinition-medcom-contained-documentreference.html) is a FHIR representation of the XDS-metadata standard. This profil is not intented to be exchanged until the infrastructure is ready to receive it, but can be used for validation of metadata associated with a document. However, it is a part of the (production pilot on EHMI)[http://www.ehmi.dk]. The profile provides metadata about a document, which can be CDA and FHIR. It holds the required metadata from the XDS-metadata standard, and a [mapping between the two can be found on the profile pages](StructureDefinition-medcom-contained-documentreference-mappings.html#other-mappings). 

## Implementation

### Dependencies
In the [MedCom Terminology IG](http://medcomfhir.dk/ig/terminology/) all referenced MedCom Terminology CodeSystems and Value sets developed by MedCom can be found. CodeSystems and ValueSets from this IG is used in the project specific IGs.

In the [MedCom Terminology for XDS Metadata](https://medcomfhir.dk/ig/xdsmetadata/) all MedCom CodeSystems and ValueSets related to metadata can be found. In addition the IG includes the XDS-metadata specifications.

Besides Terminology and metadata IGs, this IG has a dependency to the [MedComCore IG](http://medcomfhir.dk/ig/core/), [DK-core](https://hl7.dk/fhir/core/), defined by [HL7 Denmark](https://hl7.dk/) and [IHE MHD](https://profiles.ihe.net/ITI/MHD/). When implementing using FHIR tools, these packages should be downloaded in order to ensure correct validation.

**Note:** that the IG versions linked may be newer than the versions used as dependencies in this implementation guide. For the exact dependency versions applied, see the **Dependencies** tab in the top menu under **More**.

### Validation
Validation of MedCom FHIR Documents is strongly recommended to prevent invalid documents being shared through the XDS infrastructure. Here you can read more about [FHIR Validation](https://medcomdk.github.io/MedComLandingPage/assets/documents/FHIRValidationGovernance.html).

## Test and certification
General information about [test and certification can be found on MedCom's website](https://medcom.dk/standarder/test-og-certificering/). MedCom FHIR Documents follows MedCom's usual proces for test and certification. For document exchange, vendors will most often be tested for correct support of the standard and communication with the XDS infrastructure. In addition, MedCom uses a [validation tool, called Interoperability Test Bed (ITB)](https://medcomdk.github.io/MedComLandingPage/#3-test-and-certification), to ensure the validity of the documents. This tool may also be used during development.