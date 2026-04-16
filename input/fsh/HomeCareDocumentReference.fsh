// Below a version of MedComContainedDocumentReference from dk-medcom-document repo has been copy pasted on the 15'th of april
// this is because it was too strict for a HomeCareObservationDocumentReference.

ValueSet: MedComHCOTypeCodeVS
Id: MedComHCOTypeCodeVS
Title: "MedComHCOTypeCodeVS"
Description: "ValueSet containing the type codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* $MedComXDSTypeCodeVS#HCOM "HomeCareObservation message"

CodeSystem: MedComHCOFormatCodeCS
Id: MedComHCOFormatCodeCS
Title: "MedComHCOFormatCodeCS"
Description: "Codesystem containing the format codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* #urn:ad:dk:medcom:msg:hco-v1.1:full "DK HomeCareObservation message v1.1"
* #urn:ad:dk:medcom:msg:hco-v1.2:full "DK HomeCareObservation message v1.2"

ValueSet: MedComHCOFormatCodeVS
Id: MedComHCOFormatCodeVS
Title: "MedComHCOFormatCodeVS"
Description: "Valueset containing the format codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* include codes from system MedComHCOFormatCodeCS

Profile: HomeCareObservationDocumentReference
Parent: DkCoreMinimalDocumentReference
Id: homecare-observation-documentreference
Description: "A profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
* id 1.. MS
* text 1.. MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS

// uniqueId
* masterIdentifier 1..1 MS
* masterIdentifier.system MS
* masterIdentifier.value 1..1 MS
* masterIdentifier ^short = "[DocumentEntry.uniqueId] Master Version Specific Identifier"

// entryUUID
* identifier[entryUUID] 1..1 MS
* identifier[entryUUID].value 1..1 MS 
* identifier[entryUUID].system 1..1 MS //https://profiles.ihe.net/ITI/MHD/4.2.2/StructureDefinition-IHE.MHD.EntryUUID.Identifier.html
* identifier[entryUUID] ^short = "[DocumentEntry.entryUUID] Identifier for the document."
* identifier[entryUUID].value obeys medcom-uuid
* status MS 
* status ^short = "[DocumentEntry.availabilityStatus] current = active | superseded = deprecated."
// TypeCode
* type 1..1
  * coding from MedComHCOTypeCodeVS (required)
  * coding = $MedComXDSTypeCodeVS#HCOM "HomeCareObservation message"

* authenticator 0..1 MS
* authenticator ^short = "[DocumentEntry.legalAuthenticator] Who authenticated the document."
//* authenticator only Reference(MedComDocumentPractitioner)
* authenticator ^type.aggregation = #contained
// ClassCode
* category 1..1 MS 
* category from $MedComIHECoreClassCodeVSTemp (extensible)
* category.coding.code 1.. MS
* category.coding.system 1.. MS
* category.coding.display 1.. MS
* category ^short = "[DocumentEntry.classCode] Categorization of document."
* author ..2 MS
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitionerRole or MedComDocumentPractitioner or MedComDocumentPatient or DkCoreRelatedPerson or Device)
* author ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[0].path = "$this.resolve()"
  * ^slicing.rules = #open
* author contains
    institution 1..1 MS
* author ^short = "[DocumentEntry.author] The slice author:institution ensures one mandatory organizational author.
Any author element that does not match this slice is interpreted
as an author person."
* author[institution] only Reference(MedComDocumentOrganization)
* author[institution] ^short = "The organization who authored the document."
* author ^type.aggregation = #bundled
* securityLabel 1..1 MS
* securityLabel.coding 1..1 MS
* securityLabel.coding.system 1.. MS
* securityLabel.coding.code 1.. MS
* securityLabel ^short = "[DocumentEntry.confidentialityCode] Document security-tags."
* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
* subject ^type.aggregation = #contained
* subject ^short = "[DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId] Who/what is the subject of the document."
* content.attachment.creation ^short = "[DocumentEntry.creationTime] Date attachment was first created."
* content.attachment.creation 1.. MS
* content.attachment.creation obeys medcom-datetime-has-time-offset-zulu
* content MS
* content.attachment.contentType ^short = "[DocumentEntry.mimeType] Mime type of the content, with charset etc."
* content.attachment.contentType 1.. MS
* content.attachment.contentType from $MedComIHEMimeTypeVSTemp //Must be changed back to XDS metadata IG when ValueSet is fixed
* content.attachment MS
* content.attachment.language ^short = "[DocumentEntry.languageCode] Human language of the content."
* content.attachment.language 1.. MS
* content.attachment.language from $MedComLanguageCodeVSTemp (extensible) //Must be changed back to XDS metadata IG when ValueSet is fixed
* content.attachment.hash 0.. MS
* content.attachment.hash ^short = "[DocumentEntry.hash] Hash of the data (sha-1)."

