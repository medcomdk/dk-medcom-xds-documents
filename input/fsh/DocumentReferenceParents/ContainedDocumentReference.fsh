// TODO: Ask Thea if the bindings on all these valuesets are correct, should they all be required? Some don't even have a binding
Profile: MedComContainedDocumentReference
Parent: DkCoreMinimalDocumentReference
Id: medcom-contained-documentreference
Description: "A profile stating the rules, when exchanging a FHIR document in the Danish Healthcare sector using  IHE MHD and IHE XDS based document sharing."
* id 1.. MS

* text 1.. MS
  * ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
  * status MS
  * div MS

* masterIdentifier 1..1 MS
  * system MS
  * value 1..1 MS
  * ^short = "[DocumentEntry.uniqueId] Master Version Specific Identifier"

* identifier[entryUUID] 1..1 MS
  * ^short = "[DocumentEntry.entryUUID] Identifier for the document."
  * value 1..1 MS 
    * obeys medcom-uuid
  * system 1..1 MS

* status MS 
  * ^short = "[DocumentEntry.availabilityStatus] current = active | superseded = deprecated."

* type 1..1 MS
  * ^short = "[DocumentEntry.typeCode] Kind of document."
  * coding 1..1 MS
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
* type from $MedComXDSTypeCodeVS (required)

* authenticator 0..1 MS
  * ^short = "[DocumentEntry.legalAuthenticator] Who authenticated the document."
  * ^type.aggregation = #contained

* category 1..1 MS 
* category from $MedComXDSClassCodeVS (extensible) // TODO: Should this be required?
  * coding 1..1 MS
    * code 1.. MS
    * system 1.. MS
    * display 1.. MS
  * ^short = "[DocumentEntry.classCode] Categorization of document."

* author ..2 MS
  * ^short = "[DocumentEntry.author] The slice author:institution ensures one mandatory organizational author.
  Any author element that does not match this slice is interpreted as an author person."
  * ^type.aggregation = #contained
* author only Reference(MedComDocumentOrganization or MedComDocumentPractitionerRole or MedComDocumentPractitioner or MedComDocumentPatient or DkCoreRelatedPerson or Device)
* author ^slicing.discriminator[0].type = #profile
  * ^slicing.discriminator[0].path = "$this.resolve()"
  * ^slicing.rules = #open
* author contains
    institution 1..1 MS and
    person 0..1 MS
* author[institution] only Reference(MedComDocumentOrganization)
  * ^short = "The organization who authored the document."
* author[person] only Reference(MedComDocumentPractitionerRole or MedComDocumentPractitioner or DkCoreRelatedPerson)
  * ^short = "A person/role/patient/device author of the document."

* securityLabel 1..1 MS
  * coding 1..1 MS
    * system 1.. MS
    * code 1.. MS
  * ^short = "[DocumentEntry.confidentialityCode] Document security-tags."

* subject 1..1 MS
* subject only Reference(MedComDocumentPatient)
  * ^type.aggregation = #contained
  * ^short = "[DocumentEntry.sourcePatientInfo, DocumentEntry.sourcePatientId] Who/what is the subject of the document."

* content MS
  * attachment MS
    * creation 1.. MS
      * ^short = "[DocumentEntry.creationTime] Date attachment was first created."
      * obeys medcom-datetime-has-time-offset-zulu
    * contentType 1.. MS
      * ^short = "[DocumentEntry.mimeType] Mime type of the content, with charset etc."
    * contentType from $MedComXDSMimeTypeVS // TODO: What should the binding strength be here?
    * language 1.. MS
      * ^short = "[DocumentEntry.languageCode] Human language of the content."
    * language from $MedComXDSLanguageCodeVS (extensible) // TODO: Ask what the binding strength should be here, should it be required?
    * hash 0.. MS
      * ^short = "[DocumentEntry.hash] Hash of the data (sha-1)."
    * size 0.. MS
    * title 1.. MS
    * url MS
    * size ^short = "[DocumentEntry.size] Number of bytes of content."
    * title ^short = "[DocumentEntry.title] The readable title of the document."
    * url ^short = "[DocumentEntry.URI] URI where the data can be found."
  * format 1.. MS
    * ^short = "[DocumentEntry.formatCode] Format/content rules for the document."
    * system 1.. MS
    * code 1.. MS
    * display 1.. MS
  * format from $MedComXDSFormatCodeVS (required)

