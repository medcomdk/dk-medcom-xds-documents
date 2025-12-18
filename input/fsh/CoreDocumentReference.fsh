/* Profile: CoreDocumentReference
Parent: DocumentReference
Id: core-documentreference
Description: "A profile stating the rules, when exchanging a CDA document."
* masterIdentifier.value 1..1 MS 
* masterIdentifier ^short = "[DocumentEntry.entryUUID] Master Version Specific Identifier"
* masterIdentifier obeys uuid
* status MS 
* status ^short = "[DocumentEntry.availabilityStatus] current = active | superseded = deprecated"
// TypeCode
* type 1.. MS
* type ^short = "[DocumentEntry.type] Kind of document"
* type.coding.system 1.. MS
* type.coding.code 1.. MS
* authenticator 1.. MS
* authenticator ^short = "[DocumentEntry.legalAuthenticator] Who authenticated the document"
* authenticator only Reference(XDSAuthorPerson)
* authenticator ^type.aggregation = #contained
// ClassCode
* category 1..1 MS 
* category from $ClassCode (extensible)
* category.coding.code 1.. MS
* category.coding.system 1.. MS
* category ^short = "[DocumentEntry.class] Categorization of document"
* author 1.. MS 
* author only Reference(XDSAuthorOrganization or XDSAuthorPerson)
* author ^type.aggregation = #contained
* author ^short = "[DocumentEntry.author] Who and/or what authored the document"
* securityLabel 1.. MS  
* securityLabel = #N
* securityLabel ^short = "[DocumentEntry.confidentialityCode] Document security-tags"
* subject MS
* subject only Reference(XDSSourcePatient)
* subject ^type.aggregation = #contained
* subject ^short = "[DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId] Who/what is the subject of the document"
* content MS
* content.attachment.contentType ^short = "[DocumentEntry.mimeType] Mime type of the content, with charset etc."
* content.attachment.contentType 1.. MS
* content.attachment.contentType from $ContentType
* content.attachment.language ^short = "[DocumentEntry.languageCode] Human language of the content"
* content.attachment.language 1.. MS
* content.attachment.language from $Language (extensible)
* content.attachment.creation ^short = "[DocumentEntry.creationTime] Date attachment was first created"
* content.attachment.creation 1.. MS
* content.attachment.hash 1.. MS
* content.attachment.hash ^short = "[DocumentEntry.hash] Hash of the data (sha-1)"
* content.format ^short = "[DocumentEntry.formatCode] Format/content rules for the document"
* content.format 1.. MS
/* * content.format.coding.code 1.. MS
* content.format.coding.system 1.. MS *//* 
* content.attachment.size 1.. MS
* content.attachment.title 1.. MS
* content.attachment.url 1.. MS
* content.attachment.size ^short = "[DocumentEntry.size] Number of bytes of content"
* content.attachment.title ^short = "[DocumentEntry.title] Label to display in place of the data"
* content.attachment.url ^short = "[DocumentEntry.URI] Uri where the data can be found"
* context 1.. MS
* context.event 1..1 MS 
* context.event.coding.code 1.. MS
* context.event.coding.system 1.. MS
* context.event ^short = "[DocumentEntry.eventCodeList] Main clinical acts documented"
* context.period MS
* context.period.start MS
* context.period.end MS
* context.period ^short = "[DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime] Time of service that is being documented"
* context.facilityType 1.. MS
* context.facilityType.coding.code 1.. MS
* context.facilityType.coding.system 1.. MS
* context.facilityType.coding.system from $FacilityType (extensible)
* context.facilityType ^short = "[DocumentEntry.healthcareFacilityTypeCode] Kind of facility where patient was seen"
* context.practiceSetting 1.. MS
* context.practiceSetting.coding.code 1.. MS
* context.practiceSetting.coding.system 1.. MS
* context.practiceSetting.coding.system from $PracticeSetting (extensible)
* context.practiceSetting ^short = "[DocumentEntry.practiceSettingCode] Additional details about where the content was created (e.g. clinical specialty)"
* context.related MS
* context.related ^short = "[DocumentEntry.referenceIdList] Related identifiers or resources"
* extension contains 
    medcom-xds-homecommunityid-extension named homeCommunityid 1..1 MS and
    medcom-xds-version-id-extension named versionid 1..1 MS
* extension[homeCommunityid] ^short = "[DocumentEntry.homeCommunityId] A unique identifier for a community where the DocumentEntry and document can be accessed"
* extension[versionid] ^short = "Specifies the version of the DocumentReference for a standard."

 */
/* Invariant: apd-dk-rule-1
Description: "Where formatCode is 'urn:ad:dk:medcom:appointmentsummary:full', the eventCode must be 'ALAL01' (hjertesygdomme)"
Severity: #error
Expression: "where(type.coding.where(system = 'http://medcomfhir.dk/ig/xdsmetadata/CodeSystem/dk-ihe-typecode-de-regenstrief').code = '56446-8').context.event.coding.code = 'ALAL01'"
*/
/* 
Invariant: uuid
Description: "General UUID expression"
Severity: #error
Expression: "value.matches('[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')"

 */

Profile: CoreDocumentReference // MedComMinimalDocumentReference //OBS: Skal erstattes af afhængighed til DkCore v 3.5.0
Parent: DkCoreMinimalDocumentReference
Id: medcom-minimal-documentreference
Title: "A replication of HL7 Denmark DK Core MinimalDocumentReference Profile"
Description: "A replication of DK Core MinimalDocumentReference"
* context.facilityType from $FacilityType (extensible)
* context.practiceSetting from $PracticeSetting (extensible)
* context.event from $v3-ActCode3.0.0 (example)
* author 1..*
* author only Reference(DkCorePatient or DkCorePractitioner or DkCorePractitionerRole or DkCoreRelatedPerson or DkCoreOrganization or Device)
* authenticator only Reference(DkCorePractitioner or DkCorePractitionerRole or DkCoreOrganization)
* subject 1..1
* subject only Reference(DkCorePatient)
* context.sourcePatientInfo only Reference(DkCorePatient)