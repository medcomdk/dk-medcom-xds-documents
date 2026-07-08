// =============================================================================
// Mapping 3: MedComContainedDocumentReference -> MedComMessagingMessage
//                                              -> MedComMessagingMessageHeader
//
// Source profile:
//   http://medcomfhir.dk/ig/xdsdocuments/StructureDefinition/medcom-contained-documentreference
//   (Danish XDS Documents IG - https://medcomfhir.dk/ig/xdsdocuments)
//
// Target profiles:
//   MedComMessagingMessage       (the MedCom FHIR message Bundle as a whole,
//                                 https://medcomfhir.dk/ig/messaging/profiles.html)
//   MedComMessagingMessageHeader (the MessageHeader resource within that Bundle)
//
// Based on the mapping table published at:
// https://build.fhir.org/ig/medcomdk/dk-ehmi-sbdh/branches/DocRefexample/Mapping_from_IHE-XDS_metadata_to_FHIR-copy.html
// which maps MedComDocumentReference elements to MedComMessaging Bundle/
// MessageHeader locations via FHIRPath. The example values are taken from
// the HomeCareObservation message example on that page. Elements whose XDS
// value is purely a static/dynamic ValueSet lookup (not carried by a
// FHIRPath into the Bundle) are annotated as such rather than mapped to a
// path.
//
// Two separate FSH Mapping items are used (one per target), consistent with
// FHIR's Mapping model (one Source, one Target per mapping); the IG
// Publisher renders both in a single combined mapping table for the source
// profile, one column per Mapping.
// =============================================================================

// -----------------------------------------------------------------------
// 3a. MedComContainedDocumentReference -> MedComMessagingMessageHeader
// -----------------------------------------------------------------------
Mapping: MedComContainedDocumentReferenceToMedComMessagingMessageHeader
Id: medcom-contained-documentreference-to-medcom-messageheader
Source: MedComContainedDocumentReference
Target: "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-messageheader"
Title: "MedComMessagingMessageHeader"
Description: "Mapping from MedComContainedDocumentReference to MedComMessagingMessageHeader, based on https://build.fhir.org/ig/medcomdk/dk-ehmi-sbdh/branches/DocRefexample/Mapping_from_IHE-XDS_metadata_to_FHIR-copy.html"

* author[institution] -> "MessageHeader.sender" "Bundle.entry[0].resource.sender.resolve() (cast to MedComDocumentOrganization); identifier (SOR-identifier) can be compared"
* authenticator -> "MessageHeader.sender" "Bundle.entry[0].resource.sender.resolve(); identifier (SOR-identifier) can be compared"

// -----------------------------------------------------------------------
// 3b. MedComContainedDocumentReference -> MedComMessagingMessage
// -----------------------------------------------------------------------
Mapping: MedComContainedDocumentReferenceToMedComMessagingMessage
Id: medcom-contained-documentreference-to-medcom-message
Source: MedComContainedDocumentReference
Target: "http://medcomfhir.dk/ig/messaging/StructureDefinition/medcom-messaging-message"
Title: "MedComMessagingMessage"
Description: "Mapping from MedComContainedDocumentReference to MedComMessagingMessage (the overall message Bundle), based on https://build.fhir.org/ig/medcomdk/dk-ehmi-sbdh/branches/DocRefexample/Mapping_from_IHE-XDS_metadata_to_FHIR-copy.html. Example values are taken from the HomeCareObservation message example on that page."

* extension[versionid] -> "N/A" 
* masterIdentifier -> "Bundle.entry[0].resource.id" 
* identifier[entryUUID] -> "Bundle.id" 
* status -> "N/A" "Static/dynamic value from the statusCode ValueSet, e.g. 'current'; not carried by a Bundle FHIRPath"
* type -> "N/A" "Static/dynamic value from the typeCode ValueSet, e.g. system 'urn:oid:1.2.208.184.100.1', code 'HCOM'"
* category -> "N/A" "Static/dynamic value from the classCode ValueSet, e.g. system 'urn:oid:1.2.208.184.100.9', code '006'"
* subject -> "Bundle.entry.resource.ofType(Patient)" "Cast to MedComDocumentPatient; identifier (CPR-number) and name can be compared"
* author[person] -> "Bundle.entry.resource.ofType(Practitioner)" "Cast to MedComDocumentPractitioner; name can be compared"
* securityLabel -> "N/A" "From the securityLabel ValueSet, e.g. 'N'"
* content.attachment.contentType -> "N/A" "Static/dynamic value from the mimeType ValueSet, e.g. 'application/fhir+xml' or 'application/fhir+json'"
* content.attachment.language -> "N/A" "Static/dynamic value from the languageCode ValueSet, e.g. 'da'"
* content.attachment.title -> "Bundle.entry.resource.ofType(Patient).identifier.where(system = 'urn:oid:1.2.208.176.1.2').value" "Static text combined with a dynamic value, e.g. patient identifier: 'Kommunale prøvesvar for 2509479989'"
* content.attachment.creation -> "Bundle.timestamp" 
* content.format -> "N/A" "Static/dynamic value from the formatCode ValueSet, e.g. system 'urn:oid:1.2.208.184.100.10', code 'urn:ad:dk:medcom:hcom-v1.2:full'"
* context.period.start -> "Bundle.timestamp" "e.g. '2023-09-13T12:24:10+02:00'"
* context.facilityType -> "Bundle.entry[0].resource.sender.resolve().identifier.where(system = 'urn:oid:1.2.208.176.1.1').value" "Dynamic lookup in SOR for 'enhedstype' based on the sender SOR-code"
* context.practiceSetting -> "Bundle.entry[0].resource.sender.resolve().identifier.where(system = 'urn:oid:1.2.208.176.1.1').value" "Dynamic lookup in SOR for 'Speciale' based on the sender SOR-code"
* context.sourcePatientInfo -> "Bundle.entry.resource.ofType(Patient)" "Cast to MedComDocumentPatient; identifier (CPR-number) and name can be compared"
* context.sourcePatientInfo.identifier -> "Bundle.entry.resource.ofType(Patient).identifier.value" "e.g. '2509479989'"

// Contained resources overview (2..3 contained resources in MedComContainedDocumentReference):
//   Practitioner  -> Bundle.entry.resource.ofType(Practitioner) (cast to MedComDocumentPractitioner)
//   Organization  -> Bundle.entry[0].resource.ofType(MessageHeader).sender.resolve().ofType(Organization) (cast to MedComDocumentOrganization)
//   Patient       -> Bundle.entry.resource.ofType(Patient) (cast to MedComDocumentPatient)