* context 1.. MS
  * event 0.. MS 
    * coding.code 1.. MS
    * coding.system 1.. MS
    * ^short = "[DocumentEntry.eventCodeList] Main clinical acts documented."
  * period 1..1 MS
    * start 1.. MS
    * end MS
    * ^short = "[DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime] Time of service that is being documented."
  * facilityType 1.. MS
    * ^short = "[DocumentEntry.healthcareFacilityTypeCode] Kind of facility where patient was seen."
    * coding 1..1 MS
      * code 1.. MS
      * system 1.. MS
      * display 1.. MS
  * facilityType from $MedComXDSHealthcareFacilityTypeCodeVS (required)
  * practiceSetting 1.. MS
    * ^short = "[DocumentEntry.practiceSettingCode] Additional details about where the content was created (e.g. clinical specialty)."
    * coding 1..1 MS
      * code 1.. MS
      * system 1.. MS
      * display 1.. MS
  * practiceSetting from $MedComXDSPracticeSettingCodeVS (required)
  * related 0..* MS
    * ^short = "[DocumentEntry.referenceIdList] Related identifiers or resources."
  * sourcePatientInfo 1..1 MS
    * reference 1.. MS
    * identifier 1.. MS
    * ^short = "[DocumentEntry.sourcePatientId and DocumentEntry.sourcePatientInfo] Patient demographics from source. Must be the same reference as in DocumentReference.subject."
  * sourcePatientInfo only Reference(MedComDocumentPatient)

* extension MS
* extension contains 
    medcom-document-homecommunityid-extension named homeCommunityid 0..1 MS
* extension[homeCommunityid]
  * valueCoding from $MedComXDSHomeCommunityIdVS (extensible) // TODO: Shouldn't this be required?
  * ^short = "[DocumentEntry.homeCommunityId] A unique identifier for a community where the DocumentEntry and document can be accessed."
  * url MS

* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(author[institution])
* insert ProducerShallPutInNarrative(author)
* insert ProducerShallPutInNarrative(subject)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(type.coding.system)
* insert ProducerShallPutInNarrative(type.coding.code)
* insert ProducerShallPutInNarrative(type.coding.display)
* insert ProducerShallPutInNarrative(authenticator)
* insert ProducerShallPutInNarrative(category.coding.code)
* insert ProducerShallPutInNarrative(category.coding.system)
* insert ProducerShallPutInNarrative(category.coding.display)
* insert ProducerShallPutInNarrative(identifier[entryUUID].value)
* insert ProducerShallPutInNarrative(identifier[entryUUID].system)
* insert ProducerShallPutInNarrative(securityLabel.coding.code)
* insert ProducerShallPutInNarrative(securityLabel.coding.system)
* insert ProducerShallPutInNarrative(content.attachment.creation)
* insert ProducerShallPutInNarrative(content.attachment.contentType)
* insert ProducerShallPutInNarrative(content.attachment.language)
* insert ProducerShallPutInNarrative(content.format.system)
* insert ProducerShallPutInNarrative(content.format.code)
* insert ProducerShallPutInNarrative(content.format.display)
* insert ProducerShallPutInNarrative(content.attachment.size)
* insert ProducerShallPutInNarrative(content.attachment.title)
* insert ProducerShallPutInNarrative(content.attachment.url)
* insert ProducerShallPutInNarrative(context.event.coding.code)
* insert ProducerShallPutInNarrative(context.event.coding.system)
* insert ProducerShallPutInNarrative(context.period.start)
* insert ProducerShallPutInNarrative(context.period.end)
* insert ProducerShallPutInNarrative(context.facilityType.coding.code)
* insert ProducerShallPutInNarrative(context.facilityType.coding.system)
* insert ProducerShallPutInNarrative(context.facilityType.coding.display)
* insert ProducerShallPutInNarrative(context.practiceSetting.coding.code)
* insert ProducerShallPutInNarrative(context.practiceSetting.coding.system)
* insert ProducerShallPutInNarrative(context.practiceSetting.coding.display)
* insert ProducerShallPutInNarrative(context.related)
* insert ProducerShallPutInNarrative(context.sourcePatientInfo.reference)
* insert ProducerShallPutInNarrative(context.sourcePatientInfo.identifier)
* insert ProducerShallPutInNarrative(extension[homeCommunityid].valueCoding.system)
* insert ProducerShallPutInNarrative(extension[homeCommunityid].valueCoding.code)
* insert ProducerShallPutInNarrative(extension[versionid])


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
