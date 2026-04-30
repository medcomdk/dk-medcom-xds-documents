// Below a version of MedComContainedDocumentReference from dk-medcom-document repo has been copy pasted on the 15'th of april
// this is because it was too strict for a HomeCareObservationDocumentReference.

CodeSystem: MedComHCOTypeCodeCS
Id: MedComHCOTypeCodeCS
Title: "MedComHCOTypeCodeCS"
Description: "Codesystem containing the type codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* ^url = "urn:oid:1.2.208.184.100.1"
* ^identifier.value = "1.2.208.184.100.1"
* ^status = #active
* #HCOM "HomeCareObservation message"

ValueSet: MedComHCOTypeCodeVS
Id: MedComHCOTypeCodeVS
Title: "MedComHCOTypeCodeVS"
Description: "ValueSet containing the type codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* include codes from system MedComHCOTypeCodeCS

CodeSystem: MedComHCOFormatCodeCS
Id: MedComHCOFormatCodeCS
Title: "MedComHCOFormatCodeCS"
Description: "Codesystem containing the format codes for HomeCareObservation documents (DA: Kommunale Prøvesvar)."
* ^status = #active
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
  * coding = MedComHCOTypeCodeCS#HCOM "HomeCareObservation message"

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
  institution 1..1 MS and
  person 0..1 MS
* author ^short = "[DocumentEntry.author] The slice author:institution ensures one mandatory organizational author.
Any author element that does not match this slice is interpreted
as an author person."
* author[institution] only Reference(MedComDocumentOrganization)
* author[institution] ^short = "The organization who authored the document."
* author[person] only Reference(MedComDocumentPractitionerRole or MedComDocumentPractitioner or DkCoreRelatedPerson)
* author[person] ^short = "A person/role/patient/device author of the document."
* author ^type.aggregation = #contained
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


Instance: example-homecare-observation-documentreference
InstanceOf: HomeCareObservationDocumentReference
Title: "Example HomeCareObservation DocumentReference"
* id = "16002002-ac41-45de-ad6b-eb02b098e859"
* meta.profile[0] = "http://medcomfhir.dk/ig/xdsdocuments/StructureDefinition/homecare-observation-documentreference"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>DocumentReference resource</p></div>"
* contained[+] = hco-contained-patient
* contained[+] = hco-contained-organization
* contained[+] = hco-contained-practitioner
* extension[versionid].valueString = "2.0"
* masterIdentifier.use = #usual
* masterIdentifier.system = "https://systematic.dk/columna/cura"
* masterIdentifier.value = "urn:uuid:acf1f0c6-d9e1-404c-a580-392f2e38395d"
* identifier[entryUUID].use = #official
* identifier[entryUUID].system = "urn:ietf:rfc:3986"
* identifier[entryUUID].value = "urn:uuid:16002002-ac41-45de-ad6b-eb02b098e859"
* status = #current
* type.coding[0] = urn:oid:1.2.208.184.100.1#HCOM "HomeCareObservation message"
* category[0].coding[0].system = "http://medcomfhir.dk/ig/document/CodeSystem/MedCom-ihe-classcode-CS-TEMP"
* category[0].coding[0].code = #001
* category[0].coding[0].display = "Klinisk rapport"
* subject.reference = "#769e04f2-6c09-45fe-8037-31ec1d59ce3b"
* author[institution].reference = "#a7e61c7a-c2e7-40a5-ba9f-58d44cc2f6e1"
* author[person].reference = "#6f7bf020-4417-4f29-a896-4ee70fcb1780"
* securityLabel[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-Confidentiality"
* securityLabel[0].coding[0].code = #N
* content[0].attachment.contentType = #application/fhir+xml
* content[0].attachment.language = #da
* content[0].attachment.url = "HCOM-8bc6cf81-47b0-4cdf-bb89-75311909d35b.xml"
* content[0].attachment.title = "HCOM-8bc6cf81-47b0-4cdf-bb89-75311909d35b.xml"
* content[0].attachment.creation = "2026-04-28T10:15:52+02:00"
* content[0].format.system = "http://medcomfhir.dk/ig/xdsdocuments/CodeSystem/MedComHCOFormatCodeCS"
* content[0].format.code = #urn:ad:dk:medcom:msg:hco-v1.2:full
* content[0].format.display = "DK HomeCareObservation message v1.2"
* context.period.start = "2026-04-28T10:15:52+02:00"
* context.facilityType.coding[0].system = $sct
* context.facilityType.coding[0].version = "http://snomed.info/sct/554471000005108"
* context.facilityType.coding[0].code = #550621000005101
* context.facilityType.coding[0].display = "hjemmesygeplejeenhed"
* context.practiceSetting.coding[0].system = $sct
* context.practiceSetting.coding[0].version = "http://snomed.info/sct/554471000005108"
* context.practiceSetting.coding[0].code = #658161000005107
* context.practiceSetting.coding[0].display = "hjemmesygepleje"
* context.sourcePatientInfo.reference = "#769e04f2-6c09-45fe-8037-31ec1d59ce3b"
* context.sourcePatientInfo.identifier.system = "urn:oid:1.2.208.176.1.2"
* context.sourcePatientInfo.identifier.value = "0602631234"

Instance: hco-contained-patient
InstanceOf: MedComDocumentPatient
Usage: #inline
* id = "769e04f2-6c09-45fe-8037-31ec1d59ce3b"
* meta.profile[0] = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-patient"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CPR: 0602631234, Name: Grethe KGBTest</div>"
* identifier[cpr].value = "0602631234"
* name[official].family = "KGBTest"
* name[official].given[0] = "Grethe"
* gender = #female
* birthDate = "1963-02-06"

Instance: hco-contained-organization
InstanceOf: MedComDocumentOrganization
Usage: #inline
* id = "a7e61c7a-c2e7-40a5-ba9f-58d44cc2f6e1"
* meta.profile[0] = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-organization"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name: Aarhus Kommune, Identifier: 937961000016000, GLN: 5790000123117</div>"
* identifier[SOR-ID].value = "937961000016000"
* identifier[EAN-ID].system = "http://www.gs1.org/gln"
* identifier[EAN-ID].value = "5790000123117"
* name = "Aarhus Kommune"

Instance: hco-contained-practitioner
InstanceOf: MedComDocumentPractitioner
Usage: #inline
* id = "6f7bf020-4417-4f29-a896-4ee70fcb1780"
* meta.profile[0] = "http://medcomfhir.dk/ig/document/StructureDefinition/medcom-document-practitioner"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name: Mia null</div>"
* identifier[0].system = "http://cura.systematic.com"
* identifier[0].value = "6f7bf020-4417-4f29-a896-4ee70fcb1780"
* name[0].family = "null"
* name[0].given[0] = "Mia"

