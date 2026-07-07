//Profiling and release will happen when XDS metadata IG 2.0.0 is released.
Profile: MedComEkgRecordingDocumentReference
Parent: MedComContainedDocumentReference
Id: medcom-ekg-recording-documentreference
Description: "A DocumentReference profile stating the rules, when exchanging a document for the MedCom EKG Recording standard."
//* type from $PlrTypeCode (required) //RCH Hvorfor har den sit eget valuesæt i stedet for at være bundet til en bestemt værdi direkte?
* extension[versionid].valueString = "2.0"
* category.coding = $MedComXDSClassCode#001
* type.coding = $loinc#11450-4 "EKG Study"
* content.format = $MedComXDSFormatCodeCS#urn:ad:dk:medcom:ekg-v1.0:full 
* content.attachment.title ^short = "Elektrokardiogram-12-aflednings"


Instance: e52c57fd-23ae-40e1-a75c-24a0368e88f3
InstanceOf: MedComEkgRecordingDocumentReference
Title: "Example EKG Recording DocumentReference"
* status = #current

* extension[versionid].valueString = "2.0"
* extension[homeCommunityid].valueCoding = $MedComXDSHomeCommunityId#1.2.208.176.8.1 "Common Danish IHE XDS domain. Integrating the Healthcare Enterprise (IHE) cross[X]-enterprise Document Sharing (XDS) domain"

* contained[+] = 379ebb53-11e3-42ac-b9db-0bad0ece46d1
* contained[+] = f8d0eb07-5336-4005-9081-b065f9a82663

* masterIdentifier
  * use = #usual
  * system = "https://regional.dk/ekg"
  * value = "urn:uuid:384ca229-c562-4a26-a035-c0c38108e037"

* identifier[entryUUID]
  * use = #official
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:0a74554f-ded3-4bc7-bef1-535699565c5b"

* type.coding = $loinc#11450-4 "EKG Study"

* category.coding = $MedComXDSClassCode#001 "Workflow"
* subject = Reference(379ebb53-11e3-42ac-b9db-0bad0ece46d1)

* author[institution] = Reference(f8d0eb07-5336-4005-9081-b065f9a82663)

* securityLabel.coding = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N

* content
  * attachment
    * contentType = #application/fhir+xml
    * language = #da
    * url = "HCOM-8bc6cf81-47b0-4cdf-bb89-75311909d35b.xml"
    * title = "Elektrokardiogram-12-aflednings"
    * creation = "2026-04-28T10:15:52+02:00"
  * format = $MedComXDSFormatCodeCS#urn:ad:dk:medcom:ekg-v1.0:full "DK EKG schema"

* context
  * period.start = "2026-04-28T10:15:52+02:00"
  * facilityType = $SnomedSystem#22232009 "hospital"
  * facilityType.coding[0].version = $DanishSnomedVersion
  * practiceSetting = $SnomedSystem#394579002 "kardiologi"
  * practiceSetting.coding[0].version = $DanishSnomedVersion
  * sourcePatientInfo = Reference(379ebb53-11e3-42ac-b9db-0bad0ece46d1)
    * identifier.value = "0602631234"

