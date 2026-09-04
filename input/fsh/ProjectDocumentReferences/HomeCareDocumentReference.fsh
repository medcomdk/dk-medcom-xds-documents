Profile: MedComHomeCareObservationDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-homecare-observation-documentreference
Description: "A DocumentReference profile stating the rules, when exchanging a document including homecare observation (DA: Kommunale Prøvesvar)."
* extension[versionid].valueString = "2.0"
* type.coding = $MedComXDSTypeCode#HCOM "HomeCareObservation message"
* content.format.code obeys medcom-hcom-formatcode
* category.coding = $MedComXDSClassCode#006
* content.attachment.title
  * ^short = "Must be *Kommunale prøvesvar for 'CPR-nummer'*, were 'CPR-nummer' is the CPR number of the patient the document concerns, e.g. 'Kommunale prøvesvar for 0602631234'"



Instance: example-homecare-observation-documentreference
InstanceOf: MedComHomeCareObservationDocumentReference
Title: "Example HomeCareObservation DocumentReference"
* id = "16002002-ac41-45de-ad6b-eb02b098e859"
* status = #current

* extension[versionid].valueString = "2.0"
* extension[homeCommunityid].valueCoding = $MedComXDSHomeCommunityId#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"

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

* type.coding = $MedComXDSTypeCode#HCOM "HomeCareObservation message"


* content
  * attachment
    * contentType = #application/fhir+xml
    * language = #da
    * url = "HCOM-8bc6cf81-47b0-4cdf-bb89-75311909d35b.xml"
    * title = "Kommunale prøvesvar for 0602631234"
    * creation = "2026-04-28T10:15:52+02:00"
  * format = $MedComXDSFormatCodeCS#urn:ad:dk:medcom:hcom-v1.2:full "DK HomeCareObservation message v1.2"

* context
  * period.start = "2026-04-28T10:15:52+02:00"
  * facilityType = $SnomedSystem#550621000005101 "hjemmesygeplejeenhed"
  * facilityType.coding[0].version = $DanishSnomedVersion
  * practiceSetting = $SnomedSystem#658161000005107 "Home nursing care services"
  * practiceSetting.coding[0].version = $DanishSnomedVersion
  * sourcePatientInfo = Reference(hco-contained-patient)
    * identifier.value = "0602631234"


Instance: hco-contained-patient
InstanceOf: MedComDocumentPatient
Usage: #inline
* id = "769e04f2-6c09-45fe-8037-31ec1d59ce3b"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">CPR: 0602631234, Name: Grethe KGBTest, Gender: female, Birth Date: 1963-02-06</div>"
* identifier[cpr].value = "0602631234"
* name[official].family = "KGBTest"
* name[official].given = "Grethe"
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
* identifier.system = "http://cura.systematic.com"
* identifier.value = "6f7bf020-4417-4f29-a896-4ee70fcb1780"
* name[official].family = "null"
* name[official].given = "Mia"

