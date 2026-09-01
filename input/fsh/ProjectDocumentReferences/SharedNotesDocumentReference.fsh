//Profiling and release will happen when XDS metadata IG 2.0.0 is released.
Profile: MedComSharedNotesDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-shared-notes-documentreference
Description: "A DocumentReference profile stating the rules, when exchanging a document for the MedCom SharedNotes standard (DA: Deling af Journalnotater)."
* extension[versionid].valueString = "2.0"
* category.coding = $MedComXDSClassCode#001
* type.coding = $SnomedSystem#866144008	
* content.format obeys medcom-ecn-formatcode
* content.attachment.title ^short = "Journalnotat for 'CPR-nummer', were 'CPR-nummer' is the CPR number of the patient the document concerns, e.g. 'Journalnotat for 2509479989'"

Instance: ExampleSharedNotesDocumentReference
InstanceOf: MedComSharedNotesDocumentReference
Usage: #example

* id = "c8b451d3-b0d6-46f8-b331-079c58cc19a5"

* extension[versionid].valueString = "2.0"
* extension[homeCommunityid].valueCoding = $MedComXDSHomeCommunityId#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"


* contained[+] = d39a8251-db8e-4b92-ae80-c89857fd1af9
* contained[+] = cee69158-0e0b-4c37-b7b3-28e42345383c

* masterIdentifier.system = "urn:uuid:215e7dee-0d01-4fcd-8ebf-02a8d385be4c"
* masterIdentifier.value = "urn:uuid:215e7dee-0d01-4fcd-8ebf-02a8d385be4c"

* identifier[entryUUID]
  * use = #official
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:215e7dee-0d01-4fcd-8ebf-02a8d385be4c"

* status = #current

* type.coding.code = #866144008
* type.coding.display = "Encounter note"

* category.coding.code = #001
* category.coding.display = "Klinisk rapport"

* subject = Reference(cee69158-0e0b-4c37-b7b3-28e42345383c)

* author[institution] = Reference(d39a8251-db8e-4b92-ae80-c89857fd1af9)

* securityLabel.coding.system = "urn:oid:2.16.840.1.113883.5.25"
* securityLabel.coding.code = #N
* securityLabel.coding.display = "Normal"

* content.attachment.contentType = #application/fhir+xml
* content.attachment.language = #da
* content.attachment.url = "DOC001.XML"
* content.attachment.title = "Journalnotat for 0506889996"
* content.attachment.creation = "2025-08-27T12:00:00+02:00"

* content.format = $MedComXDSFormatCodeCS#urn:ad:dk:medcom:ecn-v1.0:full "DK ECN schema"

* context.facilityType = $SnomedSystem#394761003 "almen lægepraksis"

* context.practiceSetting = $SnomedSystem#408443003 "almen medicin"

* context.period.start = "2025-08-27T12:00:00+02:00"

* context.sourcePatientInfo = Reference(cee69158-0e0b-4c37-b7b3-28e42345383c)
  * identifier.value = "0506889996"


Instance: d39a8251-db8e-4b92-ae80-c89857fd1af9
InstanceOf: MedComDocumentOrganization
Usage: #inline
* identifier[SOR-ID].system = "urn:oid:1.2.208.176.1.1"
* identifier[SOR-ID].value = "61741000016007"

* name = "Lægerne Hasseris Bymidte"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name: Lægerne Hasseris Bymidte, Identifier: 61741000016007</div>"
* identifier[SOR-ID].value = "61741000016007"
* name = "Lægerne Hasseris Bymidte"


Instance: cee69158-0e0b-4c37-b7b3-28e42345383c
InstanceOf: MedComDocumentPatient
Usage: #inline
* identifier[cpr].system = "urn:oid:1.2.208.176.1.2"
* identifier[cpr].value = "0506889996"
* name[official].family = "Mosebryggersen"
* name[official].given[+] = "Sille"
* name[official].given[+] = "June"
* name[official].given[+] = "Test"
* gender = #female
* birthDate = "1988-06-05"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name: Sille June Mosebryggersen, CPR: 0506889996, birthDate: 1988-06-05, Gender: female</div>"
