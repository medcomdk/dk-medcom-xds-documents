// =============================================================================
// Mapping 1: MedComContainedDocumentReference -> MedComDocumentComposition
//                                             -> MedComDocumentBundle
//
// Source profile:
//   http://medcomfhir.dk/ig/xdsdocuments/StructureDefinition/medcom-contained-documentreference
//   (Danish XDS Documents IG - https://medcomfhir.dk/ig/xdsdocuments)
//
// Target profiles:
//   MedComDocumentComposition (http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-composition)
//   MedComDocumentBundle      (http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-bundle)
//
// Basis: Both MedComContainedDocumentReference and MedComDocumentComposition/
// MedComDocumentBundle are independently derived from the same underlying
// IHE XDS DocumentEntry/SubmissionSet metadata attributes. This mapping
// therefore documents element-to-element correspondence "via" that shared
// XDS metadata source, following the pattern already published at:
// https://medcomdk.github.io/dk-medcom-document/assets/documents/Mapping_from_IHE-XDS_metadata_to_FHIR.html
//
// Two separate FSH Mapping items are used (one per target), as required by
// FHIR's Mapping model (one Source, one Target per mapping). The IG
// Publisher renders mappings that share the same Source profile together in
// a single "Other Mappings" table with one column per Mapping, exactly like
// https://build.fhir.org/ig/hl7dk/dk-core/branches/feature-medication-addons/StructureDefinition-dk-core-condition-mappings.html
// =============================================================================

// -----------------------------------------------------------------------
// 1a. MedComContainedDocumentReference -> MedComDocumentComposition
// -----------------------------------------------------------------------
Mapping: MedComContainedDocumentReferenceToMedComDocumentComposition
Id: medcom-contained-documentreference-to-medcom-doc-composition
Source: MedComContainedDocumentReference
Target: "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-composition"
Title: "MedComDocumentComposition"
Description: "Mapping from MedComContainedDocumentReference to MedComDocumentComposition, via the shared IHE XDS DocumentEntry/SubmissionSet metadata attributes that both profiles are derived from."

* masterIdentifier -> "Composition.identifier"
* identifier[entryUUID] -> "N/A" "MedCom recommends using Bundle.id for the EntryUUID (see MedComDocumentBundle mapping)"
* type -> "Composition.type"
* category -> "Composition.category"
* securityLabel -> "Composition.confidentiality"
* subject -> "Composition.subject"
* author[institution] -> "Composition.author (institution slice, MedComDocumentOrganization)"
* author[person] -> "Composition.author (person slice, MedComDocumentPractitioner)" 
* authenticator -> "Composition.attester.party"
* content.attachment.language -> "Composition.language"
* content.attachment.title -> "Composition.title"
* content.format -> "Composition.meta.profile" 
* context.event -> "Composition.event.code"
* context.period.start -> "Composition.event.period.start"
* context.period.end -> "Composition.event.period.end"
* context.sourcePatientInfo -> "Composition.subject (MedComDocumentPatient)"
* context.sourcePatientInfo.identifier -> "Composition.subject.resolve().identifier:cpr" 
* context.related -> "Composition.event.detail"
// Not mapped to Composition (no XDS/Composition counterpart):
// status, extension:homeCommunityid, content.attachment.contentType, content.attachment.url,
// content.attachment.size, content.attachment.hash, context.facilityType, context.practiceSetting

// -----------------------------------------------------------------------
// 1b. MedComContainedDocumentReference -> MedComDocumentBundle
// -----------------------------------------------------------------------
Mapping: MedComContainedDocumentReferenceToMedComDocumentBundle
Id: medcom-contained-documentreference-to-medcom-doc-bundle
Source: MedComContainedDocumentReference
Target: "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-bundle"
Title: "MedComDocumentBundle"
Description: "Mapping from MedComContainedDocumentReference to MedComDocumentBundle, via the shared IHE XDS DocumentEntry metadata attributes that both profiles are derived from. Only a small number of DocumentEntry attributes have a direct counterpart at the Bundle level; the majority of the clinical/document metadata is carried by DocumentReference itself and by MedComDocumentComposition (see the companion mapping to MedComDocumentComposition)."

* content.attachment.creation -> "Bundle.timestamp" 
* identifier[entryUUID] -> "Bundle.id" 

// Not mapped to Bundle (no direct Bundle-level counterpart):
// all other DocumentEntry-derived elements (author, type, category, securityLabel,
// subject, content.attachment.*, content.format, context.*) - these are carried by
// DocumentReference and/or MedComDocumentComposition, not by the Bundle wrapper itself.
