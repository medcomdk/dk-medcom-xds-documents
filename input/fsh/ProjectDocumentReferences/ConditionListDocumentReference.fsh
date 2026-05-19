Profile: MedComConditionListDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-conditionlist-documentreference
Description: "A profile for the MedCom ConditionListDocumentReference resource."
* content.format = MedComFormatCodeCS#urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"
* extension[versionid].valueString = "1.0"
* type.coding = $loinc#11450-4 "Problem list - Reported"

Instance: 4daf727f-f116-4e49-ad31-4018f0cc638a
InstanceOf: MedComConditionListDocumentReference
Title: "DocumentReference instance"
Description: "DocumentReference instance"
* status = #current "Current"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>ConditionList DocumentReference resource example</p></div>"

* extension[versionid].valueString = "1.0"
* extension[homeCommunityid].valueCoding = MedComIHE_HomeCommunityId_TEMP#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"

* contained[+] = 1fcad31f-8967-4f49-b6af-7e64082e8fec
* contained[+] = fd3206c6-c265-49f9-82c3-8b4c96280403
* contained[+] = 69e475df-20c8-4f54-8cea-9843568205fd

* masterIdentifier
  * use = #usual
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:bf1bb63b-d405-4dfe-9810-37b16b333a01"

* identifier[entryUUID].value = "urn:uuid:7c596b9a-112e-4386-ae71-5ecdd3ed7c50"

* category = MedComIHE_ClassCode_TEMP#001 "Klinisk rapport"
* subject = Reference(69e475df-20c8-4f54-8cea-9843568205fd)

* author[institution] = Reference(fd3206c6-c265-49f9-82c3-8b4c96280403)

* securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N

* content
  * attachment
    * contentType = $IANAMediaOID#application/fhir+json "MimeType-application/fhir+json"
    * language = $IANALanguageOID#da "Danish"
    * url = "ConditionListDocument.json"
    * title = "Diagnoseoversigt for 2509479989"
    * creation = "2024-05-01T12:00:00+01:00"
  * format = MedComFormatCodeCS#urn:ad:dk:medcom:plr-v1.0:full "DK PLR schema"

* authenticator = Reference(1fcad31f-8967-4f49-b6af-7e64082e8fec)

* context
  * period.start = "2026-05-19T10:10:10+02:00"
  * facilityType = $DanishSnomed#394761003 "almen lægepraksis"
  * practiceSetting = $DanishSnomed#408443003 "almen medicin"
  * sourcePatientInfo = Reference(69e475df-20c8-4f54-8cea-9843568205fd)
    * identifier.value = "2509479989"

Instance: fd3206c6-c265-49f9-82c3-8b4c96280403
InstanceOf: MedComDocumentOrganization
Usage: #inline
* name = "MedCom Testcenter"
* identifier[SOR-ID].value = "325381000016008"
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">MedCom Testcenter, SOR-ID: 325381000016008</div>"
 
Instance: 1fcad31f-8967-4f49-b6af-7e64082e8fec
InstanceOf: MedComDocumentPractitioner
Usage: #inline
* name
  * use = #official
  * family = "Vestergaard"
  * given[0] = "Bo"
  * given[1] = "Test"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b6c11dab-a9e9-46b8-9bb3-fe06d6587e07"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Bo Test Vestergaard</div>"

Instance: 69e475df-20c8-4f54-8cea-9843568205fd
InstanceOf: MedComDocumentPatient
Usage: #inline
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "2509479989"
* name[official]
  * use = #official
  * family = "Hansen"
  * given[0] = "Elmer"
  * given[1] = "Test"
* birthDate = "1947-09-25"
* gender = #male
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name:Elmer Test Hansen, CPR: 2509479989</div>"