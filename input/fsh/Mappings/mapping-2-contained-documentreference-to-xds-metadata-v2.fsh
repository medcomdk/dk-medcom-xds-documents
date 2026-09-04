// =============================================================================
// Mapping 2: MedComContainedDocumentReference -> XDS Metadata for Document
//            Sharing, Danish profile v2.0.0 (IHE XDS DocumentEntry / SubmissionSet)
//
// Source profile:
//   http://medcomfhir.dk/ig/xdsdocuments/StructureDefinition/medcom-contained-documentreference
//   (Danish XDS Documents IG - https://medcomfhir.dk/ig/xdsdocuments)
//
// Target:
//   Danish profile of the IHE XDS Metadata Standard v2.0.0-trial-use-1
//   https://medcomfhir.dk/ig/xdsmetadata/2.0.0-trial-use-1/XDS_Metadata_for_Document_Sharing_Danish_profile_v.2.0.0.html
//
// This mapping documents, attribute by attribute, how the DocumentEntry
// (and, where relevant, SubmissionSet) attributes of the Danish XDS
// Metadata profile are represented in MedComContainedDocumentReference.
// It follows the same pattern as the existing MedCom mapping table at
// https://medcomdk.github.io/dk-medcom-document/assets/documents/Mapping_from_IHE-XDS_metadata_to_FHIR.html
// and reuses the [DocumentEntry.x] source annotations already present in
// the MedComContainedDocumentReference profile's element definitions.
// =============================================================================

Mapping: MedComContainedDocumentReferenceToXDSMetadataV2
Id: medcom-contained-documentreference-to-xds-metadata-v2
Source: MedComContainedDocumentReference
Target: "https://medcomfhir.dk/ig/xdsmetadata/2.0.0-trial-use-1/XDS_Metadata_for_Document_Sharing_Danish_profile_v.2.0.0.html"
Title: "XDS Metadata for Document Sharing, Danish profile v2.0.0"
Description: "Mapping from MedComContainedDocumentReference to the DocumentEntry/SubmissionSet attributes defined in the Danish profile of the IHE XDS Metadata standard v2.0.0."

* extension[homeCommunityid].valueCoding -> "DocumentEntry.homeCommunityId" "AUT - not expected to be present in the document itself"
* masterIdentifier -> "DocumentEntry.uniqueId" "Globally unique identifier assigned to the document by the creating entity"
* identifier[entryUUID] -> "DocumentEntry.entryUUID" "AUT - globally unique identifier for internal document management"
* status -> "DocumentEntry.availabilityStatus" "current = Approved, superseded = Deprecated"
* type -> "DocumentEntry.typeCode" "Precise type of document from the user perspective"
* category -> "DocumentEntry.classCode" "High-level use classification of the document type"
* subject -> "DocumentEntry.sourcePatientId, DocumentEntry.sourcePatientInfo" "Who/what is the subject of the document"
* author[institution] -> "DocumentEntry.author.authorInstitution" "The organization in which the document was created"
* author[person] -> "DocumentEntry.author.authorPerson" "Person that authored the document within the authorInstitution"
* authenticator -> "DocumentEntry.legalAuthenticator" "Participant within the authorInstitution who legally authenticated the document"
* securityLabel -> "DocumentEntry.confidentialityCode" "Confidentiality assigned to the document"
* content.attachment.contentType -> "DocumentEntry.mimeType" "Internet Media Type of the document (RFC 2045-2049)"
* content.attachment.language -> "DocumentEntry.languageCode" "Language (and country) of the document, form nn-CC"
* content.attachment.url -> "DocumentEntry.repositoryUniqueId+DocumentEntry.uniqueId or DocumentEntry.URI" "URI for the document"
* content.attachment.size -> "DocumentEntry.size" "Size in bytes of the byte stream comprising the document (AUT; prohibited for On-Demand documents)"
* content.attachment.hash -> "DocumentEntry.hash" "SHA-1 hash of the document contents (AUT; prohibited for On-Demand documents)"
* content.attachment.title -> "DocumentEntry.title" "Readable title of the document"
* content.attachment.creation -> "DocumentEntry.creationTime" "Time the author created the document, precise to the second"
* content.format -> "DocumentEntry.formatCode" "Detailed technical format of the document"
* context.event -> "DocumentEntry.eventCodeList" "Main clinical acts documented for the patient contact"
* context.period.start -> "DocumentEntry.serviceStartTime" "Start time of the clinical act being documented"
* context.period.end -> "DocumentEntry.serviceStopTime" "Stop time of the clinical act being documented"
* context.facilityType -> "DocumentEntry.healthcareFacilityTypeCode" "Type of organizational setting of the clinical encounter"
* context.practiceSetting -> "DocumentEntry.practiceSettingCode" "Clinical specialty/setting of the encounter"
* context.sourcePatientInfo -> "DocumentEntry.sourcePatientInfo" "Patient demographics (name, date of birth, gender) at time of submission"
* context.sourcePatientInfo.identifier -> "DocumentEntry.sourcePatientId" "Patient's unique identifier (CPR-number)"
* context.related -> "DocumentEntry.referenceIdList" "Zero or more internal or external reference identifiers"

// XDS attributes with no counterpart in MedComContainedDocumentReference
// (not expected to be represented in the document/DocumentReference resource):
//   objectType, repositoryUniqueId, SubmissionSet.uniqueId, SubmissionSet.submissionTime,
//   SubmissionSet.author, SubmissionSet.availabilityStatus, intendedRecipient,
//   contentTypeCode (SubmissionSet), comments, limitedMetadata, sourceId, authorRole,
//   authorSpecialty, authorTeleCommunication
