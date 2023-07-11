# Scope and Usage
This profile includes ValueSet and contraint for metadata related to the CDA-document APD-DK, defined by MedCom. The profile is called APDDKDocumentReference, and inherits contraints from [CoreDocumentReference](https://build.fhir.org/ig/medcomdk/dk-medcom-xds-metadata-core/StructureDefinition-core-documentreference.html). APDDKDocumentReference is further profiled to include ValueSets relevant for APD-DK.


## Version of APD-DK
The element DocumentReference.masterIdentifier include a system stating that the value is a UUID, and a value from the CDA-document (ClinicalDocument.id) which uniquely identifies the type of document and version.