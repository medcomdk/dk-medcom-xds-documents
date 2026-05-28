Profile: HomeCareObservationDocumentReference
Parent: MedComContainedDocumentReference
Id: homecare-observation-documentreference
Description: "A profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
// TODO: Ask what the versionid is about... Is it the version of the project standard? If so we should set it here in the parent
* extension[versionid].valueString = "2.0"
* type.coding = $MedComXDSTypeCode#HCOM "HomeCareObservation message"


Instance: example-homecare-observation-documentreference
InstanceOf: HomeCareObservationDocumentReference
Title: "Example HomeCareObservation DocumentReference"
* id = "16002002-ac41-45de-ad6b-eb02b098e859"
* status = #current
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>HCO DocumentReference resource example</p></div>"

* extension[versionid].valueString = "2.0"

* contained[+] = hco-contained-patient
* contained[+] = hco-contained-organization
* contained[+] = hco-contained-practitioner

* masterIdentifier
  * use = #usual
  * system = "https://systematic.dk/columna/cura"
  * value = "urn:uuid:acf1f0c6-d9e1-404c-a580-392f2e38395d"

* identifier[entryUUID]
  * use = #official
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:16002002-ac41-45de-ad6b-eb02b098e859"

* category.coding = $MedComXDSClassCode#006 "Workflow"
* subject = Reference(hco-contained-patient)

* author[institution] = Reference(hco-contained-organization)

* author[person] = Reference(hco-contained-practitioner)

* securityLabel.coding = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N

* content
  * attachment
    * contentType = #application/fhir+xml
    * language = #da
    * url = "HCOM-8bc6cf81-47b0-4cdf-bb89-75311909d35b.xml"
    * title = "Kommunale prøvesvar for 0602631234"
    * creation = "2026-04-28T10:15:52+02:00"
  * format = $MedComXDSFormatCodeCS#urn:ad:dk:medcom:msg:hco-v1.2:full "DK HomeCareObservation message v1.2"

* context
  * period.start = "2026-04-28T10:15:52+02:00"
  * facilityType = $DanishSnomed#550621000005101 "hjemmesygeplejeenhed"
  * practiceSetting = $DanishSnomed#658161000005107 "hjemmesygepleje"
  * sourcePatientInfo = Reference(hco-contained-patient)
    * identifier.value = "0602631234"


Instance: hco-contained-patient
InstanceOf: MedComDocumentPatient
Usage: #inline
* id = "769e04f2-6c09-45fe-8037-31ec1d59ce3b"
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
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Name: Mia null</div>"
* identifier[0].system = "http://cura.systematic.com"
* identifier[0].value = "6f7bf020-4417-4f29-a896-4ee70fcb1780"
* name[0].family = "null"
* name[0].given[0] = "Mia"

