Profile: MedComDocumentCareTeam
Parent: MedComCoreCareTeam
Id: medcom-document-careteam
Description: "Careteam participating in the care of a patient."
* identifier 1..1 MS 
* identifier.value 1..1 MS
* identifier.system 1..1 MS 
* identifier ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data."
* managingOrganization only Reference(MedComDocumentOrganization) 