* content.format from MedComHCOFormatCodeVS (required)
* content.format 1.. MS
  * ^short = "[DocumentEntry.formatCode] Format/content rules for the document."
  * system 1.. MS
  * code 1.. MS
  * display 1.. MS
* content.attachment.size 0.. MS
* content.attachment.title 1.. MS
* content.attachment.url MS
* content.attachment.size ^short = "[DocumentEntry.size] Number of bytes of content."
* content.attachment.title ^short = "[DocumentEntry.title] The readable title of the document."
* content.attachment.url ^short = "[DocumentEntry.URI] URI where the data can be found."
* context 1.. MS
* context.event 0.. MS 
* context.event.coding.code 1.. MS
* context.event.coding.system 1.. MS
* context.event ^short = "[DocumentEntry.eventCodeList] Main clinical acts documented."
* context.period 1..1 MS
* context.period.start 1.. MS
* context.period.end MS
* context.period ^short = "[DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime] Time of service that is being documented."
* context.facilityType 1.. MS
* context.facilityType.coding 1..1 MS
* context.facilityType.coding.code 1.. MS
* context.facilityType.coding.system 1.. MS
* context.facilityType.coding.display 1.. MS
* context.facilityType from $MedComHealthcareFacilityTypeCodeVSTemp (required) //Must be changed back to XDS metadata IG when ValueSet is fixed
* context.facilityType ^short = "[DocumentEntry.healthcareFacilityTypeCode] Kind of facility where patient was seen."
* context.practiceSetting 1.. MS
* context.practiceSetting.coding 1..1 MS
* context.practiceSetting.coding.code 1.. MS
* context.practiceSetting.coding.system 1.. MS
* context.practiceSetting.coding.display 1.. MS
* context.practiceSetting from $MedComPracticeSettingCodeVSTemp (required)
* context.practiceSetting ^short = "[DocumentEntry.practiceSettingCode] Additional details about where the content was created (e.g. clinical specialty)."
* context.related 0..* MS
* context.related ^short = "[DocumentEntry.referenceIdList] Related identifiers or resources."
* context.sourcePatientInfo 1..1 MS
* context.sourcePatientInfo.reference 1.. MS
* context.sourcePatientInfo.identifier 1.. MS
* context.sourcePatientInfo ^short = "[DocumentEntry.sourcePatientId and DocumentEntry.sourcePatientInfo] Patient demographics from source. Must be the same reference as in DocumentReference.subject."
* context.sourcePatientInfo only Reference(MedComDocumentPatient)
* extension MS
* extension contains 
    medcom-document-homecommunityid-extension named homeCommunityid 0..1 MS
* extension[homeCommunityid].valueCoding from $IHEHomeCommunityIdTEMP (extensible)
* extension[homeCommunityid] ^short = "[DocumentEntry.homeCommunityId] A unique identifier for a community where the DocumentEntry and document can be accessed."
* extension[homeCommunityid].url MS
* extension[versionid] MS
* extension[versionid] ^short = "Specifies the version of the DocumentReference profile for a standard."
* extension[versionid].valueString = "2.0"

Invariant: medcom-datetime-has-time-offset-zulu
// This invariant allows both zulu and offset time zones.
//Winter time
//"2025-11-27T13:34:56+01:00"
//"2025-11-27T12:34:56.789Z"
//Summer time
//"2025-06-27T14:34:56+02:00"
//"2025-06-27T12:34:56.789Z"
Description: "dateTime must include date, time, and time zone."
Severity: #error
Expression: "$this.toString().matches('^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])T([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]([.][0-9]+)?(Z|[+-][0-9]{2}:[0-9]{2})$')"

Invariant: medcom-uuid
Description: "The value shall correspond to the structure of an UUID"
Severity: #error
Expression: "$this.matches('(?i)^urn:uuid:[0-9a-f]{8}-[0-9a-f]{4}-[45][0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$')"
