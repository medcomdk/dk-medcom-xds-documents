Profile: MedComDocumentObservation
Parent: MedComCoreObservation
Id: medcom-document-observation
Title: "MedComDocumentObservation"
Description: "Observation profile to be used in MedCom FHIR Documents."
* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier.system 1..1 MS 
* identifier ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data."
* subject only Reference(MedComDocumentPatient)
* performer only Reference(MedComDocumentOrganization or MedComDocumentPractitioner or MedComDocumentPractitionerRole or MedComDocumentCareTeam or MedComDocumentPatient or DkCoreRelatedPerson)
