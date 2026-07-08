Profile: MedComDocumentPractitioner
Parent: MedComCorePractitioner
Id: medcom-document-practitioner
Description: "A profile including requirements for a MedCom Document Practitioner"
* identifier 1..1 MS 
  * value 1..1 MS 
  * system 1..1 MS
  * ^short = "Globally unique, stable identifier for this resource. The same identifier SHALL be used when this resource is recreated from the same source data." 
* name ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "use"
  * ^slicing.rules = #open
* name contains official 1..1
* name[official] ^short = "The official name of the practitioner."
  * use 1..
  * use = #official (exactly)
  * family 1..
  * given 1..
