Alias: $loinc = http://loinc.org
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $list-order = http://terminology.hl7.org/CodeSystem/list-order
Alias: $list-empty-reason = http://terminology.hl7.org/CodeSystem/list-empty-reason

Profile: MedComDocumentComposition
Parent: Composition
Id: medcom-document-composition
Description: "The profile of the MedCom Document Composition containing the minimum allowed content."
* id 1.. MS
* text 1.. MS
* text ^short = "The narrative text SHALL always be included when exchanging a MedCom FHIR Bundle."
* text.status MS
* text.div MS
* meta.profile 1..1 MS
* identifier 1.. MS
* identifier.system 1.. MS
* identifier.system ^short = "[DocumentEntry.uniqueId] Sender organization OID (Object Identifier). Example: 1.2.208.184 (MedCom OID)."
* identifier.value 1.. MS
* identifier.value obeys medcom-uuid
* identifier.value ^short = "[DocumentEntry.uniqueId] UUID."
* identifier ^short = "The Composition identifier"
* date MS
* confidentiality 1..1 MS
* status = #final
* status MS
* type 1..1 MS
* type ^short = "[DocumentEntry.typeCode] Kind of document"
* type.coding 1..1 MS
* type.coding.system 1.. MS
* type.coding.code 1.. MS
* type.coding.display 1.. MS
* type from $MedComXDSTypeCodeVS (required) //Must be changed back to XDS metadata IG when ValueSet is fixed
* category ..1 MS 
* category from $MedComXDSClassCodeVS (extensible) //Must be changed back to XDS metadata IG when ValueSet is fixed
* category.coding 1..1 MS
* category.coding.code 1.. MS
* category.coding.system 1.. MS
* category.coding.display 1.. MS
* category ^short = "[DocumentEntry.classCode] Categorization of document"
* subject 1.. MS
* subject only Reference(MedComDocumentPatient)
* subject ^type.aggregation = #bundled
* event 1..1 MS
* event.code MS
* event.period 1..1 MS
* event.period ^short = "[DocumentEntry.serviceStartTime, DocumentEntry.serviceStopTime] Time of service that is being documented."
* event.period.start 1..1 MS
* event.period.end 0..1 MS
* event.detail 0..* MS
* event.detail ^short = "[DocumentEntry.referenceIdList] Related identifiers or resources"
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
* author ^type.aggregation = #bundled
* author[institution] only Reference(MedComDocumentOrganization)
* author[institution] ^short = "The organization who authored the document."
* author[person] only Reference(MedComDocumentPractitioner)
* author[person] ^short = "The practitioner who authored the document."

* attester 0..1 MS
* attester.party 0..1 MS
* attester.mode MS
* attester.party only Reference(MedComDocumentPractitioner)
* attester.party ^short = "[DocumentEntry.legalAuthenticator] Who authenticated the document."
* attester.party ^type.aggregation = #bundled
* title MS
* title ^short = "[DocumentEntry.title] The readable title of the document."
* language 1..1 MS
* language from $MedComXDSLanguageCodeVS (extensible) //Must be changed back to XDS metadata IG when ValueSet is fixed
* language ^short = "[DocumentEntry.languageCode] Human language of the content"
* section 1.. MS
* section.entry MS
* meta 1.. MS
* meta.profile obeys medcom-canonical-semver
* meta.profile ^short = "[DocumentEntry.formatCode] Indicates the FHIR Composition profile canonical, including an explicit version `|x.y.z`. The value does not map 1:1 to XDS DocumentEntry.formatCode and SHALL be mapped."

* insert ProducerShallPutInNarrative(id)
* insert ProducerShallPutInNarrative(confidentiality)
* insert ProducerShallPutInNarrative(status)
* insert ProducerShallPutInNarrative(type.coding.system)
* insert ProducerShallPutInNarrative(type.coding.code)
* insert ProducerShallPutInNarrative(type.coding.display)
* insert ProducerShallPutInNarrative(category.coding.code)
* insert ProducerShallPutInNarrative(category.coding.system)
* insert ProducerShallPutInNarrative(category.coding.display)
* insert ProducerShallPutInNarrative(subject)
* insert ProducerShallPutInNarrative(event.code)
* insert ProducerShallPutInNarrative(event.period.start)
* insert ProducerShallPutInNarrative(event.period.end)
* insert ProducerShallPutInNarrative(date)
* insert ProducerShallPutInNarrative(event.detail)
* insert ProducerShallPutInNarrative(author[institution])
* insert ProducerShallPutInNarrative(author)
* insert ProducerShallPutInNarrative(attester.mode)
* insert ProducerShallPutInNarrative(attester.party)
* insert ProducerShallPutInNarrative(title)
* insert ProducerShallPutInNarrative(language)
* insert ProducerShallPutInNarrative(section.entry)
* insert ProducerShallPutInNarrative(meta.profile)