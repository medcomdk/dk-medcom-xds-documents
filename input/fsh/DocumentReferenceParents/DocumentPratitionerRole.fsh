Profile: MedComDocumentPractitionerRole
Parent: MedComCorePractitionerRole
Id: medcom-document-practitionerrole
Description: "Document PractitionerRole resource used to describe the role of a healthcare professional or another actor involved in citizen or patient care."
* identifier 1..1 MS 
  * value 1..1 MS 
  * system 1..1 MS
  * ^short = "Globally unique, stable identifier for this in. The same identifier SHALL be used when this resource is recreated from the same source data." 
* practitioner only Reference(MedComDocumentPractitioner)
* organization only Reference(MedComDocumentOrganization)
* code ^short = "Represents the specific role of the practitioner in the context of the document."
* code.coding ^short = "It is preferred to use a code from a value set that defines the roles of practitioners in the context of the document."
* code.text ^short = "In case the code from the value set does not provide a code that matches the practitioner's role in the context of the document, it is possible to provide a short free-text role."