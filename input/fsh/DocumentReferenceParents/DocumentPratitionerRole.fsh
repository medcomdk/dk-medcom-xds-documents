Profile: MedComDocumentPractitionerRole
Parent: MedComCorePractitionerRole
Id: medcom-document-practitionerrole
Description: "Document PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in citizen or patient care."
* identifier 1..1 MS 
  * value 1..1 MS 
  * system 1..1 MS
  * ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data." 
* practitioner only Reference(MedComDocumentPractitioner)
* organization only Reference(MedComDocumentOrganization)